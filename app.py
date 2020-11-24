import numpy as np
import datetime as dt
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func

from flask import Flask, jsonify


#################################################
# Database Setup
#################################################
engine = create_engine("postgresql://postgres:postgres@localhost:5432/hawaii")

# reflect an existing database into a new model
Base = automap_base()
# reflect the tables
Base.prepare(engine, reflect=True)

# Save reference to the tables
Station = Base.classes.station
Measurement = Base.classes.measurement

#same info from jupyter notebook essentially. Taking created queries so they run when the loop runs.
#precip query
session = Session(engine)
#query to retrieve the last 12 months of precipitation data
results = session.query(Measurement.date).order_by(Measurement.date.desc()).first()
#create a variable of the final date
finaldate = results[(0)]
# Calculate the date 1 year ago from the last data point in the database
lastyear = dt.datetime.strptime(finaldate,'%Y-%m-%d') - dt.timedelta(days=365)
lastyeardate = lastyear.date()
formated = dt.date(2016,8,23)
#format a year ago date to str / text so that the query runs
c = str(formated)[:10]

#find most active station by selecting station column in Measurement table,grouping by station, then showing first station in desc order results
mostactive=session.query(Measurement.station,func.count(Measurement.station)).group_by(Measurement.station).order_by(func.count(Measurement.station).desc()).first()
#create a station variable for most active station
most_active_station = mostactive[(0)]

session.close()



# Flask Setup
app = Flask(__name__)


# Flask Routes
@app.route("/")
def home():
    """List all available api routes."""
    return (
        f"Hello! Welcome to the Climate APP API!<br/>"
        f"Available Routes:<br/>"
        f"/api/v1.0/precipitation<br/>"
        f"/api/v1.0/stations<br/>"
        f"/api/v1.0/tobs<br/>"
        f"/api/v1.0/<start><br/>"
        f"/api/v1.0/<start>/<end><br/>"
    )

#precipitation
@app.route("/api/v1.0/precipitation")
def precipitation():
    # Create our session (link) from Python to the DB
    session = Session(engine)
    #query for all precipitation dates after a year prior,c 
    prcpscores = session.query(Measurement.date,Measurement.prcp).filter(Measurement.date>=c).all()

    session.close()

    # Create a dictionary from the row data and append to a list of precipitation data
    precipitation = []

    for date, prcp in prcpscores:
        precip_dict = {}
        precip_dict["date"] = date
        precip_dict["prcp"] = prcp
        precipitation.append(precip_dict)

    return jsonify(precipitation)

#stations
@app.route("/api/v1.0/stations")
def stations():
    # Create our session (link) from Python to the DB
    session = Session(engine)
    #query for station data
    xstation = session.query(Measurement.station).group_by(Measurement.station).all()

    session.close()

    # Create a dictionary from the row data and append to a list of stations
    stations = []

    for station in xstation:
        station_dict = {}
        station_dict["station"] = station
        stations.append(station_dict)

    return jsonify(stations)

#tobs
@app.route("/api/v1.0/tobs")
def tobs():
    # Create our session (link) from Python to the DB
    session = Session(engine)
    #query that finds tobs and date for any date after a year ago date for the most active station
    tobs_data = session.query(Measurement.date, Measurement.tobs).filter(Measurement.date>=c).filter(Measurement.station==most_active_station).all()
    
    session.close()

    # Create a dictionary from the row data and append to a list of tobs
    tobs_= []

    for date,tobs in tobs_data:
        tobs_dict = {}
        tobs_dict["date"] = date
        tobs_dict["tobs"] = tobs
        tobs_.append(tobs_dict)

    return jsonify(tobs_)

#start
@app.route("/api/v1.0/<start>")
def startdate(start):
    # Create our session (link) from Python to the DB
    session = Session(engine)

    #have to calculate a single date in the same format as you were able to query for the last date in prior steps
    startdate = dt.datetime.strptime(start,'%Y-%m-%d')

    #run your session query to get min,avg,max tobs infor for any date greater than the start date (entered in the right format) defined above. 
    trip_dates = session.query(func.min(Measurement.tobs),func.avg(Measurement.tobs),func.max(Measurement.tobs)).filter(Measurement.date>=start).all()

    session.close()

    # Create a dictionary from the row data and append to a list of tobs
    trip_temp = []

    for trip in trip_dates:
        start_dict = {}
        start_dict["vacation start date"] = startdate
        start_dict["min"] = trip[0]
        start_dict["avg"] = trip[1]
        start_dict["max"] = trip[2]

        trip_temp.append(start_dict)

    return jsonify(trip_temp)

#start&end
@app.route("/api/v1.0/<start>/<end>")
def enddate(start,end):
    # Create our session (link) from Python to the DB
    session = Session(engine)

    #need start and end dates. Start date info is the same, end date is similar 
    #have to calculate a single date in the same format as you were able to query for the last date in prior steps
    startdate = dt.datetime.strptime(start,'%Y-%m-%d')
    enddate = dt.datetime.strptime(end,'%Y-%m-%d')

    #same as above with start date query, but now receive tobs min,avg,max data for dates
    #filtering on any date in the Measurement table date column that is greater than or equal to the start date and less than or equal to the end date specified
    trip_dates = session.query(func.min(Measurement.tobs),func.avg(Measurement.tobs),func.max(Measurement.tobs)).filter(Measurement.date>=start).filter(Measurement.date<=end).all()

    session.close()

    # Create a dictionary from the row data and append to a list of tobs
    trip_temp = []

    for trip in trip_dates:
        start_dict = {}
        start_dict["vacation trip dates (start - end)"] = startdate,enddate
        start_dict["min"] = trip[0]
        start_dict["avg"] = trip[1]
        start_dict["max"] = trip[2]

        trip_temp.append(start_dict)

    return jsonify(trip_temp)

if __name__ == '__main__':
    app.run(debug=True)
