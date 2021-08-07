

CREATE PROCEDURE usp_InsertServicesAndPrice
(		
		  @CleaningAndCateringID_FK int,
          @Name nvarchar(30),
          @FromPrice decimal(9,0),
          @ToPrice decimal(9,0),
          @Agreeable bit,
          @Comment nvarchar(500)
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[ServicesAndPrice]
           ([CleaningAndCateringID_FK]
           ,[Name]
           ,[From Price]
           ,[To Price]
           ,[Agreeable]
           ,[Comment])
     VALUES(@CleaningAndCateringID_FK,@Name,@FromPrice,@ToPrice,@Agreeable,@Comment)
     
END
GO

CREATE PROCEDURE usp_UpdateServicesAndPriceBYID
		
(		  @ID int ,
		  @CleaningAndCateringID_FK int,
          @Name nvarchar(30),
          @FromPrice decimal(9,0),
          @ToPrice decimal(9,0),
          @Agreeable bit,
          @Comment nvarchar(500)
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE ServicesAndPrice
	SET 
			CleaningAndCateringID_FK=@CleaningAndCateringID_FK,
			[Name]=@Name,
			[From Price]=@FromPrice,
			[To Price]=@ToPrice,
			Agreeable=@Agreeable,
			Comment=@Comment
		
	WHERE ServicesAndPriceID=@ID
END
GO
CREATE PROCEDURE usp_DeleteServicesAndPriceByID
(
	@ID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM ServicesAndPrice
            WHERE  ServicesAndPriceID=@ID
        END
GO

CREATE PROCEDURE usp_SelectServicesAndPrice
AS
SET NOCOUNT ON; 
        BEGIN

SELECT [ServicesAndPriceID]
      ,[CleaningAndCateringID_FK]
      ,[Name]
      ,[From Price]
      ,[To Price]
      ,[Agreeable]
      ,[Comment]
  FROM [dbo].[ServicesAndPrice]

        END