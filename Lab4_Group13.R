library(plotly)

pricesnearn <-read.delim("prices-and-earnings.txt",stringsAsFactors = FALSE)
pricesnearn <- pricesnearn[,c(1,2,5,6,7,9,10,16,17,18,19)]

row.names(pricesnearn) <- pricesnearn$City

plot_ly( height=1000,
    x = colnames(pricesnearn),
    y = rownames(pricesnearn),
    z = scale(pricesnearn[, c(-1)]),
    type = "heatmap",
    colors = colorRamp(c("yellow", "red")),
    colorbar = list(title = "Color-Scale")
) %>% layout(title="Heatmap of Countries")


