/* Define the library to store the dataset */
libname mylib '/home/u64110468/Practice SAS/Iris Dataset';  /* Change to your directory */

/* Reference the dataset from the URL */
filename iris_url url 'https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data';

/* Import the dataset from the URL */
proc import datafile=iris_url
            out=mylib.iris
            dbms=csv
            replace;
    getnames=no;  /* No headers in the original file */
run;

/* Manually assign proper column names */
data mylib.iris;
    set mylib.iris;
    rename 
        var1 = SepalLength
        var2 = SepalWidth
        var3 = PetalLength
        var4 = PetalWidth
        var5 = Species;
run;

/* View the data with proper column names */
proc print data=mylib.iris;
run;

/* Descriptive Statistics */
proc means data=mylib.iris N Mean StdDev Min Max;
    var SepalLength SepalWidth PetalLength PetalWidth;
run;

/* Check for Missing Data */
proc means data=mylib.iris nmiss;
   var SepalLength SepalWidth PetalLength PetalWidth;
run;

/* Impute Missing Values with Mean */
proc stdize data=mylib.iris out=mylib.iris_imputed reponly;
   var SepalLength SepalWidth PetalLength PetalWidth;
run;

/* Frequency distribution of Species */
proc freq data=mylib.iris;
   tables Species / nocum;
run;

/* Summary statistics by Species */
proc means data=mylib.iris N Mean StdDev Min Max;
    class Species;
    var SepalLength SepalWidth PetalLength PetalWidth;
run;

/* Pairwise correlation between numeric variables */
proc corr data=mylib.iris;
    var SepalLength SepalWidth PetalLength PetalWidth;
run;

/* Add new columns for Sepal Area and Petal Area */
data mylib.iris_extended;
    set mylib.iris;
    SepalArea = SepalLength * SepalWidth;
    PetalArea = PetalLength * PetalWidth;
run;

/* Display the new dataset */
proc print data=mylib.iris_extended;
run;

/* Remove the last row with missing values */
data mylib.iris_clean;
    set mylib.iris;
    if SepalLength = . and SepalWidth = . and PetalLength = . and PetalWidth = . then delete;
run;

/* View the cleaned dataset */
proc print data=mylib.iris_clean;
run;

/* Histogram for Sepal Length */
proc sgplot data=mylib.iris;
    histogram SepalLength / group=Species transparency=0.5;
    density SepalLength / group=Species type=kernel;
    title "Distribution of Sepal Length by Species";
run;

/* Histogram for Petal Length */
proc sgplot data=mylib.iris;
    histogram PetalLength / group=Species transparency=0.5;
    density PetalLength / group=Species type=kernel;
    title "Distribution of Petal Length by Species";
run;

/* Principal Component Analysis */
proc princomp data=mylib.iris out=mylib.iris_pca;
    var SepalLength SepalWidth PetalLength PetalWidth;
run;

/* Scatter plot of first two principal components */
proc sgplot data=mylib.iris_pca;
    scatter x=Prin1 y=Prin2 / group=Species;
    title "PCA Scatter Plot (Prin1 vs Prin2)";
run;

/* Clustering analysis */
proc fastclus data=mylib.iris maxclusters=3 out=mylib.iris_clusters;
    var SepalLength SepalWidth PetalLength PetalWidth;
run;

/* Scatter plot of clusters */
proc sgplot data=mylib.iris_clusters;
    scatter x=SepalLength y=SepalWidth / group=Cluster;
    title "Clustering Analysis: Sepal Dimensions";
run;

/* Create a dataset for correlations */
proc corr data=mylib.iris noprint outp=corr_matrix;
    var SepalLength SepalWidth PetalLength PetalWidth;
run;

/* Heatmap of correlations */
proc sgplot data=corr_matrix;
    heatmapparm x=_NAME_ y=_TYPE_ color=CORR / colormodel=(blue white red);
    title "Correlation Heatmap";
run;


