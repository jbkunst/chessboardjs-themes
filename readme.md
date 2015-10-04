# Chessboardjs Themes

A differents set of pieces themes for *chessboardjs*. No images requiered.

## Live Version

See the themes in this [link](https://cdn.rawgit.com/jbkunst/chessboardjs-themes/master/index.html). 

## Why this

For necessity I needed remove images requiriments for pieces, so an alternative was turn 
image to a data-uri format.

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

1. Alpha `alpha_theme`.

![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/alpha/bB.png)
![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/alpha/wQ.png)

1. Wikipedia `wikipedia_theme`.

![](chesspieces/wikipedia/alpha/bB.png]
![](chesspieces/wikipedia/alpha/wQ.png]

1. USCF `uscf_theme`.
1. Symbol `symbol_theme`.
1. Dilena `dilena_theme`. This is a Chess Artwork for Pieces by [Daniela Di Lena](http://www.dilena.de/161491/1618285/work/chess-pieces-and-board).

## To Do

1. Color Themes: Create CSS themes or implement a easy way to add color via js function.
2. More pieces.