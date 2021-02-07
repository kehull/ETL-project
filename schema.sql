CREATE TABLE IF NOT EXISTS STATE_POP (
	State VARCHAR UNIQUE NOT NULL,
	Population NUMERIC,
	PRIMARY KEY(State)
);

CREATE TABLE IF NOT EXISTS URBANIZATION (
	State VARCHAR UNIQUE,
	Urban_Index NUMERIC,
	Urban_Scale VARCHAR,
	PRIMARY KEY(State),
	FOREIGN KEY (State) REFERENCES STATE_POP (State)
);

CREATE TABLE IF NOT EXISTS REGIONS (
	State VARCHAR UNIQUE NOT NULL,
	Region VARCHAR,
	Division VARCHAR,
	PRIMARY KEY(State),
	FOREIGN KEY (State) REFERENCES STATE_POP (State)
);

CREATE TABLE IF NOT EXISTS UFO_SIGHTINGS (
	id NUMERIC UNIQUE NOT NULL,
	datetime VARCHAR,
	city VARCHAR,
	state VARCHAR,
	country VARCHAR,
	shape VARCHAR,
	duration_seconds NUMERIC,
	duration_hours_min VARCHAR,
	comments VARCHAR,
	date_posted VARCHAR,
	latitude NUMERIC,
	longitude NUMERIC,
	PRIMARY KEY(id),
	FOREIGN KEY (state) REFERENCES STATE_POP (State)
);