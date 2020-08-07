CREATE OR REPLACE VIEW DIVISION_N1_VIEW AS
SELECT DIVISION_N1.DIV_N1_ID,DIVISION_N1.DIV_N1_NAME,DIVISION_N1.AREA_ID,AREA.AREA_NAME
FROM DIVISION_N1 LEFT JOIN AREA ON DIVISION_N1.AREA_ID = AREA.AREA_ID;
COMMIT;

CREATE OR REPLACE VIEW DIVISION_N2_VIEW AS
SELECT DIVISION_N2.DIV_N2_ID, DIVISION_N2.DIV_N2_NAME, DIVISION_N2.DIV_N1_ID, DIVISION_N1.DIV_N1_NAME
FROM DIVISION_N2 LEFT JOIN DIVISION_N1 ON DIVISION_N2.DIV_N1_ID = DIVISION_N1.DIV_N1_ID;
COMMIT;

CREATE OR REPLACE VIEW DIVISION_N3_VIEW AS
SELECT DIVISION_N3.DIV_N3_ID, DIVISION_N3.DIV_N3_NAME, DIVISION_N3.DIV_N2_ID, DIVISION_N2.DIV_N2_NAME
FROM DIVISION_N3 LEFT JOIN DIVISION_N2 ON DIVISION_N3.DIV_N2_ID = DIVISION_N2.DIV_N2_ID;
COMMIT;