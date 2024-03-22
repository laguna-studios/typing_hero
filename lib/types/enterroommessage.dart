
import 'package:freezed_annotation/freezed_annotation.dart';

part 'enterroommessage.freezed.dart';
part 'enterroommessage.g.dart';

@freezed
class EnterRoomMessage with _$EnterRoomMessage {
  factory EnterRoomMessage({
    required int pin
  }) = _EnterRoomMessage;
	
  factory EnterRoomMessage.fromJson(Map<String, dynamic> json) =>
			_$EnterRoomMessageFromJson(json);
}
