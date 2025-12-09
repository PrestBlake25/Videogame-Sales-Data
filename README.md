# Video Game Sales Analysis Project

## Project Introduction

This repository presents a comprehensive statistical analysis of global video game sales data, developed as the final project for **MAT 327: Statistical Inference** at Lehman College. The project applies core concepts from statistical inference—including confidence intervals, hypothesis testing, and exploratory data analysis—to investigate patterns in video game sales across platforms, genres, regions, and time periods.

## Dataset Overview

The analysis uses the publicly available **Video Game Sales** dataset, which contains detailed records of video games that sold over 100,000 copies worldwide. Key variables include:

| Variable | Description |
|----------|-------------|
| `Name` | Game title |
| `Platform` | Console/platform (PS2, Wii, X360, DS, etc.) |
| `Year` | Release year |
| `Genre` | Game category (Action, Sports, Shooter, etc.) |
| `Publisher` | Publishing company |
| `NA_Sales`, `EU_Sales`, `JP_Sales`, `Other_Sales` | Regional sales (millions of units) |
| `Global_Sales` | Total worldwide sales |

This dataset provides thousands of observations spanning decades of gaming history, making it ideal for statistical inference.

## Research Questions

The project addresses key questions such as:

- Does the proportion of sports video games exceed 10%?
- What is the correlation between Global Sales and Review Scores?

## Technical Approach

**Language:** R  
**Key Packages:** `tidyverse` (dplyr, ggplot2), base R statistics  

The workflow follows standard data science practices:
1. Data import and cleaning
2. Exploratory data visualization
3. Formal statistical inference (confidence intervals, hypothesis tests)
4. Interpretation of results

## Skills Demonstrated

- End-to-end statistical analysis in R
- Data wrangling with tidyverse
- Hypothesis testing and confidence interval construction
- Clear visualization and communication of statistical findings
- Reproducible research workflows

## Repository Structure
 - vgsales.csv # Raw dataset
 - GameSalesCharts/ # Generated plots
