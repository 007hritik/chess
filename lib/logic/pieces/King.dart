import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceColor.dart';
import 'package:chess/logic/PieceName.dart';
import 'package:chess/logic/Position.dart';
import 'package:chess/logic/Tile.dart';

class King implements Piece {
  King.WithColor({this.pieceColor});

  @override
  bool moved;

  @override
  PieceColor pieceColor;

  @override
  Position placedAt;
  void attactSquare(Position position) {}
  List<Position> validMoves({List<List<Tile>> gameBoard}){
    int x = placedAt.horizontalPosition;
    int y = placedAt.verticalPosition;
    print("color : ${gameBoard[0][4].piece.pieceColor}");

    List<Position> validTiles = List();
    if(x-1>0) {
      validTiles.add(Position(y ,x-1));

    }if(y-1>0) {
      validTiles.add(Position(y-1, x));

    }if(x+1<8) {
      validTiles.add(Position(y, x+1));
    }if(y+1<8) {
      validTiles.add(Position(y+1, x));
    }
    //diagonal tiles
    if(x-1>0 && y-1>0) {
      validTiles.add(Position(y-1, x-1));
    }
    if(x+1>0 && y-1>0) {
      validTiles.add(Position(y-1, x+1));
    }
    if(x+1>0 && y+1>0) {
      validTiles.add(Position(y+1, x+1));
    }
    if(x-1>0 && y+1>0) {
      validTiles.add(Position(y+1, x-1));
    }
    return validTiles;

  }
  @override
  PieceColor getPieceColor() {
    return this.pieceColor;
  }

  @override
  PieceName pieceName = PieceName.KING;

  @override
  String imgLocation;
}
