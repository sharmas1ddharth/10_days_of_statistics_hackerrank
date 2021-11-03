con <- file("stdin", open="r")
data <- readLines(con)
df <- data[2]

df <- strsplit(df, " ")
df <- as.numeric(unlist(df))

df_mean <- mean(df)
df_median <- median(df)

getmode <- function(x)
{
  library('plyr')
  count<- count(x)
  max_freq <- max(count[,2])
  position <- which(count[,2]== max_freq)
  list_mode <- count[position[1]:position[length(position)],1]
  min(list_mode)
}


cat(df_mean, df_median, getmode(df), sep="\n")