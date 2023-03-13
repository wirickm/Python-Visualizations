-- Removes all Serology tests -- 
SET SQL_SAFE_UPDATES = 0;
DELETE FROM COVID.COVID
WHERE lab_test_type IN ('Total Antibody', 'IgG Antibody', 'IgM Antibody', 'Antibody Neutralization');
-- Create the COVID.QA table
CREATE TABLE IF NOT EXISTS COVID.QA LIKE COVID.COVID;

-- Move the duplicate rows from COVID.COVID to COVID.QA
INSERT INTO COVID.QA
SELECT *
FROM COVID.COVID
WHERE patient_record_number IN (
  SELECT patient_record_number
  FROM COVID.COVID
  GROUP BY patient_record_number
  HAVING COUNT(*) > 1
);
DELETE FROM COVID.COVID
WHERE patient_record_number IN (
  SELECT p.patient_record_number
  FROM (
    SELECT patient_record_number
    FROM COVID.COVID
    GROUP BY patient_record_number
    HAVING COUNT(*) > 1
  ) p
);

SET SQL_SAFE_UPDATES = 1;

