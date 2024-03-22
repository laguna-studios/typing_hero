
import 'package:freezed_annotation/freezed_annotation.dart';

part 'errormessage.freezed.dart';
part 'errormessage.g.dart';

@freezed
class ErrorMessage with _$ErrorMessage {
  factory ErrorMessage({
    required String message
  }) = _ErrorMessage;
	
  factory ErrorMessage.fromJson(Map<String, dynamic> json) =>
			_$ErrorMessageFromJson(json);
}
