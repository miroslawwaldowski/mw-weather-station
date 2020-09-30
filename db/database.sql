CREATE DATABASE weatherstation;

CREATE TABLE devices
(
  id serial primary key,
  name_device text UNIQUE NOT NULL,
  hashed_password text NOT NULL
);

CREATE TABLE weatherdata
(
  id serial PRIMARY KEY,
  device_id INTEGER REFERENCES devices (id), 
  time_stamp TIMESTAMP,
  temperature NUMERIC(4,1),
  humidity NUMERIC(4,1),
  uv smallint,
  pressure NUMERIC(5,0),
  pm10 NUMERIC(4,0),
  pm25 NUMERIC(4,0),
  latitude NUMERIC(6,4),
  longitude NUMERIC(7,4),
  battery NUMERIC(4,0)
);
