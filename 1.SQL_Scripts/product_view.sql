CREATE OR REPLACE VIEW PRODUCT_VIEW AS

SELECT 	PRODUCT.PDT_ID,
		PRODUCT.PDT_NAME,
		PRODUCT.PDT_HASCODE,
        PRODUCT.PDT_SIGLA,
		PROCESS_N0.PROC_N0_ID,
        PROCESS_N0.PROC_N0_NAME,
		PROCESS_N1.PROC_N1_ID,
        PROCESS_N1.PROC_N1_NAME,
        PROCESS_N2.PROC_N2_ID,
        PROCESS_N2.PROC_N2_NAME,
        PROCESS_N3.PROC_N3_ID,
        PROCESS_N3.PROC_N3_NAME,
        PRODUCT.PDT_DESC,
		OPORTUNITY_TYPE.OP_TYPE_ID,
        OPORTUNITY_TYPE.OP_TYPE_NAME,
		PRODUCT.PDT_OPORTUNITY_DATE_ACCORDED,
		PRODUCT.PDT_OPORTUNITY_PTO_REF,
		PRODUCT.PDT_OPORTUNITY_DAYS,
		PRODUCT.PDT_OPORTUNITY_HOURS,
		PRODUCT.PDT_OPORTUNITY_MINUTES,
		PRODUCT.GOAL_TYPE_ID,
        GOAL_TYPE.GOAL_TYPE_NAME,
		PRODUCT.GOAL_QUANTITY_MONTH,
		PRODUCT.GOAL_POBLATION,
		PRODUCT.GOAL_CONFIABILITY_INDEX,
        GOAL_CONFIABILITY_INDEX.INDEX_VALUE,
		PRODUCT.GOAL_SAMPLES
FROM PRODUCT 
LEFT JOIN PROCESS_N0 ON PRODUCT.PROC_N0_ID = PROCESS_N0.PROC_N0_ID
LEFT JOIN PROCESS_N1 ON PRODUCT.PROC_N1_ID = PROCESS_N1.PROC_N1_ID
LEFT JOIN PROCESS_N2 ON PRODUCT.PROC_N2_ID = PROCESS_N2.PROC_N2_ID
LEFT JOIN PROCESS_N3 ON PRODUCT.PROC_N3_ID = PROCESS_N3.PROC_N3_ID
LEFT JOIN OPORTUNITY_TYPE ON PRODUCT.PDT_OPORTUNITY_TYPE = OPORTUNITY_TYPE.OP_TYPE_ID
LEFT JOIN GOAL_TYPE ON PRODUCT.GOAL_TYPE_ID = GOAL_TYPE.GOAL_TYPE_ID
LEFT JOIN GOAL_CONFIABILITY_INDEX ON PRODUCT.GOAL_CONFIABILITY_INDEX = GOAL_CONFIABILITY_INDEX.ID_INDEX;


COMMIT;