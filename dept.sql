
CREATE DATABASE dept;

use dept;


CREATE TABLE UserProfile (
    id BIGINT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    MiddleName VARCHAR(50),
    LastName VARCHAR(50) NOT NULL,
    Address TEXT NOT NULL,
    Semester INT,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Phone INTEGER(10) NOT NULL UNIQUE,
    PassingYear INT ,
    Position VARCHAR(100),
    Course VARCHAR(100),
    Company VARCHAR(100),
    Linkdin VARCHAR(255) NOT NULL UNIQUE,
    Sector VARCHAR(100),
    Password VARCHAR(255) NOT NULL,
    Image VARCHAR(255) NOT NULL,
    Role VARCHAR(50)
);


CREATE TABLE recruiter (
    id serial PRIMARY KEY,
    name VARCHAR(100),
    company VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    message TEXT,
    DateTime TIMESTAMP
);

CREATE TABLE projectSection (
    Project_id serial PRIMARY KEY,
    Title VARCHAR(60),
    GitHub_link VARCHAR(255),
    Sector VARCHAR(50),
    Description TEXT,
    File_path VARCHAR(255),
    Demo_link VARCHAR(255),
    Image VARCHAR(255),
    Approved BOOLEAN,
    Student_id BIGINT
);

CREATE TABLE Screen (
    Screen_id serial PRIMARY KEY,
    Image VARCHAR(255),
    Description TEXT
);

CREATE TABLE alumniStories (
    id serial PRIMARY KEY,
    image varchar(255), 
    story TEXT,
    alumniId BIGINT
);





select * from UserProfile;
select * from Screen;
select * from recruiter;
select * from projectSection;
select * from alumniStories;
