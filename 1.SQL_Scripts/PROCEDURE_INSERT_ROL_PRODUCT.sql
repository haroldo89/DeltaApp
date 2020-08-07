DROP PROCEDURE INSERT_ROL_PRODUCT;
DELIMITER $$
CREATE PROCEDURE INSERT_ROL_PRODUCT(

	in rolID	 		INT,
    in inputText		VARCHAR (2000),
    out resultMessage 	VARCHAR (200)
)
BEGIN

DECLARE delChar VARCHAR (1);
DECLARE item VARCHAR(2000);

IF EXISTS (SELECT * FROM ROL WHERE ROL_ID = rolID) THEN
SET delChar = ',';

WHILE LOCATE(delChar,inputText) != 0 DO
 
    	SET item = RTRIM(LTRIM(SUBSTRING(inputText,1, LOCATE(delChar,inputText) - 1)));
    	SET inputText = RTRIM(LTRIM(SUBSTRING(inputText, LOCATE(delChar, inputText) + LENGTH(delChar), LENGTH(inputText))));
    	
    	IF length(item) > 0 THEN
       
				IF EXISTS(SELECT * FROM PRODUCT WHERE PDT_ID = item) then
						 
						IF NOT EXISTS(SELECT * FROM ROL_PRODUCT WHERE PDT_ID = item AND ROL_ID = rolID)THEN
							 insert Into ROL_PRODUCT (ROL_ID,PDT_ID) 
							values 	(rolID,item);
						END IF;
					
				ELSE
					
                    set resultMessage = CONCAT('El Producto ',item,' No Existe');
				
				END IF;
        END IF;
        
	END WHILE;
    
    IF length(inputText) > 0 then
		IF EXISTS(SELECT * FROM PRODUCT WHERE PDT_ID = inputText) then
			 
						IF NOT EXISTS(SELECT * FROM ROL_PRODUCT WHERE PDT_ID = inputText AND ROL_ID = rolID )THEN
							
							insert Into ROL_PRODUCT (ROL_ID,PDT_ID) 
								values 	(rolID,inputText);
						END IF;
					
				ELSE
					
                    set resultMessage = CONCAT('El Producto ',inputText,' No Existe');
				
				END IF;
	end if;
ELSE
SET resultMessage = 'El Rol No Existe';
END IF;
END$$
DELIMITER ;


CALL UPDATE_ROL_PRODUCT(1, '20,21,22,23',@RES);
SELECT @RES;


DROP PROCEDURE UPDATE_ROL_PRODUCT;
DELIMITER $$
CREATE PROCEDURE UPDATE_ROL_PRODUCT(

	in rolID	 		INT,
    in inputText		VARCHAR (2000),
    out resultMessage 	VARCHAR (200)
)
BEGIN

DECLARE delChar VARCHAR (1);
DECLARE item VARCHAR(2000);

IF EXISTS (SELECT * FROM ROL WHERE ROL_ID = rolID) THEN
SET delChar = ',';

DELETE FROM ROL_PRODUCT WHERE ROL_PRODUCT.ROL_ID = rolID;

/**
Insertar nuevos productos al rol
**/
WHILE LOCATE(delChar,inputText) != 0 DO
 
    	SET item = RTRIM(LTRIM(SUBSTRING(inputText,1, LOCATE(delChar,inputText) - 1)));
    	SET inputText = RTRIM(LTRIM(SUBSTRING(inputText, LOCATE(delChar, inputText) + LENGTH(delChar), LENGTH(inputText))));
    	
    	IF length(item) > 0 THEN
       
				IF EXISTS(SELECT * FROM PRODUCT WHERE PDT_ID = item) then
						 
						IF NOT EXISTS(SELECT * FROM ROL_PRODUCT WHERE PDT_ID = item AND ROL_ID = rolID)THEN
							 insert Into ROL_PRODUCT (ROL_ID,PDT_ID) 
							values 	(rolID,item);
						END IF;
					
				ELSE
					
                    set resultMessage = CONCAT('El Producto ',item,' No Existe');
				
				END IF;
        END IF;
        
	END WHILE;
    
    IF length(inputText) > 0 then
		IF EXISTS(SELECT * FROM PRODUCT WHERE PDT_ID = inputText) then
			 
						IF NOT EXISTS(SELECT * FROM ROL_PRODUCT WHERE PDT_ID = inputText AND ROL_ID = rolID )THEN
							
							insert Into ROL_PRODUCT (ROL_ID,PDT_ID) 
								values 	(rolID,inputText);
						END IF;
					
				ELSE
					
                    set resultMessage = CONCAT('El Producto ',inputText,' No Existe');
				
				END IF;
	end if;
ELSE
SET resultMessage = 'El Rol No Existe';
END IF;
END$$
DELIMITER ;