USE pharma_medicine_analysis;

-- View 1: Manufacturer summary
CREATE VIEW vw_manufacturer_summary AS
SELECT
    manufacturer,
    COUNT(DISTINCT medicine_name) AS medicine_count,
    ROUND(AVG(excellent_review_percent), 2) AS avg_excellent_review,
    ROUND(AVG(average_review_percent), 2) AS avg_average_review,
    ROUND(AVG(poor_review_percent), 2) AS avg_poor_review
FROM medicine_details_clean
GROUP BY manufacturer;


-- View 2: Medicine review performance
CREATE VIEW vw_review_performance AS
SELECT
    medicine_name,
    manufacturer,
    excellent_review_percent,
    average_review_percent,
    poor_review_percent
FROM medicine_details_clean;


-- View 3: Medicine portfolio
CREATE VIEW vw_medicine_portfolio AS
SELECT
    medicine_name,
    manufacturer,
    composition,
    uses,
    side_effects,
    excellent_review_percent,
    average_review_percent,
    poor_review_percent
FROM medicine_details_clean;


-- View 4: Composition summary
CREATE VIEW vw_composition_summary AS
SELECT
    composition,
    COUNT(DISTINCT medicine_name) AS medicine_count
FROM medicine_details_clean
WHERE composition IS NOT NULL
  AND TRIM(composition) <> ''
GROUP BY composition;


-- View 5: Uses summary
CREATE VIEW vw_uses_summary AS
SELECT
    uses,
    COUNT(DISTINCT medicine_name) AS medicine_count
FROM medicine_details_clean
WHERE uses IS NOT NULL
  AND TRIM(uses) <> ''
GROUP BY uses;


-- Verify created views
SHOW FULL TABLES
WHERE Table_type = 'VIEW';
