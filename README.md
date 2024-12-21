# Iris Dataset Analysis in SAS

This project provides a comprehensive exploration and analysis of the famous Iris dataset using SAS. Below is a summary of the steps performed and insights derived.

---

## **1. Library and Data Setup**
- Defined a library to store the dataset.
- Imported the Iris dataset from an online source.
- Manually assigned appropriate column names for clarity.

---

## **2. Descriptive Statistics**
- Calculated overall descriptive statistics (e.g., mean, standard deviation, min, max) for numeric variables.
  - **Put Image: Descriptive Statistics Table**

---

## **3. Missing Data Analysis**
- Checked for missing values in the dataset.
- Imputed missing values using the mean of respective columns.
  - **Put Image: Missing Data Check and Imputation**

---

## **4. Frequency Distribution of Species**
- Displayed a count of each species to understand the dataset's class distribution.
  - **Put Image: Frequency Distribution Chart**

---

## **5. Data Summary by Species**
- Generated summary statistics grouped by species to explore variations.
  - **Put Image: Summary Statistics by Species**

---

## **6. Pairwise Correlation Analysis**
- Calculated correlations between numeric variables to understand relationships.
  - **Put Image: Correlation Matrix**

---

## **7. Adding New Variables**
- Created additional features:
  - **Sepal Area:** Calculated as `SepalLength * SepalWidth`.
  - **Petal Area:** Calculated as `PetalLength * PetalWidth`.
- These features provide insights into the size-based characteristics of flowers.
  - **Put Image: New Dataset with Added Columns**

---

## **8. Scatter Plot Matrix**
- Created scatter plots for all numeric variables, grouped by species, to visualize relationships and clustering.
  - **Put Image: Scatter Plot Matrix**

---

## **9. Box Plots for Sepal and Petal Measurements**
- Visualized distributions of:
  - **Sepal Length by Species**
  - **Petal Length by Species**
- Box plots highlight differences across species.
  - **Put Image: Box Plots**

---

## **10. Histograms for Sepal and Petal Lengths**
- Plotted histograms with density curves for:
  - **Sepal Length**
  - **Petal Length**
- These distributions were grouped by species.
  - **Put Image: Histograms**

---

## **11. Principal Component Analysis (PCA)**
- Reduced dimensionality of the dataset and plotted the first two principal components to visualize clustering.
  - **Put Image: PCA Scatter Plot**

---

## **12. Clustering Analysis**
- Performed clustering to group flowers into three clusters based on their features.
- Plotted clusters using Sepal dimensions.
  - **Put Image: Clustering Scatter Plot**

---

## **13. Correlation Heatmap**
- Visualized correlations between numeric variables in a heatmap for easy interpretation.
  - **Put Image: Heatmap of Correlations**

---

## **Conclusion**
This analysis demonstrates the power of SAS in performing a complete exploratory data analysis, from data preparation to advanced visualizations like PCA and clustering. The insights derived can be leveraged for further statistical modeling or machine learning tasks.
