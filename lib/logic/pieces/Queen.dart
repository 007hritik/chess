import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceColor.dart';
import 'package:chess/logic/PieceName.dart';
import 'package:chess/logic/Position.dart';

import '../Tile.dart';

class Queen implements Piece {
  Queen.WithColor({this.pieceColor});
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
    int y2 = y;
    while(x1-1>=0) {
      x1 =x1-1;
      validTiles.add(Position(x1, y2));
    }
    int x11 = x;
    int y22 = y;
    while(y22-1>=0) {

      y22 =y22-1;
      validTiles.add(Position(x11, y22));
    }
    int x111 = x;
    int y222 = y;
    while(x111+1<=7) {

      x111 =x111+1;
      validTiles.add(Position(x111, y222));
    }
    int x1111 = x;
    int y2222 = y;
    while(y2222+1<=7) {

      y2222 =y2222+1;
      validTiles.add(Position(x1111, y2222));
    }
    int x_1 = x;
    int y_1 = y;
    while(x1-1>=0 && y_1-1>=0) {
      validTiles.add(Position(x1,y_1));
      x1 = x1-1;
      y_1 = y_1-1;
    }
    int x2 = x;
    int y_2 = y;
    while(x2+1<8 && y2+1<8) {
      validTiles.add(Position(x2,y2));
      x2 = x2+1;
      y2 = y2+1;
    }
    int x3 = x;
    int y3 = y;
    while(x3-1>=0 && y3+1<8) {
      validTiles.add(Position(x3,y3));
      x3 = x3-1;
      y3= y3+1;
    }
    int x4 = x;
    int y4 = y;
    while(x4+1<8 && y4-1>=0) {
      validTiles.add(Position(x4,y4));
      x4 = x4+1;
      y4= y4-1;
    }
    return validTiles;

  }
  @override
  PieceColor getPieceColor() {
    return this.pieceColor;
  }

  @override
  PieceName pieceName = PieceName.QUEEN;

  @override
  String imgLocation = "assets/";

}