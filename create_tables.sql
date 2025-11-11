-- Create Departments table
CREATE TABLE Departments (
    DepartmentID INT IDENTITY PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);

-- Create Doctors table
CREATE TABLE Doctors (
    DoctorID INT IDENTITY PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    DepartmentID INT FOREIGN KEY REFERENCES Departments(DepartmentID),
    Phone VARCHAR(15),
    Email VARCHAR(100)
);

-- Create Patients table
CREATE TABLE Patients (
    PatientID INT IDENTITY PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    DOB DATE,
    Gender CHAR(1),
    Phone VARCHAR(15)
);

-- Create Appointments table
CREATE TABLE Appointments (
    AppointmentID INT IDENTITY PRIMARY KEY,
    PatientID INT FOREIGN KEY REFERENCES Patients(PatientID),
    DoctorID INT FOREIGN KEY REFERENCES Doctors(DoctorID),
    AppointmentDate DATETIME NOT NULL,
    Status VARCHAR(20)
);

-- Create Billing table
CREATE TABLE Billing (
    BillID INT IDENTITY PRIMARY KEY,
    PatientID INT FOREIGN KEY REFERENCES Patients(PatientID),
    ConsultationFee DECIMAL(10,2),
    MedicineCost DECIMAL(10,2),
    TotalAmount AS (ConsultationFee + MedicineCost) PERSISTED
);