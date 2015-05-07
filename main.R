library('keboola.r.luckyguess')

# run it
app <- LGApplication$new()
app$readConfig()
app$run()