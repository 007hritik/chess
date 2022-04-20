import 'package:chess/logic/PieceColor.dart';
import 'package:uuid/uuid.dart';

class Player {
  String playerId;
  PieceColor pieceColor;
  PieceColor get getPieceColor => this.pieceColor;

  set setPieceColor(PieceColor pieceColor) => this.pieceColor = pieceColor;
  String playerName;
  int matchesPlayed;
  int wins;
  int loses;
  int draws;
  // Constructor
  Player(this.playerName) {
    this.playerId = generatePayerId();
    print(
        "Player created \n Player Name: ${this.playerName} \n Id : ${this.playerId}");
  }

  String generatePayerId() {
    var uuid = Uuid();
    return uuid.v1();
  }
}
