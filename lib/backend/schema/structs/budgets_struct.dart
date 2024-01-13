// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BudgetsStruct extends BaseStruct {
  BudgetsStruct({
    CategoriesStruct? categoryId,
    double? limit,
    DateTime? startDate,
    DateTime? endDate,
    int? threshold,
    String? frequency,
  })  : _categoryId = categoryId,
        _limit = limit,
        _startDate = startDate,
        _endDate = endDate,
        _threshold = threshold,
        _frequency = frequency;

  // "category_id" field.
  CategoriesStruct? _categoryId;
  CategoriesStruct get categoryId => _categoryId ?? CategoriesStruct();
  set categoryId(CategoriesStruct? val) => _categoryId = val;
  void updateCategoryId(Function(CategoriesStruct) updateFn) =>
      updateFn(_categoryId ??= CategoriesStruct());
  bool hasCategoryId() => _categoryId != null;

  // "limit" field.
  double? _limit;
  double get limit => _limit ?? 0.0;
  set limit(double? val) => _limit = val;
  void incrementLimit(double amount) => _limit = limit + amount;
  bool hasLimit() => _limit != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;
  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;
  bool hasEndDate() => _endDate != null;

  // "threshold" field.
  int? _threshold;
  int get threshold => _threshold ?? 0;
  set threshold(int? val) => _threshold = val;
  void incrementThreshold(int amount) => _threshold = threshold + amount;
  bool hasThreshold() => _threshold != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  set frequency(String? val) => _frequency = val;
  bool hasFrequency() => _frequency != null;

  static BudgetsStruct fromMap(Map<String, dynamic> data) => BudgetsStruct(
        categoryId: CategoriesStruct.maybeFromMap(data['category_id']),
        limit: castToType<double>(data['limit']),
        startDate: data['start_date'] as DateTime?,
        endDate: data['end_date'] as DateTime?,
        threshold: castToType<int>(data['threshold']),
        frequency: data['frequency'] as String?,
      );

  static BudgetsStruct? maybeFromMap(dynamic data) =>
      data is Map ? BudgetsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'category_id': _categoryId?.toMap(),
        'limit': _limit,
        'start_date': _startDate,
        'end_date': _endDate,
        'threshold': _threshold,
        'frequency': _frequency,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'category_id': serializeParam(
          _categoryId,
          ParamType.DataStruct,
        ),
        'limit': serializeParam(
          _limit,
          ParamType.double,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
        'threshold': serializeParam(
          _threshold,
          ParamType.int,
        ),
        'frequency': serializeParam(
          _frequency,
          ParamType.String,
        ),
      }.withoutNulls;

  static BudgetsStruct fromSerializableMap(Map<String, dynamic> data) =>
      BudgetsStruct(
        categoryId: deserializeStructParam(
          data['category_id'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoriesStruct.fromSerializableMap,
        ),
        limit: deserializeParam(
          data['limit'],
          ParamType.double,
          false,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.DateTime,
          false,
        ),
        threshold: deserializeParam(
          data['threshold'],
          ParamType.int,
          false,
        ),
        frequency: deserializeParam(
          data['frequency'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BudgetsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BudgetsStruct &&
        categoryId == other.categoryId &&
        limit == other.limit &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        threshold == other.threshold &&
        frequency == other.frequency;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([categoryId, limit, startDate, endDate, threshold, frequency]);
}

BudgetsStruct createBudgetsStruct({
  CategoriesStruct? categoryId,
  double? limit,
  DateTime? startDate,
  DateTime? endDate,
  int? threshold,
  String? frequency,
}) =>
    BudgetsStruct(
      categoryId: categoryId ?? CategoriesStruct(),
      limit: limit,
      startDate: startDate,
      endDate: endDate,
      threshold: threshold,
      frequency: frequency,
    );
