import 'package:chess/logic/Board.dart';
import 'package:chess/logic/CheckStatus.dart';
import 'package:chess/logic/Piece.dart';
import 'package:chess/logic/PieceColor.dart';
import 'package:chess/logic/Player.dart';
import 'package:chess/logic/Position.dart';
import 'package:chess/logic/Result.dart';
import 'package:chess/logic/pieces/Knight.dart';
import 'package:chess/logic/pieces/Pawn.dart';
import 'package:chess/logic/pieces/Queen.dart';
import 'package:chess/logic/pieces/Rook.dart';
import 'package:chess/logic/pieces/bishop.dart';
import 'package:chess/logic/pieces/King.dart';
import 'package:uuid/uuid.dart';

class Game {
  String gameId;
  Result result;
  List<Player> plyers;
  Map<Player, PieceColor> selectedColor;
  CheckStatus checkStatus;
  Board board;
  Map<Player, String> moveHistrory;

  // constructors

  Game(this.board, this.selectedColor, this.plyers) {
    gameId = generateGameId();
    this.checkStatus = CheckStatus.DEFAULT;
    print(
        "Game created : with game Id ${this.gameId}\n Players :${this.plyers} \n  Status : ${this.checkStatus} \n");
  }


  // Required methods


  // Initialize the game
  void initialize() {
    //put Rooks on the board
    board.putPiece(Rook.WithColor(pieceColor: PieceColor.BLACK), Position(0,0));
    board.putPiece(Rook.WithColor(pieceColor: PieceColor.BLACK), Position(0,7));
    board.putPiece(Rook.WithColor(pieceColor: PieceColor.WHITE), Position(7,0));
    board.putPiece(Rook.WithColor(pieceColor: PieceColor.WHITE), Position(7,7));
    // Put Knights on the board
    board.putPiece(Knight.WithColor(pieceColor: PieceColor.BLACK), Position(0, 1));
    board.putPiece(Knight.WithColor(pieceColor: PieceColor.BLACK), Position(0, 6));
    board.putPiece(Knight.WithColor(pieceColor: PieceColor.WHITE), Position(7, 1));
    board.putPiece(Knight.WithColor(pieceColor: PieceColor.WHITE), Position(7,6));
    // Put Bishops on the board
    board.putPiece(Bishop.WithColor(pieceColor: PieceColor.BLACK), Position(0, 2));
    board.putPiece(Bishop.WithColor(pieceColor: PieceColor.BLACK), Position(0, 5));
    board.putPiece(Bishop.WithColor(pieceColor: PieceColor.BLACK), Position(7, 2));
    board.putPiece(Bishop.WithColor(pieceColor: PieceColor.BLACK), Position(7, 5));
    //Put Queen on the board
    board.putPiece(Queen.WithColor(pieceColor: PieceColor.BLACK), Position(0,3));
    board.putPiece(Queen.WithColor(pieceColor: PieceColor.BLACK), Position(7,3));
    //put King on the Board
    board.putPiece(King.WithColor(pieceColor: PieceColor.BLACK), Position(0, 4));
    board.putPiece(King.WithColor(pieceColor: PieceColor.BLACK),  Position(7, 4));
    //put black pawn
    for(int i = 0;i<8;i++) {

        board.putPiece(Pawn.WithColor(pieceColor: PieceColor.BLACK), Position(1,i));


    }
    //put white pawn
    for(int i = 0;i<8;i++) {
      board.putPiece(Pawn.WithColor(pieceColor: PieceColor.WHITE), Position(6,i));
    }




  }
  String generateGameId() {
    var uuid = const Uuid();
    return uuid.v1();
  }

  bool isEnded() {
    return true;
  }

  bool isChecked() {
    return true;
  }

  bool isCheckMated() {}
  // Create the game
 static Game create({String player1name, String player2name, bool isP1White}) {
    Player p1 = Player(player1name);
    Player p2 = Player(player2name);
    if (isP1White) {
      p1.setPieceColor = PieceColor.WHITE;
      p2.setPieceColor = PieceColor.BLACK;
    } else {
      p1.setPieceColor = PieceColor.BLACK;
      p2.setPieceColor = PieceColor.WHITE;
    }

    Board board = Board();
    Map<Player, PieceColor> sc = Map();
    sc[p1] = p1.pieceColor;
    sc[p2] = p2.pieceColor;
    var players_list = [p1, p2];
    return Game(board, sc, players_list);
  }

  void addMove() {}
  void operation() {}
}
