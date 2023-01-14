CREATE TABLE ad_movie(
    agency_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    movie_id INT UNSIGNED NOT NULL,
    movie_url VARCHAR(255) NOT NULL,
    ad_sponser_id INT UNSIGNED NOT NULL,
    title VARCHAR(255),
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    PRIMARY KEY(agency_id, movie_id)
);

CREATE TABLE ad_movie_schedule(
    schedule_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    movie_id INT UNSIGNED NOT NULL,
    date_ymd DATE NOT NULL,
    start_time_hms MEDIUMINT UNSIGNED NOT NULL,
    end_time_hms MEDIUMINT UNSIGNED NOT NULL,
    sunday Bit(1) DEFAULT false NOT NULL,
    monday Bit(1) DEFAULT false NOT NULL,
    thesday Bit(1) DEFAULT false NOT NULL,
    wednesday Bit(1) DEFAULT false NOT NULL,
    thursday Bit(1) DEFAULT false NOT NULL,
    friday Bit(1) DEFAULT false NOT NULL,
    saturday Bit(1) DEFAULT false NOT NULL,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    PRIMARY KEY(schedule_id, movie_id)
);

CREATE TABLE ad_agency(
    agency_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    agency_name VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    PRIMARY KEY(agency_id)
);

CREATE TABLE ad_sponser(
    sponser_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    agency_name VARCHAR(255) NOT NULL,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    PRIMARY KEY(sponser_id)
);

CREATE TABLE system_user(
    user_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    login_id VARCHAR(255) NOT NULL,
    password CHAR(128) NOT NULL,
    created_at DATETIME NOT NULL,
    modified_at DATETIME NOT NULL,
    PRIMARY KEY(user_id)
);