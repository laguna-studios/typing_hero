
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scorepointsmessage.freezed.dart';
part 'scorepointsmessage.g.dart';

@freezed
class ScorePointsMessage with _$ScorePointsMessage {
  factory ScorePointsMessage({
    required int pin,
    required int points
  }) = _ScorePointsMessage;
	
  factory ScorePointsMessage.fromJson(Map<String, dynamic> json) =>
			_$ScorePointsMessageFromJson(json);
}
