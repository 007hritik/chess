
import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceColor.dart';
import 'package:chess/logic/Position.dart';
import 'package:chess/logic/Tile.dart';

class Board {
  List<List<Tile>> gameboard;
  int row  =8;
  int col = 8;
  Board() {

    bool temp  = true; // false indecated Black tile
    gameboard = List.generate(row, (i) {

        temp =  !temp;
      return List.generate(col, (j){

        temp = !temp;
        return Tile(color: temp==false?PieceColor.BLACK:PieceColor.WHITE);
      });
    }, growable: false);
}

  static Board create() {
    return  Board();
  }
  putPiece(Piece piece, Position position) {
    if(gameboard[position.horizontalPosition][position.verticalPosition] != null) {
      gameboard[position.horizontalPosition][position.verticalPosition].piece = piece;
      gameboard[position.horizontalPosition][position.verticalPosition].piece.placedAt = position;

    }
    else {
      print("Tile is already filled cannot put another piece");
    }
  }
  removePiece(Piece piece) {}
  movePiece({Piece piece, Position toPlace}) {
    List<Position> validtiles = piece.validMoves();
    Position placeAt  = piece.placedAt;

  }
  List<Position> generateCorrectValidTile({Piece piece}) {

  }
  void printBoard() {
    print(" Board : ${gameboard.toString()}");
  }
}
