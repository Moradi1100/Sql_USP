

CREATE PROCEDURE usp_InsertStaffpermission
(		
         @StaffID_FK int,
         @EmployeeID_FK int,
         @ConfirmDate date,
         @username nvarchar(50),
         @password nvarchar(30)
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[StaffPermission]
           ([StaffID_FK]
           ,[EmployeeID_FK]
           ,[ConfirmDate]
           ,[username]
           ,[password])
     VALUES(@StaffID_FK,@EmployeeID_FK,@ConfirmDate,@username,@password)
END
GO

CREATE PROCEDURE usp_UpdateStaffpermissionByID
		
(		 @ID int ,
         @StaffID_FK int,
         @EmployeeID_FK int,
         @ConfirmDate date,
         @username nvarchar(50),
         @password nvarchar(30)
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE [dbo].[StaffPermission]
	SET 
				StaffID_FK=@StaffID_FK,
				EmployeeID_FK=@EmployeeID_FK,
				ConfirmDate=@ConfirmDate,
				username=@username,
				[password]=@password

	WHERE StaffPermissionID=@ID
END
GO
CREATE PROCEDURE usp_DeleteStaffpermissionByID
(
	@ID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM [dbo].[StaffPermission]
            WHERE  StaffPermissionID=@ID
        END
GO

CREATE PROCEDURE usp_SelectStaffpermission
AS
SET NOCOUNT ON; 
        BEGIN

SELECT [StaffPermissionID]
      ,[StaffID_FK]
      ,[EmployeeID_FK]
      ,[ConfirmDate]
      ,[username]
      ,[password]
  FROM [dbo].[StaffPermission]

        END