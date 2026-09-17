create database healthcare;
use healthcare; 

-- total number of patient encounters --
SELECT patient_nbr, COUNT(*) AS encounters
FROM diabetic_data
GROUP BY patient_nbr;

SELECT COUNT(*) AS total_encounters
FROM diabetic_data;

-- top 10 most frequent diagnoses--
SELECT diagnosis, COUNT(*) AS frequency
FROM (
    SELECT diag_1 AS diagnosis FROM diabetic_data
    UNION ALL
    SELECT diag_2 AS diagnosis FROM diabetic_data
    UNION ALL
    SELECT diag_3 AS diagnosis FROM diabetic_data
) AS all_diags
WHERE diagnosis IS NOT NULL
  AND diagnosis <> '?'
GROUP BY diagnosis
ORDER BY frequency DESC
LIMIT 10;

-- the average length of hospital stay for each admission type --
SELECT 
    admission_type_id,
    AVG(time_in_hospital) AS avg_length_of_stay
FROM 
    diabetic_data
GROUP BY 
    admission_type_id
ORDER BY 
    avg_length_of_stay DESC;
    
--  the number of readmitted patients --
SELECT 
    COUNT(*) AS readmitted_patients
FROM 
    diabetic_data
WHERE 
    readmitted <> 'NO';
--  the percentage of total encounters that they represent --
SELECT
    (SELECT COUNT(*) 
     FROM diabetic_data 
     WHERE readmitted <> 'NO') AS readmitted_patients,
     
    COUNT(*) AS total_encounters,
    
    ( (SELECT COUNT(*) FROM diabetic_data WHERE readmitted <> 'NO') 
      / COUNT(*) ) * 100 AS readmission_percentage
FROM 
    diabetic_data;

--  the age distribution of patients --
SELECT 
    age,
    COUNT(*) AS patient_count
FROM 
    diabetic_data
GROUP BY 
    age
ORDER BY 
    age;
    
 --  the most common procedures performed during patient encounters --   
SELECT 
    num_procedures,
    COUNT(*) AS encounter_count
FROM 
    diabetic_data
GROUP BY 
    num_procedures
ORDER BY 
    encounter_count DESC;

-- the average number of medications prescribed for patients in each age group --
SELECT 
    age,
    ROUND(AVG(num_medications), 2) AS avg_medications
FROM 
    diabetic_data
GROUP BY 
    age
ORDER BY 
    age;

--  the distribution of readmission rates across different payer codes --
SELECT 
    payer_code,
    SUM(readmitted <> 'NO') AS readmitted_count,
    COUNT(*) AS total_encounters,
    ROUND((SUM(readmitted <> 'NO') / COUNT(*)) * 100, 2) AS readmission_rate_percent
FROM 
    diabetic_data
WHERE 
    payer_code IS NOT NULL
    AND payer_code <> '?'
GROUP BY 
    payer_code
ORDER BY 
    readmission_rate_percent DESC;

-- since payer code column doesnot have any info below showing the distribution of readmission rates across different age groups -- 
SELECT 
    age,
    SUM(readmitted <> 'NO') AS readmitted_count,
    COUNT(*) AS total_encounters,
    ROUND((SUM(readmitted <> 'NO') / COUNT(*)) * 100, 2) AS readmission_rate_percent
FROM 
    diabetic_data
GROUP BY 
    age
ORDER BY 
    age;



