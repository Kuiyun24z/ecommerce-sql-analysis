# E-commerce SQL Analysis

## Overview
This project analyzes the Online Retail dataset using MySQL and DataGrip.

The project focuses on:
- Monthly sales trends
- High-value customers
- Repeat customers
- RFM customer segmentation

## Tools
- MySQL
- DataGrip
- SQL

## Dataset
Online Retail Dataset (~500,000 transactions)

## Data Cleaning
Removed:
- Missing CustomerID
- Negative Quantity
- Invalid UnitPrice

## Analysis

### 1. Monthly Revenue Trend
Analyzed monthly sales revenue trends over time.

### 2. High-Value Customers
Identified top-spending customers using total purchase amount.

### 3. Repeat Customers
Detected repeat customers based on distinct invoice counts.

### 4. RFM Segmentation
Segmented customers using:
- Recency
- Frequency
- Monetary Value

## Key Findings
- Customer spending follows a long-tail distribution.
- A small number of customers contribute a large proportion of revenue.
- Repeat customers are strongly associated with high monetary value.

## Project Structure
- `analysis.sql` : SQL queries
- `*.csv` : analysis outputs
- `screenshots/` : query screenshots