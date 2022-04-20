
import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceColor.dart';
import 'package:flutter/material.dart';

class Tile {
  PieceColor color;
  Piece piece;
  Tile({this.color});
  Tile.FilledTile({this.color,this.piece}) {
    // TODO: implement
    throw UnimplementedError();
  }
  @override
  String toString() {
    // TODO: implement toString
    return "${this.piece.toString()}";
  }
  Color returnColor()
  {
    if(color == PieceColor.WHITE) {
      return Colors.greenAccent[100];
    }
    return Colors.green[400];
  }

}