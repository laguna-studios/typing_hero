
import 'package:freezed_annotation/freezed_annotation.dart';

import '../types.dart';

part 'startgamemessage.freezed.dart';
part 'startgamemessage.g.dart';

@freezed
class StartGameMessage with _$StartGameMessage {
  factory StartGameMessage({
    required int pin,
    required Game game
  }) = _StartGameMessage;
	
  factory StartGameMessage.fromJson(Map<String, dynamic> json) =>
			_$StartGameMessageFromJson(json);
}
