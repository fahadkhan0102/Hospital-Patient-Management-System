-- List all appointments with doctor & patient names
SELECT * FROM vw_AppointmentSummary;

-- Total spending per patient
SELECT P.FullName, SUM(B.TotalAmount) AS TotalSpent
FROM Billing B
JOIN Patients P ON B.PatientID = P.PatientID
GROUP BY P.FullName;

-- Count of appointments per department
SELECT Dept.DepartmentName, COUNT(*) AS TotalAppointments
FROM Appointments A
JOIN Doctors D ON A.DoctorID = D.DoctorID
JOIN Departments Dept ON D.DepartmentID = Dept.DepartmentID
GROUP BY Dept.DepartmentName;

-- Top 3 doctors by appointment volume
SELECT TOP 3 D.FullName, COUNT(*) AS TotalAppointments
FROM Appointments A
JOIN Doctors D ON A.DoctorID = D.DoctorID
GROUP BY D.FullName
ORDER BY TotalAppointments DESC;