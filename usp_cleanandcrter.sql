

CREATE PROCEDURE usp_InsertCleaningAndCatering
(		
           @Name nvarchar(30),
           @startdate date,
           @enddate date,
           @picture varbinary(max),
           @status bit,
           @Transportation decimal(9,0),
           @Comment nvarchar(1000)
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[CleaningAndCatering]
           ([Name]
           ,[start date]
           ,[end date]
           ,[picture]
           ,[status]
           ,[Transportation]
           ,[Comment])
     VALUES(@Name,@startdate,@enddate,@picture,@status,@Transportation,@Comment)
END
GO

CREATE PROCEDURE usp_UpdateCleaningAndCateringByID
		
(		   @ID int ,
           @Name nvarchar(30),
           @startdate date,
           @enddate date,
           @picture varbinary(max),
           @status bit,
           @Transportation decimal(9,0),
           @Comment nvarchar(1000)
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE CleaningAndCatering
	SET 
          [Name]= @Name, 
          [start date]= @startdate ,
          [end date]= @enddate,
          picture= @picture ,
          [status]=@status,
          Transportation=@Transportation,
          Comment=@Comment 



	WHERE CleaningAndCateringID=@ID
END
GO
CREATE PROCEDURE usp_DeleteCleaningAndCateringByID
(
	@ID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM CleaningAndCatering
            WHERE  CleaningAndCateringID=@ID
        END
GO

CREATE PROCEDURE usp_SelectCleaningAndCatering
AS
SET NOCOUNT ON; 
        BEGIN

SELECT [CleaningAndCateringID]
      ,[Name]
      ,[start date]
      ,[end date]
      ,[picture]
      ,[status]
      ,[Transportation]
      ,[Comment]
  FROM [dbo].[CleaningAndCatering]

        END