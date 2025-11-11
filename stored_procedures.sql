-- Procedure to schedule a new appointment
CREATE PROCEDURE sp_BookAppointment
    @PatientID INT,
    @DoctorID INT,
    @AppointmentDate DATETIME
AS
BEGIN
    INSERT INTO Appointments (PatientID, DoctorID, AppointmentDate, Status)
    VALUES (@PatientID, @DoctorID, @AppointmentDate, 'Scheduled');
END;
GO

-- Procedure to update appointment status
CREATE PROCEDURE sp_UpdateAppointmentStatus
    @AppointmentID INT,
    @Status VARCHAR(20)
AS
BEGIN
    UPDATE Appointments
    SET Status = @Status
    WHERE AppointmentID = @AppointmentID;
END;
GO

-- Procedure to generate billing entry
CREATE PROCEDURE sp_GenerateBill
    @PatientID INT,
    @ConsultationFee DECIMAL(10,2),
    @MedicineCost DECIMAL(10,2)
AS
BEGIN
    INSERT INTO Billing (PatientID, ConsultationFee, MedicineCost)
    VALUES (@PatientID, @ConsultationFee, @MedicineCost);
END;
GO