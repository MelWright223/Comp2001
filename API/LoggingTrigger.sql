CREATE TRIGGER PassChange on dbo.Users
After UPDATE
AS
BEGIN

IF UPDATE(userPassword)
BEGIN
    DECLARE @userId INT
    DECLARE @oldPass VARCHAR


    SELECT @userId = userId, @oldPass = userPassword From deleted

    INSERT INTO dbo.Passwords (passUserId, passPassword, passDateChange)
    VALUES (@userId, @oldPass, GETDATE())
END

END