
import 'package:freezed_annotation/freezed_annotation.dart';

part 'removeplayermessage.freezed.dart';
part 'removeplayermessage.g.dart';

@freezed
class RemovePlayerMessage with _$RemovePlayerMessage {
  factory RemovePlayerMessage({
    required int pin,
    required String userId
  }) = _RemovePlayerMessage;
	
  factory RemovePlayerMessage.fromJson(Map<String, dynamic> json) =>
			_$RemovePlayerMessageFromJson(json);
}
