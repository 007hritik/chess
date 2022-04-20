import 'package:chess/logic/Game.dart';
import 'package:chess/logic/Tile.dart';
import 'package:chess/view/ChessBoard/TileImpl.dart';
import 'package:flutter/material.dart';

class ChessBoard extends StatefulWidget  {


  @override
  State<ChessBoard> createState() => _ChessBoardState();
}

class _ChessBoardState extends State<ChessBoard> {
  Game myGame = Game.create(player1name: "hritik",player2name: "singh",isP1White: true);
  @override
  Widget build(BuildContext context) {
    myGame.initialize();
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${myGame.plyers[0].playerName}"),
            Container(

              height: size.width,
              width: size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      TileImpl(tile: myGame.board.gameboard[0][0]),
                      TileImpl(tile: myGame.board.gameboard[0][1]),
                      TileImpl(tile: myGame.board.gameboard[0][2]),
                      TileImpl(tile: myGame.board.gameboard[0][3]),
                      TileImpl(tile: myGame.board.gameboard[0][4]),
                      TileImpl(tile: myGame.board.gameboard[0][5]),
                      TileImpl(tile: myGame.board.gameboard[0][6]),
                      TileImpl(tile: myGame.board.gameboard[0][7])
                    ],
                  ),
                  Row(
                    children: [
                      TileImpl(tile: myGame.board.gameboard[1][0]),
                      TileImpl(tile: myGame.board.gameboard[1][1]),
                      TileImpl(tile: myGame.board.gameboard[1][2]),
                      TileImpl(tile: myGame.board.gameboard[1][3]),
                      TileImpl(tile: myGame.board.gameboard[1][4]),
                      TileImpl(tile: myGame.board.gameboard[1][5]),
                      TileImpl(tile: myGame.board.gameboard[1][6]),
                      TileImpl(tile: myGame.board.gameboard[1][7])
                    ],
                  ),
                  Row(
                    children: [
                      TileImpl(tile: myGame.board.gameboard[2][0]),
                      TileImpl(tile: myGame.board.gameboard[2][1]),
                      TileImpl(tile: myGame.board.gameboard[2][2]),
                      TileImpl(tile: myGame.board.gameboard[2][3]),
                      TileImpl(tile: myGame.board.gameboard[2][4]),
                      TileImpl(tile: myGame.board.gameboard[2][5]),
                      TileImpl(tile: myGame.board.gameboard[2][6]),
                      TileImpl(tile: myGame.board.gameboard[2][7])
                    ],
                  ),
                  Row(
                    children: [
                      TileImpl(tile: myGame.board.gameboard[3][0]),
                      TileImpl(tile: myGame.board.gameboard[3][1]),
                      TileImpl(tile: myGame.board.gameboard[3][2]),
                      TileImpl(tile: myGame.board.gameboard[3][3]),
                      TileImpl(tile: myGame.board.gameboard[3][4]),
                      TileImpl(tile: myGame.board.gameboard[3][5]),
                      TileImpl(tile: myGame.board.gameboard[3][6]),
                      TileImpl(tile: myGame.board.gameboard[3][7])
                    ],
                  ),
                  Row(
                    children: [
                      TileImpl(tile: myGame.board.gameboard[4][0]),
                      TileImpl(tile: myGame.board.gameboard[4][1]),
                      TileImpl(tile: myGame.board.gameboard[4][2]),
                      TileImpl(tile: myGame.board.gameboard[4][3]),
                      TileImpl(tile: myGame.board.gameboard[4][4]),
                      TileImpl(tile: myGame.board.gameboard[4][5]),
                      TileImpl(tile: myGame.board.gameboard[4][6]),
                      TileImpl(tile: myGame.board.gameboard[4][7])
                    ],
                  ),
                  Row(
                    children: [
                      TileImpl(tile: myGame.board.gameboard[5][0]),
                      TileImpl(tile: myGame.board.gameboard[5][1]),
                      TileImpl(tile: myGame.board.gameboard[5][2]),
                      TileImpl(tile: myGame.board.gameboard[5][3]),
                      TileImpl(tile: myGame.board.gameboard[5][4]),
                      TileImpl(tile: myGame.board.gameboard[5][5]),
                      TileImpl(tile: myGame.board.gameboard[5][6]),
                      TileImpl(tile: myGame.board.gameboard[5][7])
                    ],
                  ),
                  Row(
                    children: [
                      TileImpl(tile: myGame.board.gameboard[6][0]),
                      TileImpl(tile: myGame.board.gameboard[6][1]),
                      TileImpl(tile: myGame.board.gameboard[6][2]),
                      TileImpl(tile: myGame.board.gameboard[6][3]),
                      TileImpl(tile: myGame.board.gameboard[6][4]),
                      TileImpl(tile: myGame.board.gameboard[6][5]),
                      TileImpl(tile: myGame.board.gameboard[6][6]),
                      TileImpl(tile: myGame.board.gameboard[6][7])
                    ],
                  ),
                  Row(
                    children: [
                      TileImpl(tile: myGame.board.gameboard[7][0]),
                      TileImpl(tile: myGame.board.gameboard[7][1]),
                      TileImpl(tile: myGame.board.gameboard[7][2]),
                      TileImpl(tile: myGame.board.gameboard[7][3]),
                      TileImpl(tile: myGame.board.gameboard[7][4]),
                      TileImpl(tile: myGame.board.gameboard[7][5]),
                      TileImpl(tile: myGame.board.gameboard[7][6]),
                      TileImpl(tile: myGame.board.gameboard[7][7])
                    ],
                  ),

                ]
              )



            ),
            Text("${myGame.plyers[1].playerName}")
          ],
        ),

      ),
    );
  }
}
