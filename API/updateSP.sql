SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateUsers]
(
    @userId INT,
    @userFirstName VARCHAR(45),
    @userLastName VARCHAR(45),
    @userEmail VARCHAR(45),
    @userPassword VARCHAR(45),
    @userUserName VARCHAR(45)
)
As BEGIN
UPDATE dbo.Users
SET
    userFirstName = @userFirstName,
    userLastName = @userLastName,
    userEmail = @userEmail,
    userPassword = @userPassword,
    userUserName = @userUserName
    WHERE userId = @userId


    

END 
GO
