INSERT INTO Departments (DepartmentName)
VALUES ('Cardiology'), ('Neurology'), ('Orthopedics');

INSERT INTO Doctors (FullName, DepartmentID, Phone, Email)
VALUES 
('Dr. A Sharma', 1, '9876543210', 'a.sharma@hospital.com'),
('Dr. R Singh', 2, '9876501234', 'r.singh@hospital.com');

INSERT INTO Patients (FullName, DOB, Gender, Phone)
VALUES 
('Rahul Verma', '1995-05-20', 'M', '9999988888'),
('Priya Mehra', '1989-10-10', 'F', '8888877777');

INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Status)
VALUES 
(1, 1, GETDATE(), 'Completed'),
(2, 2, GETDATE(), 'Scheduled');

INSERT INTO Billing (PatientID, ConsultationFee, MedicineCost)
VALUES 
(1, 500, 250),
(2, 700, 450);