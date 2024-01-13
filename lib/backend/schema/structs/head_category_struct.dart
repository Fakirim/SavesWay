// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HeadCategoryStruct extends BaseStruct {
  HeadCategoryStruct({
    CategoriesStruct? categoryId,
  }) : _categoryId = categoryId;

  // "category_id" field.
  CategoriesStruct? _categoryId;
  CategoriesStruct get categoryId => _categoryId ?? CategoriesStruct();
  set categoryId(CategoriesStruct? val) => _categoryId = val;
  void updateCategoryId(Function(CategoriesStruct) updateFn) =>
      updateFn(_categoryId ??= CategoriesStruct());
  bool hasCategoryId() => _categoryId != null;

  static HeadCategoryStruct fromMap(Map<String, dynamic> data) =>
      HeadCategoryStruct(
        categoryId: CategoriesStruct.maybeFromMap(data['category_id']),
      );

  static HeadCategoryStruct? maybeFromMap(dynamic data) => data is Map
      ? HeadCategoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'category_id': _categoryId?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category_id': serializeParam(
          _categoryId,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static HeadCategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      HeadCategoryStruct(
        categoryId: deserializeStructParam(
          data['category_id'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoriesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HeadCategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HeadCategoryStruct && categoryId == other.categoryId;
  }

  @override
  int get hashCode => const ListEquality().hash([categoryId]);
}

HeadCategoryStruct createHeadCategoryStruct({
  CategoriesStruct? categoryId,
}) =>
    HeadCategoryStruct(
      categoryId: categoryId ?? CategoriesStruct(),
    );
