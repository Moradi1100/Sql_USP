

CREATE PROCEDURE usp_InsertSession
(		
         @username nvarchar(32),
         @ip varbinary(16),
         @start int,
         @end int,
         @status varchar(255)
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[Sessions]
           ([username]
           ,[ip]
           ,[start]
           ,[end]
           ,[status])
     VALUES(@username,@ip,@start,@end,@status)
END
GO

CREATE PROCEDURE usp_UpdateServicesTitleBYID
		
(		 @ID int ,
         @username nvarchar(32),
         @ip varbinary(16),
         @start int,
         @end int,
         @status varchar(255)
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE [dbo].[Sessions]
	SET 
			username=@username,
			[ip]=@ip,
			[start]=@start,
			[end]=@end,
			[status]=@status

	WHERE id=@ID
END
GO
CREATE PROCEDURE usp_DeleteServicesTitleByID
(
	@ID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM [dbo].[Sessions]
            WHERE  ID=@ID
        END
GO

CREATE PROCEDURE usp_SelectServicesTitle
AS
SET NOCOUNT ON; 
        BEGIN

SELECT [id]
      ,[username]
      ,[ip]
      ,[start]
      ,[end]
      ,[status]
  FROM [dbo].[Sessions]

        END