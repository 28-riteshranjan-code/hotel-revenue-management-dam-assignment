-- Schema extracted from the verified Hotel_Revenue_Management.db database.
-- Run this in a new SQLite database before loading data.

CREATE TABLE Hotels (
    hotel_id INTEGER PRIMARY KEY,
    hotel TEXT UNIQUE NOT NULL
);

CREATE TABLE Segments (
    segment_id INTEGER PRIMARY KEY,
    market_segment TEXT UNIQUE NOT NULL
);

CREATE TABLE Channels (
    channel_id INTEGER PRIMARY KEY,
    distribution_channel TEXT UNIQUE NOT NULL
);

CREATE TABLE Meals (
    meal_id INTEGER PRIMARY KEY,
    meal TEXT UNIQUE NOT NULL
);

CREATE TABLE Room_Types (
    room_type_id INTEGER PRIMARY KEY,
    reserved_room_type TEXT UNIQUE NOT NULL
);

CREATE TABLE Customer_Types (
    customer_type_id INTEGER PRIMARY KEY,
    customer_type TEXT UNIQUE NOT NULL
);

CREATE TABLE Bookings (
    booking_id INTEGER PRIMARY KEY,
    hotel_id INTEGER,
    segment_id INTEGER,
    channel_id INTEGER,
    meal_id INTEGER,
    room_type_id INTEGER,
    customer_type_id INTEGER,
    lead_time INTEGER,
    arrival_date_year INTEGER,
    arrival_date_month TEXT,
    adults INTEGER,
    children REAL,
    babies INTEGER,
    stays_in_weekend_nights INTEGER,
    stays_in_week_nights INTEGER,
    adr REAL,
    total_of_special_requests INTEGER,
    required_car_parking_spaces INTEGER,
    is_canceled INTEGER,
    country TEXT,

    FOREIGN KEY (hotel_id) REFERENCES Hotels(hotel_id),
    FOREIGN KEY (segment_id) REFERENCES Segments(segment_id),
    FOREIGN KEY (channel_id) REFERENCES Channels(channel_id),
    FOREIGN KEY (meal_id) REFERENCES Meals(meal_id),
    FOREIGN KEY (room_type_id) REFERENCES Room_Types(room_type_id),
    FOREIGN KEY (customer_type_id) REFERENCES Customer_Types(customer_type_id)
);
