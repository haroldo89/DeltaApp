DROP PROCEDURE DELETE_PRODUCT;
DELIMITER $$
CREATE PROCEDURE  DELETE_PRODUCT
(
	in pdt_ID int(15),
    out resultMessage varchar(200)
)
BEGIN
	IF EXISTS (SELECT * from PRODUCT where (PDT_ID = pdt_ID)) THEN
    
		IF EXISTS (SELECT * from MEASURE_PRODUCT where (PDT_ID = pdt_ID)) THEN
        
			set resultMessage = 'No es posible borrar el registro, 
								 Existen Mediciones Asociados a este';
		else
        
        
			DELETE FROM DETAIL_PERT_PRODUCT WHERE PRODUCT_PDT_ID = pdt_Id;
            DELETE FROM PRODUCT WHERE (PDT_ID = pdt_ID);
			            
        END IF;
        		
    ELSE
    
		set resultMessage = 'Registro No Existe en el Sistema';
        
    END IF;
	
END