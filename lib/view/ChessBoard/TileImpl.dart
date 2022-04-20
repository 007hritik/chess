import 'package:chess/logic/Tile.dart';
import 'package:flutter/material.dart';

class TileImpl extends StatelessWidget {
  Tile tile;
  TileImpl({ Tile this.tile});

  @override
  Widget build(BuildContext context) {
    print("Tile name : ${tile.piece.toString()}");
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {

      },
      child: Container(
        height: size.width*(1/8),
        width: size.width*(1/8),

        color: tile.returnColor(),
        child: Text("${tile.piece.toString()}", style: TextStyle(fontSize: 5),),
      ),
    );
  }
}
