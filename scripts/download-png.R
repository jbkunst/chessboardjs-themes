rm(list = ls())
library("httr")
library("whisker")
library("plyr")
library("magrittr")

pieces <- expand.grid(color = c("white", "black"), piece = c("p", "r", "b", "k", "q", "n"))

#### Download from chess24 ####
dir.create("chesspieces/chess24")

url_template <- "https://d16lfcqjkxdsjm.cloudfront.net/assets/887a54bd2119bf34a0759ec1b6a1967a/images/chess/themes/pieces/chess24/{{ color }}/{{ piece }}.png"

l_ply(seq(nrow(pieces)), function(i){ # i <- 2
  
  colr <- pieces$color[i]
  piec <- pieces$piece[i]
  
  colr2 <- ifelse(colr == "white", "w", "b")
  piec2 <- toupper(piec)
  
  url_template %>% 
    whisker.render(list(color = colr, piece = piec)) %>% 
    GET(write_disk(sprintf("chesspieces/chess24/%s%s.png", colr2, piec2), overwrite = TRUE))
    
}, .progress = "text")

#### Download from WindowsDev ####
# https://dev.windows.com/en-us/microsoft-edge/testdrive/demos/chess/

dir.create("chesspieces/metro")

url_template <- "https://dev.windows.com/en-us/microsoft-edge/testdrive/demos/chess/images/pieces/{{ color }}{{ piece }}.png"

l_ply(seq(nrow(pieces)), function(i){ # i <- 2
  
  colr <- pieces$color[i]
  piec <- pieces$piece[i]
  
  colr2 <- ifelse(colr == "white", "w", "b")
  piec2 <- toupper(piec)
  
  url_template %>% 
    whisker.render(list(color = colr2, piece = piec2)) %>% 
    GET(write_disk(sprintf("chesspieces/metro/%s%s.png", colr2, piec2), overwrite = TRUE))
  
}, .progress = "text")







