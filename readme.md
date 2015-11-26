# Chessboardjs Themes

A set of themes for [*chessboardjs*](http://chessboardjs.com/) by [Chris Oakman](https://github.com/oakmac). No images requiered.

![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/img/theme_summary.png)

## Live Version

See the themes in this [link](https://rawgit.com/jbkunst/chessboardjs-themes/master/index.html). 

## Why this

In a project I was unable to use images so an alternative was turn 
image to a data-uri format (via R script, that was the fun part ;)).

Other reson was have more pieces and board themes.

## How to use

1. Load `chessboard.js` and `chessboard.css` as usual.
2. Load `chessboardjs-themes.js`.
3. Use them using `pieceTheme` and `boardTheme`configuration option.

## Example Use

```
var board = ChessBoard('boardiv', {
  pieceTheme: chess24_theme,
  boardTheme: chess24_board_theme ,
  position: 'start'
});

var board2 = ChessBoard('boardiv2', {
  pieceTheme: metro_theme,
  boardTheme: metro_board_theme,
  position: 'r1bqkbnr/pppp1ppp/2n5/1B2p3/4P3/5N2/PPPP1PPP/RNBQK2R'
});

});

```

## Pieces Themes

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

1. Metro `metro_theme`. Source [here](https://dev.windows.com/en-us/microsoft-edge/testdrive/demos/chess/).

![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/metro/bB.png)
![](https://raw.githubusercontent.com/jbkunst/chessboardjs-themes/master/chesspieces/metro/wQ.png)

## News

- 2015-11-26: Adding the `boardTheme` option (this is nos supported via original chessboardjs, download this version instead).
- 2015-11-25: Adding metro theme ([source](https://dev.windows.com/en-us/microsoft-edge/testdrive/demos/chess/)].



