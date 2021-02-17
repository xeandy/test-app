import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/item/value_ojects.dart';

part 'category.freezed.dart';

@freezed
abstract class Category with _$Category {
  const factory Category({
    @required CategoryName categoryName,
    @required UniqueId categoryID,
  }) = _Category;

  factory Category.empty() => Category(
        categoryName: CategoryName(''),
        categoryID: UniqueId(),
      );
}
