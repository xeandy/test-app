import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app/data/models/core/value_object.dart';
import 'package:test_app/data/models/item/category.dart';
import 'package:test_app/data/models/item/value_ojects.dart';

part 'category_DTO.freezed.dart';
part 'category_DTO.g.dart';

@freezed
abstract class CategoryDTO with _$CategoryDTO {
  const CategoryDTO._();

  const factory CategoryDTO({
    @required String categoryName,
    @required String categoryID,
  }) = _CategoryDTO;

  factory CategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CategoryDTOFromJson(json);

  factory CategoryDTO.fromDomain(Category category) {
    return CategoryDTO(
      categoryName: category.categoryName.getOrCrash(),
      categoryID: category.categoryID.getOrCrash(),
    );
  }

  Category toDomain() {
    return Category(
      categoryName: CategoryName(categoryName),
      categoryID: UniqueId.fromUniqueString(categoryID),
    );
  }
}
