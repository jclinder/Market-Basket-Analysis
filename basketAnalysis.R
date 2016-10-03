#Produces a table of what percentage of customers who bought product X also bought product Y over any period of time

#Read table & examine data
setwd("C:/Users/jlinder/Documents/My Data Sources/cross_selling")
sales <- read.csv("ProductOrders.csv", header = TRUE)
head(sales)

#OPTIONAL: segment by a column, for instance "Status" to exclude orders that havevn't been invoiced or shipped
#sales <- sales[which(sales$Staus == Invoiced" | sales$Status == "Shipped"),]

#Pull list of all products
products <- levels(sales$Product)

#Table calculation and cleanup
cross_sales <- sapply(products, function(y) {

cust <- sales$Customer[which(sales$Product == y)]
saleSubset <- subset(sales, Customer %in% cust)
length(unique(saleSubset$Customer))

temp <- sapply(products, function(x) length(unique(saleSubset$Customer[which(saleSubset$Product %in% x)]))/(length(unique(saleSubset$Customer))), USE.NAMES = FALSE)

})

rownames(cross_sales) <- products

#write csv
#setwd("C:/")
write.csv(cross_sales, file = "output.csv", row.names=TRUE, na="")
