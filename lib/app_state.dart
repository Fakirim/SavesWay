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
  set categories(List<CategoriesStruct> value) {
    _categories = value;
    prefs.setStringList(
        'ff_categories', value.map((x) => x.serialize()).toList());
  }

  void addToCategories(CategoriesStruct value) {
    _categories.add(value);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void removeFromCategories(CategoriesStruct value) {
    _categories.remove(value);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCategories(int index) {
    _categories.removeAt(index);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void updateCategoriesAtIndex(
    int index,
    CategoriesStruct Function(CategoriesStruct) updateFn,
  ) {
    _categories[index] = updateFn(_categories[index]);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCategories(int index, CategoriesStruct value) {
    _categories.insert(index, value);
    prefs.setStringList(
        'ff_categories', _categories.map((x) => x.serialize()).toList());
  }

  List<TransactionsStruct> _transactions = [];
  List<TransactionsStruct> get transactions => _transactions;
  set transactions(List<TransactionsStruct> value) {
    _transactions = value;
    prefs.setStringList(
        'ff_transactions', value.map((x) => x.serialize()).toList());
  }

  void addToTransactions(TransactionsStruct value) {
    _transactions.add(value);
    prefs.setStringList(
        'ff_transactions', _transactions.map((x) => x.serialize()).toList());
  }

  void removeFromTransactions(TransactionsStruct value) {
    _transactions.remove(value);
    prefs.setStringList(
        'ff_transactions', _transactions.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTransactions(int index) {
    _transactions.removeAt(index);
    prefs.setStringList(
        'ff_transactions', _transactions.map((x) => x.serialize()).toList());
  }

  void updateTransactionsAtIndex(
    int index,
    TransactionsStruct Function(TransactionsStruct) updateFn,
  ) {
    _transactions[index] = updateFn(_transactions[index]);
    prefs.setStringList(
        'ff_transactions', _transactions.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTransactions(int index, TransactionsStruct value) {
    _transactions.insert(index, value);
    prefs.setStringList(
        'ff_transactions', _transactions.map((x) => x.serialize()).toList());
  }

  List<BudgetsStruct> _budgets = [];
  List<BudgetsStruct> get budgets => _budgets;
  set budgets(List<BudgetsStruct> value) {
    _budgets = value;
    prefs.setStringList(
        'ff_budgets', value.map((x) => x.serialize()).toList());
  }

  void addToBudgets(BudgetsStruct value) {
    _budgets.add(value);
    prefs.setStringList(
        'ff_budgets', _budgets.map((x) => x.serialize()).toList());
  }

  void removeFromBudgets(BudgetsStruct value) {
    _budgets.remove(value);
    prefs.setStringList(
        'ff_budgets', _budgets.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromBudgets(int index) {
    _budgets.removeAt(index);
    prefs.setStringList(
        'ff_budgets', _budgets.map((x) => x.serialize()).toList());
  }

  void updateBudgetsAtIndex(
    int index,
    BudgetsStruct Function(BudgetsStruct) updateFn,
  ) {
    _budgets[index] = updateFn(_budgets[index]);
    prefs.setStringList(
        'ff_budgets', _budgets.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInBudgets(int index, BudgetsStruct value) {
    _budgets.insert(index, value);
    prefs.setStringList(
        'ff_budgets', _budgets.map((x) => x.serialize()).toList());
  }

  List<AccountsStruct> _accounts = [];
  List<AccountsStruct> get accounts => _accounts;
  set accounts(List<AccountsStruct> value) {
    _accounts = value;
    prefs.setStringList(
        'ff_accounts', value.map((x) => x.serialize()).toList());
  }

  void addToAccounts(AccountsStruct value) {
    _accounts.add(value);
    prefs.setStringList(
        'ff_accounts', _accounts.map((x) => x.serialize()).toList());
  }

  void removeFromAccounts(AccountsStruct value) {
    _accounts.remove(value);
    prefs.setStringList(
        'ff_accounts', _accounts.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAccounts(int index) {
    _accounts.removeAt(index);
    prefs.setStringList(
        'ff_accounts', _accounts.map((x) => x.serialize()).toList());
  }

  void updateAccountsAtIndex(
    int index,
    AccountsStruct Function(AccountsStruct) updateFn,
  ) {
    _accounts[index] = updateFn(_accounts[index]);
    prefs.setStringList(
        'ff_accounts', _accounts.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAccounts(int index, AccountsStruct value) {
    _accounts.insert(index, value);
    prefs.setStringList(
        'ff_accounts', _accounts.map((x) => x.serialize()).toList());
  }

  List<HeadCategoryStruct> _headCategory = [];
  List<HeadCategoryStruct> get headCategory => _headCategory;
  set headCategory(List<HeadCategoryStruct> value) {
    _headCategory = value;
    prefs.setStringList(
        'ff_headCategory', value.map((x) => x.serialize()).toList());
  }

  void addToHeadCategory(HeadCategoryStruct value) {
    _headCategory.add(value);
    prefs.setStringList(
        'ff_headCategory', _headCategory.map((x) => x.serialize()).toList());
  }

  void removeFromHeadCategory(HeadCategoryStruct value) {
    _headCategory.remove(value);
    prefs.setStringList(
        'ff_headCategory', _headCategory.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromHeadCategory(int index) {
    _headCategory.removeAt(index);
    prefs.setStringList(
        'ff_headCategory', _headCategory.map((x) => x.serialize()).toList());
  }

  void updateHeadCategoryAtIndex(
    int index,
    HeadCategoryStruct Function(HeadCategoryStruct) updateFn,
  ) {
    _headCategory[index] = updateFn(_headCategory[index]);
    prefs.setStringList(
        'ff_headCategory', _headCategory.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInHeadCategory(int index, HeadCategoryStruct value) {
    _headCategory.insert(index, value);
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
