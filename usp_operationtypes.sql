

CREATE PROCEDURE usp_InsertOperationTypes
(		
          @title nvarchar(255),
          @description nvarchar(255)
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[OperationTypes]
           ([title]
           ,[description])
     VALUES(@title,@description)
END
GO

CREATE PROCEDURE usp_UpdateOperationTypesByID
		
(		   @ID int ,
          @title nvarchar(255),
          @description nvarchar(255)
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE [OperationTypes]
	SET 
			title=@title,
			[description]=@description
		

	WHERE id=@ID
END
GO
CREATE PROCEDURE usp_DeleteOperationTypesByID
(
	@ID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM [OperationTypes]
            WHERE  id=@ID
        END
GO

CREATE PROCEDURE usp_SelectOperationTypes
AS
SET NOCOUNT ON; 
        BEGIN

SELECT [id]
      ,[title]
      ,[description]
  FROM [dbo].[OperationTypes]



        END