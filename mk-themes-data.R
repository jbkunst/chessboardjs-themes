rm(list = ls())
library("knitr")
library("magrittr")
library("plyr")
library("tools")
library("jsonlite")
library("V8")  


#### Creating jss ####
folders <-  dir("chesspieces/", full.names = FALSE)
folders

dic <- llply(folders, function(folder){
  # folder <- sample(folders, 1)
    pieces <- dir(file.path("chesspieces", folder), full.names = FALSE)
    uris <- llply(pieces, function(piece, foldert = folder){
      # piece <- sample(pieces, size = 1)
      image_uri(file.path("chesspieces", foldert, piece))
    })
    names(uris) <- file_path_sans_ext(pieces)
    uris
})

names(dic) <- folders


files <- dir("chesspieces/", recursive = TRUE, full.names = TRUE)

js <- toJSON(dic, pretty = TRUE) 



ct <- new_context()
ct$assign("chssbrdths", JS(js))

ct$get("chssbrdths['alpha']['wR']") == ct$get("chssbrdths")$alpha$wR

js <- paste("var chssbrdths = ", js)

writeLines(js, con = "chessboardjs.themes.data.js")


fncs <- laply(folders, function(folder){
  template <- "{{ name }}_theme = function(piece){ return chssbrdths[\"{{ name }}\"][piece][0]; };"
  whisker.render(template, list(name = folder))
  })

ct$eval(JS(fncs[1]))

ct$eval(JS("alpha_theme('bB')"))  == dic$alpha$bB

writeLines(fncs, con = "chessboardjs.themes.js")

# "python -m SimpleHTTPServer 8080"




