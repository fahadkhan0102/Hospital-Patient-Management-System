-- Improve JOIN + search performance using indexes
CREATE INDEX idx_Appointments_PatientID ON Appointments(PatientID);
CREATE INDEX idx_Appointments_DoctorID ON Appointments(DoctorID);
CREATE INDEX idx_Doctors_DepartmentID ON Doctors(DepartmentID);