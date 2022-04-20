import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceColor.dart';
import 'package:chess/logic/PieceName.dart';
import 'package:chess/logic/Position.dart';

import '../Tile.dart';

class Pawn implements Piece{
  Pawn.WithColor({this.pieceColor});
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
    if(pieceColor == PieceColor.WHITE)  {

    } else {

    }

  }
  @override
  PieceColor getPieceColor() {
    return this.pieceColor;
  }

  @override
  PieceName pieceName = PieceName.PAWN;

  @override
  String imgLocation;

}