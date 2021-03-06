import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_failure.freezed.dart';

@freezed
abstract class SubmitFailure with _$SubmitFailure {
  const factory SubmitFailure.serverError() = ServerError;
}
