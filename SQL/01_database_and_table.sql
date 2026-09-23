CREATE DATABASE pharma_medicine_analysis;

USE pharma_medicine_analysis;

CREATE TABLE medicine_details (
    medicine_name VARCHAR(255),
    composition TEXT,
    uses TEXT,
    side_effects TEXT,
    image_url TEXT,
    manufacturer VARCHAR(255),
    excellent_review_percent DECIMAL(5,2),
    average_review_percent DECIMAL(5,2),
    poor_review_percent DECIMAL(5,2)
);
