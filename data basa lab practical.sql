CREATE DATABASE HospitalManagement;
USE HospitalManagement;
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(50),
    Specialty VARCHAR(50),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    ExperienceYears INT
);

INSERT INTO Doctors (DoctorID, Name, Specialty, Phone, Email, ExperienceYears) VALUES
(101, 'Dr. Ahmed Khan', 'Cardiologist', '0300-1111111', 'ahmed.khan@hospital.com', 12),
(102, 'Dr. Usman Ali', 'Orthopedic', '0300-2222222', 'usman.ali@hospital.com', 10),
(103, 'Dr. Hamza Farooq', 'Dermatologist', '0300-3333333', 'hamza.farooq@hospital.com', 8),
(104, 'Dr. Bilal Ahmad', 'Pediatrician', '0300-4444444', 'bilal.ahmad@hospital.com', 9),
(105, 'Dr. Salman Raza', 'Neurologist', '0300-5555555', 'salman.raza@hospital.com', 15),
(106, 'Dr. Faisal Qadir', 'General Surgeon', '0300-6666666', 'faisal.qadir@hospital.com', 11);

SELECT * FROM Doctors;

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Phone VARCHAR(20),
    Address VARCHAR(100),
    BloodGroup VARCHAR(5)
);

INSERT INTO Patients (PatientID, Name, Age, Phone, Address, BloodGroup) VALUES
(201, 'Muhammad Saad', 25, '0311-5555555', 'Karachi, Pakistan', 'B+'),
(202, 'Abdullah Qureshi', 30, '0311-6666666', 'Lahore, Pakistan', 'O+'),
(203, 'Omar Khalid', 40, '0311-7777777', 'Islamabad, Pakistan', 'A-'),
(204, 'Ibrahim Zafar', 35, '0311-8888888', 'Rawalpindi, Pakistan', 'B-'),
(205, 'Yusuf Nadeem', 28, '0311-9999999', 'Faisalabad, Pakistan', 'AB+'),
(206, 'Ali Hassan', 32, '0312-1010101', 'Multan, Pakistan', 'O-');

SELECT * FROM Patients;

CREATE TABLE Appointments(
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    Date DATE,
    Time TIME,
    Status VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, Date, Time, Status) VALUES
(301, 201, 101, '2025-09-01', '10:00:00', 'Confirmed'),
(302, 202, 102, '2025-09-02', '11:30:00', 'Pending'),
(303, 203, 104, '2025-09-03', '14:00:00', 'Completed'),
(304, 204, 103, '2025-09-04', '09:30:00', 'Cancelled'),
(305, 205, 105, '2025-09-05', '15:00:00', 'Confirmed'),
(306, 206, 106, '2025-09-06', '16:00:00', 'Pending' );

SELECT * FROM Appointments;

