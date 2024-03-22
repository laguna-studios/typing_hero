
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saveusernamemessage.freezed.dart';
part 'saveusernamemessage.g.dart';

@freezed
class SaveUsernameMessage with _$SaveUsernameMessage {
  factory SaveUsernameMessage({
    required int pin,
    required String username
  }) = _SaveUsernameMessage;
	
  factory SaveUsernameMessage.fromJson(Map<String, dynamic> json) =>
			_$SaveUsernameMessageFromJson(json);
}
