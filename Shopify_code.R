library(tidyr)
library(tidyverse)
library(magrittr)
library(tidyselect)

data = read_csv("Shopify_dataset.csv")
data = data %>% mutate("Order_avg" = order_amount / total_items)
mean(data$Order_avg)
