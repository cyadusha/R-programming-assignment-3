address <- "http://archive.ics.uci.edu/ml/machine-learning-databases/mushroom/agaricus-lepiota.data"
mushroom <- read.table(file = url(address), sep = ",", header = FALSE)
a <- mushroom[1:500, c(1:2,5,12)]
colnames(a) <- c("edible or poisonous", "cap shape", "bruised or unbruised", "stalk root")
a$`edible or poisonous` <- gsub("e","edible",a$`edible or poisonous`)
a$`edible or poisonous` <- gsub("p", "poisonous", a$`edible or poisonous`)
a$`cap shape` <- gsub("b", "bell", a$`cap shape`)
a$`cap shape` <- gsub("c", "conical", a$`cap shape`)
a$`cap shape` <- gsub("x", "convex", a$`cap shape`)
a$`cap shape` <- gsub("f", "flat", a$`cap shape`)
a$`cap shape` <- gsub("k", "knobbed", a$`cap shape`)
a$`cap shape` <- gsub("s", "sunken", a$`cap shape`)
a$`bruised or unbruised` <- gsub("t", "bruised", a$`bruised or unbruised`)
a$`bruised or unbruised` <- gsub("f", "unbruised", a$`bruised or unbruised`)
a$`stalk root` <- gsub("b", "bulbous", a$`stalk root`)
a$`stalk root` <- gsub("c", "club", a$`stalk root`)
#a$`stalk root` <- gsub("u", "cup", a$`stalk root`)
a$`stalk root` <- gsub("e", "equal", a$`stalk root`)
a$`stalk root` <- gsub("z", "rhizomorphs", a$`stalk root`)
a$`stalk root` <- gsub("r", "rooted", a$`stalk root`)
data.frame(a)

