CREATE QUEUE ContactChangeMessages;

CREATE SERVICE ContactChangeNotifications
  ON QUEUE ContactChangeMessages
([http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification]);
