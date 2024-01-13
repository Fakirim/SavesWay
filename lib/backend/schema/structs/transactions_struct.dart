// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionsStruct extends BaseStruct {
  TransactionsStruct({
    double? amount,
    DateTime? date,
    AccountsStruct? accountId,
    CategoriesStruct? categoryId,
    String? description,
    String? transactionType,
    bool? isRecurring,
    String? frequency,
    DateTime? nextDate,
  })  : _amount = amount,
        _date = date,
        _accountId = accountId,
        _categoryId = categoryId,
        _description = description,
        _transactionType = transactionType,
        _isRecurring = isRecurring,
        _frequency = frequency,
        _nextDate = nextDate;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;
  void incrementAmount(double amount) => _amount = amount + amount;
  bool hasAmount() => _amount != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  // "account_id" field.
  AccountsStruct? _accountId;
  AccountsStruct get accountId => _accountId ?? AccountsStruct();
  set accountId(AccountsStruct? val) => _accountId = val;
  void updateAccountId(Function(AccountsStruct) updateFn) =>
      updateFn(_accountId ??= AccountsStruct());
  bool hasAccountId() => _accountId != null;

  // "category_id" field.
  CategoriesStruct? _categoryId;
  CategoriesStruct get categoryId => _categoryId ?? CategoriesStruct();
  set categoryId(CategoriesStruct? val) => _categoryId = val;
  void updateCategoryId(Function(CategoriesStruct) updateFn) =>
      updateFn(_categoryId ??= CategoriesStruct());
  bool hasCategoryId() => _categoryId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "transaction_type" field.
  String? _transactionType;
  String get transactionType => _transactionType ?? '';
  set transactionType(String? val) => _transactionType = val;
  bool hasTransactionType() => _transactionType != null;

  // "is_recurring" field.
  bool? _isRecurring;
  bool get isRecurring => _isRecurring ?? false;
  set isRecurring(bool? val) => _isRecurring = val;
  bool hasIsRecurring() => _isRecurring != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  set frequency(String? val) => _frequency = val;
  bool hasFrequency() => _frequency != null;

  // "next_date" field.
  DateTime? _nextDate;
  DateTime? get nextDate => _nextDate;
  set nextDate(DateTime? val) => _nextDate = val;
  bool hasNextDate() => _nextDate != null;

  static TransactionsStruct fromMap(Map<String, dynamic> data) =>
      TransactionsStruct(
        amount: castToType<double>(data['amount']),
        date: data['date'] as DateTime?,
        accountId: AccountsStruct.maybeFromMap(data['account_id']),
        categoryId: CategoriesStruct.maybeFromMap(data['category_id']),
        description: data['description'] as String?,
        transactionType: data['transaction_type'] as String?,
        isRecurring: data['is_recurring'] as bool?,
        frequency: data['frequency'] as String?,
        nextDate: data['next_date'] as DateTime?,
      );

  static TransactionsStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'date': _date,
        'account_id': _accountId?.toMap(),
        'category_id': _categoryId?.toMap(),
        'description': _description,
        'transaction_type': _transactionType,
        'is_recurring': _isRecurring,
        'frequency': _frequency,
        'next_date': _nextDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'account_id': serializeParam(
          _accountId,
          ParamType.DataStruct,
        ),
        'category_id': serializeParam(
          _categoryId,
          ParamType.DataStruct,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'transaction_type': serializeParam(
          _transactionType,
          ParamType.String,
        ),
        'is_recurring': serializeParam(
          _isRecurring,
          ParamType.bool,
        ),
        'frequency': serializeParam(
          _frequency,
          ParamType.String,
        ),
        'next_date': serializeParam(
          _nextDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static TransactionsStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionsStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        accountId: deserializeStructParam(
          data['account_id'],
          ParamType.DataStruct,
          false,
          structBuilder: AccountsStruct.fromSerializableMap,
        ),
        categoryId: deserializeStructParam(
          data['category_id'],
          ParamType.DataStruct,
          false,
          structBuilder: CategoriesStruct.fromSerializableMap,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        transactionType: deserializeParam(
          data['transaction_type'],
          ParamType.String,
          false,
        ),
        isRecurring: deserializeParam(
          data['is_recurring'],
          ParamType.bool,
          false,
        ),
        frequency: deserializeParam(
          data['frequency'],
          ParamType.String,
          false,
        ),
        nextDate: deserializeParam(
          data['next_date'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'TransactionsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionsStruct &&
        amount == other.amount &&
        date == other.date &&
        accountId == other.accountId &&
        categoryId == other.categoryId &&
        description == other.description &&
        transactionType == other.transactionType &&
        isRecurring == other.isRecurring &&
        frequency == other.frequency &&
        nextDate == other.nextDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        amount,
        date,
        accountId,
        categoryId,
        description,
        transactionType,
        isRecurring,
        frequency,
        nextDate
      ]);
}

TransactionsStruct createTransactionsStruct({
  double? amount,
  DateTime? date,
  AccountsStruct? accountId,
  CategoriesStruct? categoryId,
  String? description,
  String? transactionType,
  bool? isRecurring,
  String? frequency,
  DateTime? nextDate,
}) =>
    TransactionsStruct(
      amount: amount,
      date: date,
      accountId: accountId ?? AccountsStruct(),
      categoryId: categoryId ?? CategoriesStruct(),
      description: description,
      transactionType: transactionType,
      isRecurring: isRecurring,
      frequency: frequency,
      nextDate: nextDate,
    );
