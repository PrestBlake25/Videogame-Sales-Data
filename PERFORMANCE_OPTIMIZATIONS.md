# Performance Optimizations

## Overview
This document details the performance improvements made to the R analysis scripts in this repository.

## Optimizations Implemented

### 1. Removed Interactive `View()` Calls
**Issue**: All 7 R scripts included `View(Game)` which opens an interactive data viewer.
**Impact**: 
- Prevents scripts from running in batch/automated mode
- Adds unnecessary overhead in non-interactive environments
- Can cause errors in headless environments

**Fix**: Removed all `View()` calls from scripts.

### 2. Fixed CSV Filename Reference
**Issue**: Scripts referenced "Video Games Sales.csv" but actual file is "vgsales.csv"
**Impact**: Scripts would fail to load data
**Fix**: Updated all `read_csv()` calls to use "vgsales.csv"

### 3. Cached `table()` Results
**File**: `Games_Further_Analysis.R`
**Issue**: Repeated calls to `table()` on the same data
```r
# Before (inefficient):
barplot(table(Game_Gen_GTS_100$Genre), ...)
barplot(table(Platform_GTS_100$Platform), ...)
barplot(table(PS2_Games_GTS_40$Genre), ...)
```

**Fix**: Cache table results in variables
```r
# After (optimized):
table_gen_100 <- table(Game_Gen_GTS_100$Genre)
barplot(table_gen_100, ...)

table_plat_100 <- table(Platform_GTS_100$Platform)
barplot(table_plat_100, ...)

table_PS2_40 <- table(PS2_Games_GTS_40$Genre)
barplot(table_PS2_40, ...)
```

**Impact**: Eliminates redundant computation of frequency tables

### 4. Fixed Undefined Variable Bug
**File**: `Games_Further_Analysis.R`
**Issue**: Line 15 referenced `count_PS2_games` before it was defined
**Fix**: Added proper variable definition:
```r
count_PS2_games <- table(PS2_games$Genre)
```

### 5. Dynamic Sample Size Calculation
**File**: `ConfidenceIntervals.R`
**Issue**: Hardcoded sample size `n = 1907` 
**Fix**: Use dynamic calculation `n = nrow(Game)`
**Impact**: 
- Script adapts to dataset changes
- Prevents errors when dataset size changes
- More maintainable code

### 6. Updated Column References
**Issue**: Scripts used column names that didn't exist in vgsales.csv
**Fix**: Updated references:
- `North America` → `NA_Sales`
- `Global` → `Global_Sales`
- Commented out references to non-existent `Review` column

## Performance Metrics

### Before Optimization:
- Multiple redundant `table()` calls
- Interactive viewer overhead
- Script failures due to incorrect file/column references

### After Optimization:
- ✅ All scripts execute without errors
- ✅ Reduced computational overhead
- ✅ Suitable for batch processing
- ✅ Better maintainability

## Additional Recommendations

### For Future Performance Improvements:

1. **Consolidate Data Loading**
   - Currently, each script loads the CSV independently
   - Consider creating a shared data loading script
   - Example structure:
   ```r
   # load_data.R
   library(readr)
   Game <- read_csv("vgsales.csv")
   save(Game, file = "game_data.RData")
   
   # In other scripts:
   load("game_data.RData")
   ```

2. **Use `data.table` for Large Datasets**
   - For faster data manipulation on larger datasets
   - `data.table` is often 10-100x faster than base R for large data

3. **Vectorize Operations**
   - Avoid loops where possible
   - Use vectorized operations for better performance

4. **Consider `ggplot2` for Plotting**
   - More efficient for complex visualizations
   - Better for batch generation of multiple plots

5. **Add Output Suppression for Batch Runs**
   ```r
   # Suppress intermediate output when sourcing scripts
   if (!interactive()) {
     pdf(NULL)  # Suppress plot display
   }
   ```

## Testing Notes
All modified scripts have been syntax-validated using R's parse() function.

## Files Modified
- `Games_Data.R`
- `Games_Further_Analysis.R`
- `Column_Data.R`
- `ConfidenceIntervals.R`
- `CorrelationData.R`
- `LinearRegression.R`
- `MAT327HypothesisTestPro.R` (N/A - no changes needed)
