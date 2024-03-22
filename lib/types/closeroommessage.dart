
import 'package:freezed_annotation/freezed_annotation.dart';

part 'closeroommessage.freezed.dart';
part 'closeroommessage.g.dart';

@freezed
class CloseRoomMessage with _$CloseRoomMessage {
  factory CloseRoomMessage({
    required int pin,
    required bool closed
  }) = _CloseRoomMessage;
	
  factory CloseRoomMessage.fromJson(Map<String, dynamic> json) =>
			_$CloseRoomMessageFromJson(json);
}
