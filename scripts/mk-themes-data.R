rm(list = ls())
library("knitr")
library("whisker")
library("magrittr")
library("plyr")
library("tools")
library("jsonlite")
library("V8")  


#### Creating jss ####
dir("chesspieces/", recursive = TRUE, full.names = TRUE)
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



# Test
js <- toJSON(dic, pretty = TRUE) 

fncs <- laply(folders, function(folder){
  template <- "{{ name }}_piece_theme = function(piece){ return chsspieces[\"{{ name }}\"][piece][0]; };"
  whisker.render(template, list(name = folder))
})

ct <- new_context()
ct$assign("chsspieces", JS(js))
ct$get("chsspieces['alpha']['wR']") == ct$get("chsspieces")$alpha$wR

ct$eval(JS(fncs[1]))

ct$eval(JS("alpha_piece_theme('bB')"))  == dic$alpha$bB


# boardthemes
boardthemes <- list()
boardthemes$chess24 <- c("#9E7863", "#633526")
boardthemes$metro <- c("#EFEFEF", "#FFFFFF")
boardthemes$leipzig <- c("#FFFFFF", "#E1E1E1")
boardthemes$wikipedia <- c("#D18B47", "#FFCE9E")
boardthemes$dilena <- c("#FFE5B6", "#B16228")
boardthemes$uscf <- c("#C3C6BE", "#727FA2")
boardthemes$symbol <- c("#FFFFFF", "#58AC8A")



boardthemes



boardthemesjs <- laply(names(boardthemes), function(x){ # x <- "leipzig_theme_board"
  template <- "{{ name }}_board_theme = ['{{ colw }}', '{{ colb }}'];"
  whisker.render(template, list(name = x, colw = boardthemes[[x]][1], colb = boardthemes[[x]][2]))
})


# Write js files
js <- paste("var chsspieces = ", js)
writeLines(js, con = "chessboardjs-themes-pieces.js")
writeLines(fncs, con = "chessboardjs-themes-pieces-fns.js")
writeLines(boardthemesjs, con = "chessboardjs-themes-board.js")


# Join in one js file
chssboardjsthemes <- paste(c(fncs, "", boardthemesjs, "", js))
writeLines(chssboardjsthemes, con = "chessboardjs-themes.js")

