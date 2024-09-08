UPDATE users 
SET password = 'oops' 
WHERE username = 'admin';

DELETE FROM "user_logs" 
WHERE old_username = 'admin' AND new_username = 'admin';


INSERT INTO user_logs (type, old_username, new_username, new_password)
VALUES
('updatae', 'admin', 'admin', (SELECT "password" FROM "users" WHERE username = 'emily33'));