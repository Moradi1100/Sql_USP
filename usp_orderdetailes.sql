
	CREATE PROCEDURE usp_InsertOrderDetailesByOrderDetailsID
(
	@OrderDetailsID int,
	@OrderHeaderID_FK int,
	@SevricesAndPriceID_FK int ,
	@Date date,
	@Comments nvarchar(50) 
)
AS
SET NOCOUNT ON; 
BEGIN
	INSERT INTO OrderDetails(OrderDetailsID ,OrderHeaderID_FK ,SevricesAndPriceID_FK,Date ,Comments ) 
		VALUES (@OrderDetailsID ,@OrderHeaderID_FK ,@SevricesAndPriceID_FK,@Date ,@Comments )
END
GO

CREATE PROCEDURE usp_UpdateOrderDetailesByOrderDetailsID
(
	@OrderDetailsID int,
	@OrderHeaderID_FK int,
	@SevricesAndPriceID_FK int ,
	@Date date,
	@Comments nvarchar(50) 
)
AS
SET NOCOUNT ON; 
BEGIN
	UPDATE OrderDetails
	SET 
			OrderDetailsID=@OrderDetailsID ,
			OrderHeaderID_FK=@OrderHeaderID_FK ,
			SevricesAndPriceID_FK=@SevricesAndPriceID_FK,
			[Date]=@Date ,
			Comments=@Comments
		
	WHERE OrderDetailsID=@OrderDetailsID
END
GO
CREATE PROCEDURE usp_DeleteOrderDetailesByOrderDetailsID
(
	@OrderDetailsID int
)
AS
SET NOCOUNT ON; 
        BEGIN
            DELETE FROM OrderDetails
            WHERE OrderDetailsID=@OrderDetailsID
        END
GO
CREATE PROCEDURE usp_SelectOrderDetailes
AS
SET NOCOUNT ON; 
        BEGIN
				SELECT OD.OrderDetailsID,OD.OrderHeaderID_FK,OD.SevricesAndPriceID_FK,OD.Comments,OD.Date
				FROM OrderDetails AS OD
        END