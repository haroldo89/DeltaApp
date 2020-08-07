CREATE OR REPLACE VIEW PERTINENCES_BY_MEASURE_VIEW AS

	SELECT 	PERT_MEASURE.MSR_ID,
			MEASURE_PRODUCT.PDT_RAST_CODE,
			PERT_MEASURE.PERT_ID,
            PERTINENCES.PERT_DETAIL,
			PERT_MEASURE.PERT_VALUE
	FROM DeltaBD.PERT_MEASURE
    LEFT JOIN PERTINENCES ON PERTINENCES.PERT_ID = PERT_MEASURE.PERT_ID
    LEFT JOIN MEASURE_PRODUCT ON MEASURE_PRODUCT.MSR_ID = PERT_MEASURE.MSR_ID;

COMMIT;