
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exitmessage.freezed.dart';
part 'exitmessage.g.dart';

@freezed
class ExitMessage with _$ExitMessage {
  factory ExitMessage() = _ExitMessage;
	
  factory ExitMessage.fromJson(Map<String, dynamic> json) =>
			_$ExitMessageFromJson(json);
}
