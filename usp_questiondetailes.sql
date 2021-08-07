



  

CREATE PROCEDURE usp_InsertQuestionDetailes
(		
		  
          @ServicesTitleID_FK int,
          @Question varchar(150),
          @QuestionType nvarchar(10),
          @Answer1 nvarchar(50),
          @Answer2 nvarchar(50),
          @Answer3 nvarchar(50),
          @Answer4 nvarchar(50)
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[QuestionDetails]
           ([ServicesTitleID_FK]
           ,[Question]
           ,[QuestionType]
           ,[Answer1]
           ,[Answer2]
           ,[Answer3]
           ,[Answer4])
     VALUES(@ServicesTitleID_FK,@Question,@QuestionType,@Answer1,@Answer2,@Answer3,@Answer4)
     
END
GO

CREATE PROCEDURE usp_UpdateQuestionDetailesByID
		
(		  @ID int ,
		  @ServicesTitleID_FK int,
          @Question varchar(150),
          @QuestionType nvarchar(10),
          @Answer1 nvarchar(50),
          @Answer2 nvarchar(50),
          @Answer3 nvarchar(50),
          @Answer4 nvarchar(50)
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE [dbo].[QuestionDetails]
	SET 
		ServicesTitleID_FK=@ServicesTitleID_FK,
		Question=@Question,
		QuestionType=@QuestionType,
		Answer1=@Answer1,
		Answer2=@Answer2,
		Answer3=@Answer3,
		Answer4=@Answer4
		
	WHERE QuestionDetailsID=@ID
END
GO
CREATE PROCEDURE usp_DeleteQuestionDetailesByID
(
	@ID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM QuestionDetails
            WHERE  QuestionDetailsID=@ID
        END
GO

CREATE PROCEDURE usp_SelectQuestionDetailes
AS
SET NOCOUNT ON; 
        BEGIN
SELECT [QuestionDetailsID]
      ,[ServicesTitleID_FK]
      ,[Question]
      ,[QuestionType]
      ,[Answer1]
      ,[Answer2]
      ,[Answer3]
      ,[Answer4]
  FROM [dbo].[QuestionDetails]

        END