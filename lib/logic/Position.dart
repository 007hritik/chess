class Position {
  int _horizontalPosition;

  int get horizontalPosition => _horizontalPosition;

  set horizontalPosition(int value) {
    _horizontalPosition = value;
  }

  int _verticalPosition;
  Position(this._horizontalPosition, this._verticalPosition);

  int get verticalPosition => _verticalPosition;

  set verticalPosition(int value) {

    _verticalPosition = value;
  }
  displayPosition() {
    print("x: ${this.verticalPosition} & y: ${this.horizontalPosition}");
  }
}
