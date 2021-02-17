import 'package:dartz/dartz.dart';
import 'package:test_app/data/models/core/value_failure.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/core/value_validators.dart';

class OrderComment extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  factory OrderComment(String inputValue) {
    assert(inputValue != null);
    return OrderComment._(
      validateNotEmpty(inputValue),
    );
  }

  OrderComment._(this.value);
}
