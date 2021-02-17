import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/models/core/value_object.dart';

part 'user.freezed.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({@required UniqueId id}) = _AppUser;
}
