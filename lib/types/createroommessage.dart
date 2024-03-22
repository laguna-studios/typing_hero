
import 'package:freezed_annotation/freezed_annotation.dart';

part 'createroommessage.freezed.dart';
part 'createroommessage.g.dart';

@freezed
class CreateRoomMessage with _$CreateRoomMessage {
  factory CreateRoomMessage() = _CreateRoomMessage;
	
  factory CreateRoomMessage.fromJson(Map<String, dynamic> json) =>
			_$CreateRoomMessageFromJson(json);
}
