



  

CREATE PROCEDURE usp_InsertPeyment
(		

         @ragDateTime int,
         @customer nvarchar(32),
         @contractId int,
         @amount int,
         @status varchar(32)
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[Payments]
           ([ragDateTime]
           ,[customer]
           ,[contractId]
           ,[amount]
           ,[status])

     VALUES( @ragDateTime,@customer,@contractId,@amount,@status)
     
END
GO

CREATE PROCEDURE usp_UpdatePeymentByID
(		 @ID int,
         @ragDateTime int,
         @customer nvarchar(32),
         @contractId int,
         @amount int,
         @status varchar(32)
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE [dbo].[Payments]
	SET 
		ragDateTime =@ragDateTime,
		customer=@customer,
		contractId=@contractId,
		amount=@amount,
		[status]=@status
		
	WHERE id=@ID
END
GO
CREATE PROCEDURE usp_DeletePeymentsByID
(
	@ID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM Payments
            WHERE  ID=@ID
        END
GO

CREATE PROCEDURE usp_SelectPeyments
AS
SET NOCOUNT ON; 
        BEGIN
SELECT [id]
      ,[ragDateTime]
      ,[customer]
      ,[contractId]
      ,[amount]
      ,[status]
  FROM [dbo].[Payments]

        END