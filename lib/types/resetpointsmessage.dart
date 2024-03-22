
import 'package:freezed_annotation/freezed_annotation.dart';

part 'resetpointsmessage.freezed.dart';
part 'resetpointsmessage.g.dart';

@freezed
class ResetPointsMessage with _$ResetPointsMessage {
  factory ResetPointsMessage({
    required int pin
  }) = _ResetPointsMessage;
	
  factory ResetPointsMessage.fromJson(Map<String, dynamic> json) =>
			_$ResetPointsMessageFromJson(json);
}
