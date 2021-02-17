
import 'package:dartz/dartz.dart';
import 'package:test_app/data/models/core/value_failure.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/core/value_validators.dart';

class Email extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Email(String inputValue) {
    assert(inputValue != null);
    return Email._(
      validateEmailAddress(inputValue),
    );
  }

  Email._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String inputValue) {
    assert(inputValue != null);
    return Password._(
      validateNotEmpty(inputValue).flatMap(validatePassword),
    );
  }

  Password._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String inputValue) {
    assert(inputValue != null);
    return PhoneNumber._(
      validateNotEmpty(inputValue).flatMap(validatePhoneNumber),
    );
  }

  PhoneNumber._(this.value);
}

class UserName extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  static const maxLength = 20;

  factory UserName(String inputValue) {
    assert(inputValue != null);
    return UserName._(
        validateMaxLength(inputValue, maxLength).flatMap(validateNotEmpty));
  }

  UserName._(this.value);
}

class ConfirmPassword extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  factory ConfirmPassword(String inputValue, Password password) {
    assert(inputValue != null);
    return ConfirmPassword._(
      validateConfirmPassword(
        inputValue,
        password.value.getOrElse(() => null),
      ),
    );
  }

  ConfirmPassword._(this.value);
}
