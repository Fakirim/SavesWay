// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AccountsStruct extends BaseStruct {
  AccountsStruct({
    String? name,
    String? accountType,
    double? balance,
    DateTime? createdAt,
  })  : _name = name,
        _accountType = accountType,
        _balance = balance,
        _createdAt = createdAt;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "account_type" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  set accountType(String? val) => _accountType = val;
  bool hasAccountType() => _accountType != null;

  // "balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  set balance(double? val) => _balance = val;
  void incrementBalance(double amount) => _balance = balance + amount;
  bool hasBalance() => _balance != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;
  bool hasCreatedAt() => _createdAt != null;

  static AccountsStruct fromMap(Map<String, dynamic> data) => AccountsStruct(
        name: data['name'] as String?,
        accountType: data['account_type'] as String?,
        balance: castToType<double>(data['balance']),
        createdAt: data['created_at'] as DateTime?,
      );

  static AccountsStruct? maybeFromMap(dynamic data) =>
      data is Map ? AccountsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'account_type': _accountType,
        'balance': _balance,
        'created_at': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'account_type': serializeParam(
          _accountType,
          ParamType.String,
        ),
        'balance': serializeParam(
          _balance,
          ParamType.double,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static AccountsStruct fromSerializableMap(Map<String, dynamic> data) =>
      AccountsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        accountType: deserializeParam(
          data['account_type'],
          ParamType.String,
          false,
        ),
        balance: deserializeParam(
          data['balance'],
          ParamType.double,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'AccountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AccountsStruct &&
        name == other.name &&
        accountType == other.accountType &&
        balance == other.balance &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, accountType, balance, createdAt]);
}

AccountsStruct createAccountsStruct({
  String? name,
  String? accountType,
  double? balance,
  DateTime? createdAt,
}) =>
    AccountsStruct(
      name: name,
      accountType: accountType,
      balance: balance,
      createdAt: createdAt,
    );
