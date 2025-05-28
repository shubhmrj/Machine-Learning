# =========================
# Assignment: Data Handling and Visualization in R
# =========================

# ---- 3(a) Import CSV, XLSX, Text ----

# Install and load required package
if (!require(readxl)) install.packages("readxl")
library(readxl)

# Read CSV file
csv_data <- read.csv("yourfile.csv")
print("CSV Data:")
print(head(csv_data))

# Read XLSX file
xlsx_data <- read_excel("yourfile.xlsx")
print("XLSX Data:")
print(head(xlsx_data))

# Read Text file
txt_data <- read.table("yourfile.txt", header = TRUE, sep = ",")
print("Text File Data:")
print(head(txt_data))

# ---- 3(b) Extract Data from Data Frame ----

# Load built-in dataset
data(mtcars)

# Extract specific columns
mpg_hp <- mtcars[, c("mpg", "hp")]
print("Selected Columns (mpg, hp):")
print(head(mpg_hp))

# Extract first 5 rows
first_five_rows <- mtcars[1:5, ]
print("First Five Rows:")
print(first_five_rows)

# Extract cars with mpg > 20
high_mpg_cars <- subset(mtcars, mpg > 20)
print("Cars with MPG > 20:")
print(high_mpg_cars)

# ---- 3(c) Subset and Aggregate Dataset ----

# Subset: Cars with hp > 100
subset_hp <- subset(mtcars, hp > 100)
print("Subset (hp > 100):")
print(subset_hp)

# Aggregate: Average mpg by number of cylinders
agg_mtcars <- aggregate(mpg ~ cyl, data = mtcars, FUN = mean)
print("Aggregated Average MPG by Cylinders:")
print(agg_mtcars)

# ---- 3(d) Visualization: Piechart, Barchart, Histogram ----

# Pie Chart for Cylinders
cyl_count <- table(mtcars$cyl)
pie(cyl_count, 
    main = "Pie Chart of Cylinders", 
    col = rainbow(length(cyl_count)))

# Bar Chart for Cylinders
barplot(cyl_count, 
        main = "Bar Chart of Cylinders",
        xlab = "Number of Cylinders", 
        ylab = "Count",
        col = "skyblue")

# Histogram of MPG
hist(mtcars$mpg, 
     main = "Histogram of Miles Per Gallon (MPG)", 
     xlab = "Miles Per Gallon",
     col = "lightgreen", 
     border = "black")

# =========================
# End of Script
# =========================
