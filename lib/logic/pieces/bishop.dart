import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceColor.dart';
import 'package:chess/logic/PieceName.dart';
import 'package:chess/logic/Position.dart';

import '../Tile.dart';

class Bishop implements Piece {
  Bishop.WithColor({this.pieceColor});
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
  List<Position> validMoves({List<List<Tile>> gameBoard}) {
    int x = placedAt.horizontalPosition;
    int y = placedAt.verticalPosition;
    List<Position> validTiles = List();
    List<Position> tempValidTiles;
    int x1 = x;
    int y1 = y;
    while(x1-1>=0 && y1-1>=0) {
      x1 = x1-1;
      y1 = y1-1;
      if(gameBoard[x1][y1].piece == null) {
        validTiles.add(Position(x1,y1));
      } else {
        if(gameBoard[x1][y1].piece.pieceColor != pieceColor) {
          validTiles.add(Position(x1,y1));
        } else {
          break;
        }

    }
    int x2 = x;
    int y2 = y;
    while(x2+1<8 && y2+1<8) {
      x2 = x2 + 1;
      y2 = y2 + 1;
      if(gameBoard[x2][y2].piece == null) {
        validTiles.add(Position(x2,y2));
      } else {
        if (gameBoard[x2][y2].piece.pieceColor != this.pieceColor) {
          validTiles.add(Position(x2, y2));
        } else {
          break;
        }
      }
    }
    }
    int x3 = x;
    int y3 = y;
    while(x3-1>=0 && y3+1<8) {

      x3 = x3-1;
      y3= y3+1;
      if(gameBoard[x3][y3].piece == null) {
        validTiles.add(Position(x3,y3));
      } else {
        if (gameBoard[x3][y3].piece.pieceColor != this.pieceColor) {
          validTiles.add(Position(x3, y3));
        } else {
          break;
        }
      }
    }
    int x4 = x;
    int y4 = y;
    while(x4+1<8 && y4-1>=0) {
      x4 = x4+1;
      y4= y4-1;
      if(gameBoard[x4][y4].piece == null) {
        validTiles.add(Position(x4,y4));
      } else {
        if (gameBoard[x4][y4].piece.pieceColor != this.pieceColor) {
          validTiles.add(Position(x4, y4));
        } else {
          break;
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
  PieceName pieceName = PieceName.BISHOP;

  @override
  String imgLocation;

}