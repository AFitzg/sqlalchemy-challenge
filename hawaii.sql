/*
File name: C:\Users\acl6202e\Desktop\advanced sql\10-Advanced-Data-Storage-and-Retrieval\Instructions\Resources\hawaii.sql
Creation date: 11/16/2020
Created by SQLite to PostgreSQL 2.1 [Demo]
--------------------------------------------------
More conversion tools at http://www.convert-in.com
*/
set client_encoding to 'UTF8';

/*
Table structure for table 'public.measurement'
*/

DROP TABLE IF EXISTS "public"."measurement" CASCADE;
CREATE TABLE "public"."measurement" ("id" INTEGER NOT NULL, "station" TEXT, "date" TEXT, "prcp" DOUBLE PRECISION, "tobs" DOUBLE PRECISION);
DROP INDEX IF EXISTS "PK_measurement";
ALTER TABLE "public"."measurement" ADD CONSTRAINT "PK_measurement" PRIMARY KEY ("id");

/*
Dumping data for table 'public.measurement'
*/

INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (1, 'USC00519397', '2010-01-01', 8.0000000000000002e-02, 6.5000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (2, 'USC00519397', '2010-01-02', 0.0000000000000000e+00, 6.3000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (3, 'USC00519397', '2010-01-03', 0.0000000000000000e+00, 7.4000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (4, 'USC00519397', '2010-01-04', 0.0000000000000000e+00, 7.6000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (5, 'USC00519397', '2010-01-06', NULL, 7.3000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (6, 'USC00519397', '2010-01-07', 5.9999999999999998e-02, 7.0000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (7, 'USC00519397', '2010-01-08', 0.0000000000000000e+00, 6.4000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (8, 'USC00519397', '2010-01-09', 0.0000000000000000e+00, 6.8000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (9, 'USC00519397', '2010-01-10', 0.0000000000000000e+00, 7.3000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (10, 'USC00519397', '2010-01-11', 1.0000000000000000e-02, 6.4000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (11, 'USC00519397', '2010-01-12', 0.0000000000000000e+00, 6.1000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (12, 'USC00519397', '2010-01-14', 0.0000000000000000e+00, 6.6000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (13, 'USC00519397', '2010-01-15', 0.0000000000000000e+00, 6.5000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (14, 'USC00519397', '2010-01-16', 0.0000000000000000e+00, 6.8000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (15, 'USC00519397', '2010-01-17', 0.0000000000000000e+00, 6.4000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (16, 'USC00519397', '2010-01-18', 0.0000000000000000e+00, 7.2000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (17, 'USC00519397', '2010-01-19', 0.0000000000000000e+00, 6.6000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (18, 'USC00519397', '2010-01-20', 0.0000000000000000e+00, 6.6000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (19, 'USC00519397', '2010-01-21', 0.0000000000000000e+00, 6.9000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (20, 'USC00519397', '2010-01-22', 0.0000000000000000e+00, 6.7000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (21, 'USC00519397', '2010-01-23', 0.0000000000000000e+00, 6.7000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (22, 'USC00519397', '2010-01-24', 1.0000000000000000e-02, 7.1000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (23, 'USC00519397', '2010-01-25', 0.0000000000000000e+00, 6.7000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (24, 'USC00519397', '2010-01-26', 4.0000000000000001e-02, 7.6000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (25, 'USC00519397', '2010-01-27', 1.2000000000000000e-01, 6.8000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (26, 'USC00519397', '2010-01-28', 0.0000000000000000e+00, 7.2000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (27, 'USC00519397', '2010-01-30', NULL, 7.0000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (28, 'USC00519397', '2010-01-31', 2.9999999999999999e-02, 6.7000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (29, 'USC00519397', '2010-02-01', 1.0000000000000000e-02, 6.6000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (30, 'USC00519397', '2010-02-03', NULL, 6.7000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (31, 'USC00519397', '2010-02-04', 1.0000000000000000e-02, 6.9000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (32, 'USC00519397', '2010-02-05', 0.0000000000000000e+00, 6.7000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (33, 'USC00519397', '2010-02-06', 0.0000000000000000e+00, 6.7000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (34, 'USC00519397', '2010-02-07', 0.0000000000000000e+00, 6.4000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (35, 'USC00519397', '2010-02-08', 0.0000000000000000e+00, 6.9000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (36, 'USC00519397', '2010-02-09', 0.0000000000000000e+00, 7.3000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (37, 'USC00519397', '2010-02-11', 0.0000000000000000e+00, 7.3000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (38, 'USC00519397', '2010-02-12', 2.0000000000000000e-02, 6.9000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (39, 'USC00519397', '2010-02-13', 1.0000000000000000e-02, 6.9000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (40, 'USC00519397', '2010-02-14', 0.0000000000000000e+00, 6.9000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (41, 'USC00519397', '2010-02-15', 0.0000000000000000e+00, 7.1000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (42, 'USC00519397', '2010-02-16', 0.0000000000000000e+00, 6.1000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (43, 'USC00519397', '2010-02-17', 0.0000000000000000e+00, 6.9000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (44, 'USC00519397', '2010-02-19', NULL, 6.3000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (45, 'USC00519397', '2010-02-20', 2.9999999999999999e-02, 6.4000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (46, 'USC00519397', '2010-02-21', 0.0000000000000000e+00, 6.5000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (47, 'USC00519397', '2010-02-22', 0.0000000000000000e+00, 6.7000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (48, 'USC00519397', '2010-02-23', 0.0000000000000000e+00, 6.8000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (49, 'USC00519397', '2010-02-24', 0.0000000000000000e+00, 6.5000000000000000e+01);
INSERT INTO "public"."measurement"("id", "station", "date", "prcp", "tobs") VALUES (50, 'USC00519397', '2010-02-25', 0.0000000000000000e+00, 7.6000000000000000e+01);

/*
Table structure for table 'public.station'
*/

DROP TABLE IF EXISTS "public"."station" CASCADE;
CREATE TABLE "public"."station" ("id" INTEGER NOT NULL, "station" TEXT, "name" TEXT, "latitude" DOUBLE PRECISION, "longitude" DOUBLE PRECISION, "elevation" DOUBLE PRECISION);
DROP INDEX IF EXISTS "PK_station";
ALTER TABLE "public"."station" ADD CONSTRAINT "PK_station" PRIMARY KEY ("id");

/*
Dumping data for table 'public.station'
*/

INSERT INTO "public"."station"("id", "station", "name", "latitude", "longitude", "elevation") VALUES (1, 'USC00519397', 'WAIKIKI 717.2, HI US', 2.1271599999999999e+01, -1.5781680000000000e+02, 3.0000000000000000e+00);
INSERT INTO "public"."station"("id", "station", "name", "latitude", "longitude", "elevation") VALUES (2, 'USC00513117', 'KANEOHE 838.1, HI US', 2.1423400000000001e+01, -1.5780150000000000e+02, 1.4600000000000000e+01);
INSERT INTO "public"."station"("id", "station", "name", "latitude", "longitude", "elevation") VALUES (3, 'USC00514830', 'KUALOA RANCH HEADQUARTERS 886.9, HI US', 2.1521300000000000e+01, -1.5783740000000000e+02, 7.0000000000000000e+00);
INSERT INTO "public"."station"("id", "station", "name", "latitude", "longitude", "elevation") VALUES (4, 'USC00517948', 'PEARL CITY, HI US', 2.1393400000000000e+01, -1.5797510000000000e+02, 1.1900000000000000e+01);
INSERT INTO "public"."station"("id", "station", "name", "latitude", "longitude", "elevation") VALUES (5, 'USC00518838', 'UPPER WAHIAWA 874.3, HI US', 2.1499199999999998e+01, -1.5801110000000000e+02, 3.0660000000000002e+02);
INSERT INTO "public"."station"("id", "station", "name", "latitude", "longitude", "elevation") VALUES (6, 'USC00519523', 'WAIMANALO EXPERIMENTAL FARM, HI US', 2.1335560000000001e+01, -1.5771138999999999e+02, 1.9500000000000000e+01);
INSERT INTO "public"."station"("id", "station", "name", "latitude", "longitude", "elevation") VALUES (7, 'USC00519281', 'WAIHEE 837.5, HI US', 2.1451670000000000e+01, -1.5784888999999998e+02, 3.2899999999999999e+01);
INSERT INTO "public"."station"("id", "station", "name", "latitude", "longitude", "elevation") VALUES (8, 'USC00511918', 'HONOLULU OBSERVATORY 702.2, HI US', 2.1315200000000001e+01, -1.5799920000000000e+02, 9.0000000000000002e-01);
INSERT INTO "public"."station"("id", "station", "name", "latitude", "longitude", "elevation") VALUES (9, 'USC00516128', 'MANOA LYON ARBO 785.2, HI US', 2.1333100000000002e+01, -1.5780250000000001e+02, 1.5240000000000001e+02);
