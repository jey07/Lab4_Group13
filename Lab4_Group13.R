pricesnearn <-
  read.table(
    "prices-and-earnings.txt",
    fill = TRUE,
    header = TRUE,
    colClasses = c(
      rep(NA, 2),
      rep("NULL", 2),
      rep(NA, 3),
      rep("NULL", 1),
      rep(NA, 2),
      rep("NULL", 5),
      rep(NA, 4), rep("NULL",10)
    )
  )



pricesnearn1<-read.table("prices-and-earnings.txt",fill=TRUE,header=TRUE)