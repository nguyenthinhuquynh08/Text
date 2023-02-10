DROP DATABASE IF EXISTS fresher_training_management;

CREATE DATABASE IF NOT EXISTS fresher_training_management;

USE fresher_training_management;

/*CREATE TABLE*/
CREATE TABLE trainee(
traineeID INT PRIMARY KEY AUTO_INCREMENT,
full_name VARCHAR(50) NOT NULL,
birth_date DATE NOT NULL,
gender ENUM ("male", "female", "unknow"),
et_iq TINYINT CHECK(et_iq>=0 and et_iq<=20),
et_gmath TINYINT CHECK(et_gmath>=0 and et_gmath<=20),
et_english TINYINT CHECK (et_english>=0 and et_english<=50),
training_class VARCHAR(50) NOT NULL,
evaluation_note VARCHAR (200)
);

ALTER TABLE trainee ADD vti_account VARCHAR(20) NOT NULL UNIQUE;