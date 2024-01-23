const imagePath = "assets/images/";

enum InputItem {
  rock, paper, scissors;

  String get path => "$imagePath/${name[0]}.svg";
}