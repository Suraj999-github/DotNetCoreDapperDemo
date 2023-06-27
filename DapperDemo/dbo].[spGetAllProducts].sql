
CREATE OR ALTER   PROCEDURE [dbo].[spGetAllProducts]
    (
	@Flag nvarchar(20),
	@Name nvarchar(200)= null,
	 @Price decimal(18,2)= null,
	  @Quantity int =null
	)
AS
BEGIN
  SET NOCOUNT ON;
 
 if(@Flag='l')
 begin
  SELECT * 
  FROM Product
 end
 if(@Flag='i')
 begin
  INSERT INTO Product ([Name], Price, Quantity) VALUES (@Name, @Price, @Quantity)
 end
END
