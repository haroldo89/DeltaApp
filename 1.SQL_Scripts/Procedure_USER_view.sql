DROP PROCEDURE GET_USERS_VIEW;
DELIMITER $$
CREATE PROCEDURE  GET_USERS_VIEW
(
	
)
BEGIN
	SELECT * FROM USERS_VIEW;
END