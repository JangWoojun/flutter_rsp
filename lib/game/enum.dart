const imagePath = "assets/images/";

enum InputItem {
  rock, paper, scissors;

  String get path => "$imagePath/${name[0]}.svg";
}

enum Result {
  playerWin('Player 승리'),
  draw('무승부'),
  cpuWin('Player 패배');

  const Result(this.displayString);

  final String displayString;
}