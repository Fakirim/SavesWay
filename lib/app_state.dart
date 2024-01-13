import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _categories = prefs
              .getStringList('ff_categories')
              ?.map((x) {
                try {
                  return CategoriesStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _categories;
    });
    _safeInit(() {
      _transactions = prefs
              .getStringList('ff_transactions')
              ?.map((x) {
                try {
                  return TransactionsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _transactions;
    });
    _safeInit(() {
      _budgets = prefs
              .getStringList('ff_budgets')
              ?.map((x) {
                try {
                  return BudgetsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _budgets;
    });
    _safeInit(() {
      _accounts = prefs
              .getStringList('ff_accounts')
              ?.map((x) {
                try {
                  return AccountsStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _accounts;
    });
    _safeInit(() {
      _headCategory = prefs
              .getStringList('ff_headCategory')
              ?.map((x) {
                try {
                  return HeadCategoryStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _headCategory;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CategoriesStruct> _categories = [];
  List<CategoriesStruct> get categories => _categories;
  set categories(List<CategoriesStruct> _value) {
    _categories = _value;
    prefs.setStringList(
        'ff_categories', _value.map((x) => x.serialize()).toList());
  }

  void addToCategories(CategoriesStruct _value) {
    _categories.add(_value);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void removeFromCategories(CategoriesStruct _value) {
    _categories.remove(_value);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCategories(int _index) {
    _categories.removeAt(_index);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void updateCategoriesAtIndex(
    int _index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    _categories[_index] = updateFn(_categories[_index]);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCategories(int _index, CategoriesStruct _value) {
    _categories.insert(_index, _value);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  List<TransactionsStruct> _transactions = [];
  List<TransactionsStruct> get transactions => _transactions;
  set transactions(List<TransactionsStruct> _value) {
    _transactions = _value;
    prefs.setStringList(
        'ff_transactions', _value.map((x) => x.serialize()).toList());
  }

  void addToTransactions(TransactionsStruct _value) {
    _transactions.add(_value);
    prefs.setStringList(
        'ff_transactions', _transactions.map((x) => x.serialize()).toList());
  }

  void removeFromTransactions(TransactionsStruct _value) {
    _transactions.remove(_value);
    prefs.setStringList(
        'ff_transactions', _transactions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTransactions(int _index) {
    _transactions.removeAt(_index);
    prefs.setStringList(
        'ff_transactions', _transactions.map((x) => x.serialize()).toList());
  }

  void updateTransactionsAtIndex(
    int _index,
    TransactionsStruct Function(TransactionsStruct) updateFn,
  ) {
    _transactions[_index] = updateFn(_transactions[_index]);
    prefs.setStringList(
        'ff_transactions', _transactions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTransactions(int _index, TransactionsStruct _value) {
    _transactions.insert(_index, _value);
    prefs.setStringList(
        'ff_transactions', _transactions.map((x) => x.serialize()).toList());
  }

  List<BudgetsStruct> _budgets = [];
  List<BudgetsStruct> get budgets => _budgets;
  set budgets(List<BudgetsStruct> _value) {
    _budgets = _value;
    prefs.setStringList(
        'ff_budgets', _value.map((x) => x.serialize()).toList());
  }

  void addToBudgets(BudgetsStruct _value) {
    _budgets.add(_value);
    prefs.setStringList(
        'ff_budgets', _budgets.map((x) => x.serialize()).toList());
  }

  void removeFromBudgets(BudgetsStruct _value) {
    _budgets.remove(_value);
    prefs.setStringList(
        'ff_budgets', _budgets.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromBudgets(int _index) {
    _budgets.removeAt(_index);
    prefs.setStringList(
        'ff_budgets', _budgets.map((x) => x.serialize()).toList());
  }

  void updateBudgetsAtIndex(
    int _index,
    BudgetsStruct Function(BudgetsStruct) updateFn,
  ) {
    _budgets[_index] = updateFn(_budgets[_index]);
    prefs.setStringList(
        'ff_budgets', _budgets.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInBudgets(int _index, BudgetsStruct _value) {
    _budgets.insert(_index, _value);
    prefs.setStringList(
        'ff_budgets', _budgets.map((x) => x.serialize()).toList());
  }

  List<AccountsStruct> _accounts = [];
  List<AccountsStruct> get accounts => _accounts;
  set accounts(List<AccountsStruct> _value) {
    _accounts = _value;
    prefs.setStringList(
        'ff_accounts', _value.map((x) => x.serialize()).toList());
  }

  void addToAccounts(AccountsStruct _value) {
    _accounts.add(_value);
    prefs.setStringList(
        'ff_accounts', _accounts.map((x) => x.serialize()).toList());
  }

  void removeFromAccounts(AccountsStruct _value) {
    _accounts.remove(_value);
    prefs.setStringList(
        'ff_accounts', _accounts.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAccounts(int _index) {
    _accounts.removeAt(_index);
    prefs.setStringList(
        'ff_accounts', _accounts.map((x) => x.serialize()).toList());
  }

  void updateAccountsAtIndex(
    int _index,
    AccountsStruct Function(AccountsStruct) updateFn,
  ) {
    _accounts[_index] = updateFn(_accounts[_index]);
    prefs.setStringList(
        'ff_accounts', _accounts.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAccounts(int _index, AccountsStruct _value) {
    _accounts.insert(_index, _value);
    prefs.setStringList(
        'ff_accounts', _accounts.map((x) => x.serialize()).toList());
  }

  List<HeadCategoryStruct> _headCategory = [];
  List<HeadCategoryStruct> get headCategory => _headCategory;
  set headCategory(List<HeadCategoryStruct> _value) {
    _headCategory = _value;
    prefs.setStringList(
        'ff_headCategory', _value.map((x) => x.serialize()).toList());
  }

  void addToHeadCategory(HeadCategoryStruct _value) {
    _headCategory.add(_value);
    prefs.setStringList(
        'ff_headCategory', _headCategory.map((x) => x.serialize()).toList());
  }

  void removeFromHeadCategory(HeadCategoryStruct _value) {
    _headCategory.remove(_value);
    prefs.setStringList(
        'ff_headCategory', _headCategory.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromHeadCategory(int _index) {
    _headCategory.removeAt(_index);
    prefs.setStringList(
        'ff_headCategory', _headCategory.map((x) => x.serialize()).toList());
  }

  void updateHeadCategoryAtIndex(
    int _index,
    HeadCategoryStruct Function(HeadCategoryStruct) updateFn,
  ) {
    _headCategory[_index] = updateFn(_headCategory[_index]);
    prefs.setStringList(
        'ff_headCategory', _headCategory.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInHeadCategory(int _index, HeadCategoryStruct _value) {
    _headCategory.insert(_index, _value);
    prefs.setStringList(
        'ff_headCategory', _headCategory.map((x) => x.serialize()).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
