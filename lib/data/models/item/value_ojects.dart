import 'package:dartz/dartz.dart';
import 'package:test_app/data/models/core/value_failure.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/core/value_validators.dart';

class CategoryName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory CategoryName(String inputValue) {
    assert(inputValue != null);
    return CategoryName._(
      validateNotEmpty(inputValue),
    );
  }

  CategoryName._(this.value);
}

class Name extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Name(String inputValue) {
    assert(inputValue != null);
    return Name._(
      validateNotEmpty(inputValue),
    );
  }

  Name._(this.value);
}

class Img extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Img(String inputValue) {
    assert(inputValue != null);
    return Img._(
      validateNotEmpty(inputValue),
    );
  }

  Img._(this.value);
}

class Price extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Price(String inputValue) {
    assert(inputValue != null);
    return Price._(
      validateNotEmpty(inputValue),
    );
  }

  Price._(this.value);
}

class Qty extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Qty(String inputValue) {
    assert(inputValue != null);
    return Qty._(
      validateNotEmpty(inputValue),
    );
  }

  Qty._(this.value);
}
