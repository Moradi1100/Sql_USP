

CREATE PROCEDURE usp_InsertEmployeeBy
(		
        @Fname nvarchar(30),
        @Lname nvarchar(30),
        @NatinalCode nchar(10),
        @mobile nchar(10),
        @phone nchar(10),
        @BirthDate nchar(10),
        @AccuntNumber nchar(16),
        @Position nvarchar(20),
        @Status bit
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[Employee]
           ([Fname]
           ,[Lname]
           ,[NatinalCode]
           ,[mobile]
           ,[phone]
           ,[BirthDate]
           ,[AccuntNumber]
           ,[Position]
           ,[Status])
     VALUES(@Fname,@Lname,@NatinalCode ,@mobile , @phone,
        @BirthDate, @AccuntNumber, @Position , @Status)
END
GO

CREATE PROCEDURE usp_UpdateEmployeeByID
(		@ID int,
        @Fname nvarchar(30),
        @Lname nvarchar(30),
        @NatinalCode nchar(10),
        @mobile nchar(10),
        @phone nchar(10),
        @BirthDate nchar(10),
        @AccuntNumber nchar(16),
        @Position nvarchar(20),
        @Status bit
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE Employee
	SET 
			[Fname]=@Fname
           ,[Lname]=@Lname
           ,[NatinalCode]=@NatinalCode
           ,[mobile]=@mobile
           ,[phone]=@phone
           ,[BirthDate]=@BirthDate
           ,[AccuntNumber]=@AccuntNumber
           ,[Position]=@Position
           ,[Status]=@Status
		
	WHERE EmployeeID=@ID
END
GO
CREATE PROCEDURE usp_DeleteEmployeeByID
(
	@EmployeeeID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM Employee
            WHERE  EmployeeID=@EmployeeeID
        END
GO

CREATE PROCEDURE usp_SelectEmployee
AS
SET NOCOUNT ON; 
        BEGIN
SELECT [EmployeeID]
      ,[Fname]
      ,[Lname]
      ,[NatinalCode]
      ,[mobile]
      ,[phone]
      ,[BirthDate]
      ,[AccuntNumber]
      ,[Position]
      ,[Status]
  FROM [dbo].[Employee]
        END