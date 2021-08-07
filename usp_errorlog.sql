

CREATE PROCEDURE usp_InsertEvents
(		
           @title nvarchar(255),
           @description nvarchar(512),
           @type varchar(32),
           @regUser nvarchar(32),
           @receiver nvarchar(32),
           @keyValue nvarchar(255),
           @otherValues nvarchar(512),
           @regDateTime int
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[Events]
           ([title]
           ,[description]
           ,[type]
           ,[regUser]
           ,[receiver]
           ,[keyValue]
           ,[otherValues]
           ,[regDateTime])
     VALUES(@title,@description,@type,@regUser,@receiver,@keyValue,@otherValues,@regDateTime)
END
GO

CREATE PROCEDURE usp_UpdateEventsByID
		
(		   @ID int ,
           @title nvarchar(255),
           @description nvarchar(512),
           @type varchar(32),
           @regUser nvarchar(32),
           @receiver nvarchar(32),
           @keyValue nvarchar(255),
           @otherValues nvarchar(512),
           @regDateTime int
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE [Events]
	SET 
				title=@title,
				[description]=@description,
				[type]=@type,
				[regUser]=@regUser,
				receiver=@receiver,
				keyValue=@keyValue,
				otherValues=@otherValues,
				regDateTime=@regDateTime


	WHERE id=@ID
END
GO
CREATE PROCEDURE usp_DeleteEventsByID
(
	@ID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM [Events]
            WHERE  id=@ID
        END
GO

CREATE PROCEDURE usp_SelectErrorLogs
AS
SET NOCOUNT ON; 
        BEGIN

SELECT [id]
      ,[title]
      ,[description]
      ,[type]
      ,[regUser]
      ,[receiver]
      ,[keyValue]
      ,[otherValues]
      ,[regDateTime]
  FROM [dbo].[Events]

        END