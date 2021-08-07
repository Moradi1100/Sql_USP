

CREATE PROCEDURE usp_InsertAnswer
(		
           @QuestionDetailsCode_FK int,
           @Answer tinyint,
           @CustomerID_FK int
)		
AS		
SET NOCOUNT ON; 
BEGIN

INSERT INTO [dbo].[Answers]
           ([QuestionDetailsCode_FK]
           ,[Answer]
           ,[CustomerID_FK])
     VALUES(@QuestionDetailsCode_FK,@Answer,@CustomerID_FK)
END
GO

CREATE PROCEDURE usp_UpdateAnswerByID
		
(		   @ID int ,
           @QuestionDetailsCode_FK int,
           @Answer tinyint,
           @CustomerID_FK int
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE Answers
	SET 
		Answer=@Answer,
		QuestionDetailsCode_FK=@QuestionDetailsCode_FK,
		CustomerID_FK=@CustomerID_FK



	WHERE AnswerID=@ID
END
GO
CREATE PROCEDURE usp_DeleteAnswerByID
(
	@ID INT
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM Answers
            WHERE  AnswerID=@ID
        END
GO

CREATE PROCEDURE usp_SelectAnswer
AS
SET NOCOUNT ON; 
        BEGIN

SELECT [AnswerID]
      ,[QuestionDetailsCode_FK]
      ,[Answer]
      ,[CustomerID_FK]
  FROM [dbo].[Answers]


        END