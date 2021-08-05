

	CREATE PROCEDURE usp_InsertStaffByStaffID
(
	@StaffID int ,
	@Fname nvarchar(30) ,
	@Lname nvarchar(30) ,
	@NatioalCode nchar(10) ,
	@Gender bit,
	@BirthDate nchar(10) ,
	@Phone nchar(10) ,
	@EmergencyPhone nchar(10),
	@AccountNumber nchar(16) ,
	@Startdate date ,
	@enddate date ,
	@status bit
)
AS
SET NOCOUNT ON; 
BEGIN
	INSERT INTO Staff(StaffID ,Fname  ,Lname  ,NatioalCode  ,Gender ,BirthDate ,Phone  ,
						EmergencyPhone ,AccountNumber  ,[Start date]  ,[end date] ,	[status]) 
		VALUES (@StaffID ,@Fname ,@Lname ,@NatioalCode ,@Gender ,@BirthDate ,@Phone  ,
						@EmergencyPhone ,@AccountNumber  ,@Startdate ,@enddate ,@status)
END
GO

CREATE PROCEDURE usp_UpdateStaffByStaffID
(
	@StaffID int ,
	@Fname nvarchar(30) ,
	@Lname nvarchar(30) ,
	@NatioalCode nchar(10) ,
	@Gender bit,
	@BirthDate nchar(10) ,
	@Phone nchar(10) ,
	@EmergencyPhone nchar(10),
	@AccountNumber nchar(16) ,
	@Startdate date ,
	@enddate date ,
	@status bit
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE Staff
	SET 
			Fname=@Fname,
			Lname=@Lname,
			NatioalCode=@NatioalCode,
			Gender=@Gender,
			BirthDate=@BirthDate,
			Phone=@Phone,
			EmergencyPhone=@EmergencyPhone,
			AccountNumber=@AccountNumber,
			[Start date]=@Startdate,
			[end date]=@enddate,
			[status]=@status
		
	WHERE StaffID=@StaffID
END
GO
CREATE PROCEDURE usp_DeleteStaffByStaffID
(
	@StaffID int
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM Staff
            WHERE @StaffID =StaffID
        END
GO
CREATE PROCEDURE usp_SelectStaff
AS
SET NOCOUNT ON; 
        BEGIN
				SELECT StaffID ,Fname  ,Lname  ,NatioalCode  ,Gender ,BirthDate ,Phone  ,
						EmergencyPhone ,AccountNumber  ,[Start date]  ,[end date] ,	[status]
				FROM Staff 
        END