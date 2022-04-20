import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceColor.dart';
import 'package:chess/logic/PieceName.dart';
import 'package:chess/logic/Position.dart';

import '../Tile.dart';

class Knight implements Piece {
  Knight.WithColor({this.pieceColor});
  @override
  bool moved;

  @override
  PieceColor pieceColor;

  @override
  Position placedAt;

  @override
  void attactSquare(Position position) {
    // TODO: implement attactSquare
  }

  @override
  List<Position> validMoves({List<List<Tile>> gameBoard}){
    int x = placedAt.horizontalPosition;
    int y = placedAt.verticalPosition;
    List<Position> validTiles = List();
    int x1 = x;
    int y1 = y;
    if(x1-2>=0) {
      if(y1+1<=7) {
        if(gameBoard[x1-2][y1+1].piece==null) {
          validTiles.add(Position(x1-2,y1+1));
        }
      else {
          if(gameBoard[x1-2][y1+1].piece.pieceColor != pieceColor) {
            validTiles.add(Position(x1-2,y1+1));
          }
      }
      }
      if(y1-1>=0) {
        if(gameBoard[x1-2][y1-1].piece == null) {
          validTiles.add(Position(x1-2,y1-1));
        }
      } else {
        if(gameBoard[x1-2][y1-1].piece.pieceColor != pieceColor) {
          validTiles.add(Position(x1-2,y1-1));
        }
      }

    }

    if(x1+2<=7) {

      if(y1+1<=7) {
        if(gameBoard[x1+2][y1+1].piece == null) {
          validTiles.add(Position(x1+2,y1+1));
        } else {
          if(gameBoard[x1+2][y1+1].piece.pieceColor != pieceColor) {
            validTiles.add(Position(x1+2,y1+1));
          }
        }
      }
      if(y1-1>=0) {

        if(gameBoard[x1+2][y1-1].piece == null) {
          validTiles.add(Position(x1+2,y1-1));
        } else {
          if(gameBoard[x1+2][y1-1].piece.pieceColor != pieceColor) {
            validTiles.add(Position(x1+2,y1-1));
          }
        }
      }
    }

    if(y1-2>=0) {
      if(x1+1<=7) {
        if(gameBoard[x1+1][y1-2].piece == null) {
          validTiles.add(Position(y1-2,x1+1));
        }
        else {
          if(gameBoard[x1+1][y1-2].piece.pieceColor != pieceColor) {
            validTiles.add(Position(y1-2,x1+1));
          }
        }
      }
      if(x1-1>=0) {
        if(gameBoard[x1-1][y1-2].piece == null) {
          validTiles.add(Position(y1-2,x1-1));
        }
        else {
          if(gameBoard[x1-1][y1-2].piece.pieceColor != pieceColor) {
            validTiles.add(Position(y1-2,x1-1));
          }
        }

      }
    }


    if(y1+2<=7) {

      if(x1+1<=7) {
        if(gameBoard[x1+1][y1+2].piece == null) {
          validTiles.add(Position(y1+2,x1+1));
        } else {
          if(gameBoard[x1+1][y1+2].piece.pieceColor != pieceColor) {
            validTiles.add(Position(y1+2,x1+1));
          }
        }
      }
      if(x1-1>=0) {
        if(gameBoard[x1-1][y1+2].piece == null) {
          validTiles.add(Position(y1+2,x1-1));
        } else {
          if(gameBoard[x1-1][y1+2].piece.pieceColor != pieceColor) {
            validTiles.add(Position(y1+2,x1-1));
          }
        }
      }
    }


    return validTiles;
  }
  @override
  PieceColor getPieceColor() {
    return this.pieceColor;
  }

  @override
  PieceName pieceName = PieceName.KNIGHT;

  @override
  String imgLocation;

}