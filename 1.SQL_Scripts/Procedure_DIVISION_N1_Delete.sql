DROP PROCEDURE DELETE_DIVISION_N1;
DELIMITER $$
CREATE PROCEDURE  DELETE_DIVISION_N1
(
	in divN1_ID int(15),
    out resultMessage varchar(200)
)
BEGIN
	IF EXISTS (SELECT * from DIVISION_N1 where (DIV_N1_ID = divN1_ID)) THEN
    
		IF EXISTS (SELECT * from DIVISION_N2 where (DIV_N1_ID = divN1_ID)) THEN
			
            set resultMessage = 'No es posible borrar el registro, 
								 Existen Divisiones N2_Asociadas Asociados a este';
        
        ELSEIF EXISTS (SELECT * from MEASURE_PRODUCT where (DIV_N1_ID = divN1_ID)) THEN
        
			set resultMessage = 'No es posible borrar el registro, 
								 Existen Mediciones Asociados a este';
		else
			
            DELETE FROM DIVISION_N1 WHERE (DIV_N1_ID = divN1_ID);
			            
        END IF;
        		
    ELSE
    
		set resultMessage = 'Registro No Existe en el Sistema';
        
    END IF;
	
END
