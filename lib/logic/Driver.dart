import 'package:chess/logic/Game.dart';
import 'package:chess/logic/Position.dart';

void main(List<String> args) {
  Game myGame =
      Game.create(player1name: "hritik", player2name: "singh", isP1White: true);
  myGame.initialize();
  List<Position> temp = myGame.board.gameboard[0][1].piece.validMoves(gameBoard: myGame.board.gameboard) ;
  temp.forEach((element) {
    element.displayPosition();
  });
 // print(myGame.board.gameboard[0][4].piece.validMoves(gameBoard: myGame.board.gameboard));
}
