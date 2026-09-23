USE pharma_medicine_analysis;

 --Total records--
SELECT COUNT(*) AS total_records
FROM medicine_details;

-- Unique medicine names
SELECT COUNT(DISTINCT medicine_name) AS unique_medicines
FROM medicine_details;

-- Exact duplicate records--
SELECT
    COUNT(*) AS total_records,
    COUNT(DISTINCT CONCAT_WS('|',
        medicine_name,
        composition,
        uses,
        side_effects,
        image_url,
        manufacturer,
        excellent_review_percent,
        average_review_percent,
        poor_review_percent
    )) AS unique_records
FROM medicine_details;

-- Missing manufacturer values--
SELECT COUNT(*) AS missing_manufacturer
FROM medicine_details
WHERE manufacturer IS NULL
   OR TRIM(manufacturer) = '';

-- Missing medicine names--
SELECT COUNT(*) AS missing_medicine_name
FROM medicine_details
WHERE medicine_name IS NULL
   OR TRIM(medicine_name) = '';

-- Invalid review percentages--
SELECT COUNT(*) AS invalid_review_records
FROM medicine_details
WHERE excellent_review_percent < 0
   OR excellent_review_percent > 100
   OR average_review_percent < 0
   OR average_review_percent > 100
   OR poor_review_percent < 0
   OR poor_review_percent > 100;

-- Review percentages should total 100%--
SELECT COUNT(*) AS invalid_review_total
FROM medicine_details
WHERE ROUND(
    excellent_review_percent
    + average_review_percent
    + poor_review_percent, 2
) <> 100;

-- Create clean table by removing exact duplicates--
CREATE TABLE medicine_details_clean AS
SELECT DISTINCT
    medicine_name,
    composition,
    uses,
    side_effects,
    image_url,
    manufacturer,
    excellent_review_percent,
    average_review_percent,
    poor_review_percent
FROM medicine_details;

-- Verify clean record count
SELECT COUNT(*) AS clean_records
FROM medicine_details_clean;
