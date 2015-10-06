# Chessboardjs Themes

A set of pieces themes for [*chessboardjs*](http://chessboardjs.com/) by [Chris Oakman](https://github.com/oakmac). No images requiered.

## Live Version

See the themes in this [link](https://rawgit.com/jbkunst/chessboardjs-themes/master/index.html). 

## Why this

In a project I was unable to use images so an alternative was turn 
image to a data-uri format (via R script, that was the fun part ;) ).

Other reson was have more pieces themes.

## How to use

1. Load `chessboard.js` and `chessboard.css` as usual.
2. Load `chessboardjs.themes.js` and `chessboardjs.themes.data.js`.
3. Use them using `pieceTheme` configuration option.

## Example Use

```
var board = ChessBoard('boardiv', {
  pieceTheme: symbol_theme,
  position: 'start'
});
```

## Themes

1. Wikipedia `wikipedia_theme`.

![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/wikipedia/bB.png)
![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/wikipedia/wQ.png)

1. Chess24 `chess24_theme`. This is from chess24.com site.

![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/chess24/bB.png)
![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/chess24/wQ.png)

1. Alpha `alpha_theme`.

![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/alpha/bB.png)
![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/alpha/wQ.png)

1. USCF `uscf_theme`.

![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/uscf/bB.png)
![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/uscf/wQ.png)


1. Symbol `symbol_theme`.

![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/symbol/bB.png)
![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/symbol/wQ.png)

1. Dilena `dilena_theme`. This is a Chess Artwork for Pieces by [Daniela Di Lena](http://www.dilena.de/161491/1618285/work/chess-pieces-and-board).

![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/dilena/bB.png)
![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/dilena/wQ.png)

1. Leipzig `leipzig_theme`. Source [here](http://www.enpassant.dk/chess/fonteng.htm).

![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/leipzig/bB.png)
![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/leipzig/wQ.png)



## To Do

1. Color Themes: Create CSS themes or implement a easy way to add colors via js function.
2. More pieces.



