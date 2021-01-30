Alter VIEW sessionCount AS
SELECT COUNT(Sessions.sessionUserId) as total, Users.userEmail
From dbo.Sessions, dbo.Users
WHERE Sessions.sessionUserId = Users.userId
GROUP BY Users.userEmail
GO