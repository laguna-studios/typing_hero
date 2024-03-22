import 'package:typing_hero/types.dart';

void main() {

  dynamic msg = "join,123";

  switch (msg.split(",")) {
    case ["join", String pin]:
      print(pin);
      break;
    default:
      print("No match");
  }

  print(User(id: "123", username: "BOBO", points: 0, gameRoomPin: 234));

}