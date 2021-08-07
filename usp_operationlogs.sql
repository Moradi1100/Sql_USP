

CREATE PROCEDURE usp_InsertOperationLogs
(		
          @typeId int,
          @regDateTime int,
          @username int,
          @sessionId bigint,
          @keyValue varchar(255),
          @inputValues varchar(2048)
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[OperationLogs]
           ([typeId]
           ,[regDateTime]
           ,[username]
           ,[sessionId]
           ,[keyValue]
           ,[inputValues])
     VALUES(@typeId,@regDateTime,@username,@sessionId,@keyValue,@inputValues)
END
GO

CREATE PROCEDURE usp_UpdateOperationLogsByID
		
(		   @ID int ,
          @typeId int,
          @regDateTime int,
          @username int,
          @sessionId bigint,
          @keyValue varchar(255),
          @inputValues varchar(2048)
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE [OperationLogs]
	SET 
			typeId=@typeId,
			regDateTime=@regDateTime,
			username=@username,
			sessionId=@sessionId,
			keyValue=@keyValue,
			inputValues=@inputValues


	WHERE id=@ID
END
GO
CREATE PROCEDURE usp_DeleteOperationLogsByID
(
	@ID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM [OperationLogs]
            WHERE  id=@ID
        END
GO

CREATE PROCEDURE usp_SelectOperationLogs
AS
SET NOCOUNT ON; 
        BEGIN

SELECT [id]
      ,[typeId]
      ,[regDateTime]
      ,[username]
      ,[sessionId]
      ,[keyValue]
      ,[inputValues]
  FROM [dbo].[OperationLogs]


        END