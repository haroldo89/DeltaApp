CREATE OR REPLACE VIEW MEASURE_PERTINENCES_VIEW AS

	SELECT	PERT_MEASURE.MSR_ID,
			PRODUCT.PDT_ID,
			PRODUCT.PDT_SIGLA,
			MEASURE_PRODUCT.PDT_RAST_CODE,
			PERT_MEASURE.PERT_ID,
			PERTINENCES.PERT_DETAIL,
            PERT_MEASURE.PERT_VALUE,
            MEASURE_PRODUCT.AREA_ID,
            AREA.AREA_NAME,
            MEASURE_PRODUCT.DIV_N1_ID,
            DIVISION_N1.DIV_N1_NAME,
			MEASURE_PRODUCT.DIV_N2_ID,
            DIVISION_N2.DIV_N2_NAME,
			MEASURE_PRODUCT.DIV_N3_ID,
            DIVISION_N3.DIV_N3_NAME
	FROM PERT_MEASURE
    LEFT JOIN PERTINENCES ON PERTINENCES.PERT_ID = PERT_MEASURE.PERT_ID
    LEFT JOIN MEASURE_PRODUCT ON MEASURE_PRODUCT.MSR_ID = PERT_MEASURE.MSR_ID
    LEFT JOIN PRODUCT ON PRODUCT.PDT_ID = MEASURE_PRODUCT.PDT_ID
    LEFT JOIN AREA ON AREA.AREA_ID = MEASURE_PRODUCT.AREA_ID
    LEFT join DIVISION_N1 ON DIVISION_N1.DIV_N1_ID = MEASURE_PRODUCT.DIV_N1_ID
    LEFT join DIVISION_N2 ON DIVISION_N2.DIV_N2_ID = MEASURE_PRODUCT.DIV_N2_ID
    LEFT join DIVISION_N3 ON DIVISION_N3.DIV_N3_ID = MEASURE_PRODUCT.DIV_N3_ID;

COMMIT;
