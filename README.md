# R-SalesData-Scripts

The basketAnalysis.R script takes a list of transactions and looks at how often a customer who bought product X also bought product Y at any point in time. Glance at the output.xlsx to see what the output looks like. For example, row 10 is Fruit Cocktail. When we look across the row to column F Chocolate and we see that 43% of customers who bought Fruit Cocktail also bought Chocolate.

You can set configure the script [setwd() and read.csv()] to read the included sample output ProductOrders.csv. This produces an output.csv matching the output.xlsx. I've added some conditional formatting to the output file to help with interpretation.

