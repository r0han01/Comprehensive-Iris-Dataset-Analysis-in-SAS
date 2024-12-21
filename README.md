# Iris Dataset Analysis in SAS
- Below are the visualizations and analyses performed on the Iris dataset, showcasing descriptive statistics, distributions, clustering, and PCA results
- ![download](https://github.com/user-attachments/assets/87036b06-7b53-4dbe-9fd4-c7d8f5107ee6)
- ![download](https://github.com/user-attachments/assets/b4a0a6a9-f593-4d4a-9fb5-1f9e7b9d8650)
- ![download](https://github.com/user-attachments/assets/b6ca4d11-0413-4f1b-a210-aa89a756b143)
- ![download](https://github.com/user-attachments/assets/78afd518-e9b2-4911-8725-cd8b2d3a831f)
- ![download](https://github.com/user-attachments/assets/94e0158a-2a42-42fc-837b-134e5cd1bc0f)
- ![download](https://github.com/user-attachments/assets/71560afb-1763-4486-a441-7cafa87c0ced)


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

---

## **4. Frequency Distribution of Species**
- Displayed a count of each species to understand the dataset's class distribution.

---

## **5. Data Summary by Species**
- Generated summary statistics grouped by species to explore variations.

---

## **6. Pairwise Correlation Analysis**
- Calculated correlations between numeric variables to understand relationships.

---

## **7. Adding New Variables**
- Created additional features:
  - **Sepal Area:** Calculated as `SepalLength * SepalWidth`.
  - **Petal Area:** Calculated as `PetalLength * PetalWidth`.
- These features provide insights into the size-based characteristics of flowers.

---

## **8. Scatter Plot Matrix**
- Created scatter plots for all numeric variables, grouped by species, to visualize relationships and clustering.

---

## **9. Box Plots for Sepal and Petal Measurements**
- Visualized distributions of:
  - **Sepal Length by Species**
  - **Petal Length by Species**
- Box plots highlight differences across species.

---

## **10. Histograms for Sepal and Petal Lengths**
- Plotted histograms with density curves for:
  - **Sepal Length**
  - **Petal Length**
- These distributions were grouped by species.

---

## **11. Principal Component Analysis (PCA)**
- Reduced dimensionality of the dataset and plotted the first two principal components to visualize clustering.

---

## **12. Clustering Analysis**
- Performed clustering to group flowers into three clusters based on their features.
- Plotted clusters using Sepal dimensions.

---

## **13. Correlation Heatmap**
- Visualized correlations between numeric variables in a heatmap for easy interpretation.

---

## **Conclusion**
This analysis demonstrates the power of SAS in performing a complete exploratory data analysis, from data preparation to advanced visualizations like PCA and clustering. The insights derived can be leveraged for further statistical modeling or machine learning tasks.
