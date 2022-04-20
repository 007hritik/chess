import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceColor.dart';
import 'package:chess/logic/PieceName.dart';
import 'package:chess/logic/Position.dart';
import 'package:chess/logic/TileColor.dart';

import '../Tile.dart';

class Rook implements Piece {
  Rook.WithColor({this.tileColor});
  @override
  bool moved;



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
    return validTiles;

  }


  @override
  PieceName pieceName = PieceName.ROOK;

  @override
   String imgLocation   = "";

  @override
  TileColor tileColor;

  @override
  PieceColor getPieceColor() {
    // TODO: implement getPieceColor
    throw UnimplementedError();
  }

  @override
  PieceColor pieceColor;


}