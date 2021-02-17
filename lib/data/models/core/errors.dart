import 'package:test_app/data/models/core/value_failure.dart';

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Something went wrong. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
