import 'package:chess/logic/PieceColor.dart';
import 'package:chess/logic/Position.dart';
import 'package:chess/logic/PieceName.dart';

import 'Tile.dart';

abstract class Piece {
  PieceColor _pieceColor;
  PieceName _pieceName;
  String imgLocation;

  PieceName get pieceName => _pieceName;

  set pieceName(PieceName value) {
    _pieceName = value;
  }

  PieceColor get pieceColor => _pieceColor;

  set pieceColor(PieceColor value) {
    _pieceColor = value;
  }

  Position _placedAt;
  bool _moved;
  void attactSquare(Position position);
  List<Position> validMoves({List<List<Tile>> gameBoard});
  PieceColor getPieceColor();

  Position get placedAt => _placedAt;

  set placedAt(Position value) {
    _placedAt = value;
  }

  bool get moved => _moved;

  set moved(bool value) {
    _moved = value;
  }

}
