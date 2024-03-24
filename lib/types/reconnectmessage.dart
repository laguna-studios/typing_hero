
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reconnectmessage.freezed.dart';
part 'reconnectmessage.g.dart';

@freezed
class ReconnectMessage with _$ReconnectMessage {
  factory ReconnectMessage({
    required int pin,
    required String oldUserId,
    required bool teacher
  }) = _ReconnectMessage;
	
  factory ReconnectMessage.fromJson(Map<String, dynamic> json) =>
			_$ReconnectMessageFromJson(json);
}
