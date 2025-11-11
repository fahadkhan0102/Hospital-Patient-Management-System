-- View showing patient-appointment-doctor summary
CREATE VIEW vw_AppointmentSummary AS
SELECT 
    A.AppointmentID,
    P.FullName AS Patient,
    D.FullName AS Doctor,
    Dept.DepartmentName,
    A.AppointmentDate,
    A.Status
FROM Appointments A
JOIN Patients P ON A.PatientID = P.PatientID
JOIN Doctors D ON A.DoctorID = D.DoctorID
JOIN Departments Dept ON D.DepartmentID = Dept.DepartmentID;
GO

-- View showing billing overview
CREATE VIEW vw_BillingSummary AS
SELECT 
    B.BillID,
    P.FullName AS Patient,
    B.ConsultationFee,
    B.MedicineCost,
    B.TotalAmount
FROM Billing B
JOIN Patients P ON B.PatientID = P.PatientID;
GO