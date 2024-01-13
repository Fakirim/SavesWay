import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETACCOUNTS
Future<List<GetAccountsRow>> performGetAccounts(
  Database database,
) {
  final query = '''
SELECT * FROM Accounts
''';
  return _readQuery(database, query, (d) => GetAccountsRow(d));
}

class GetAccountsRow extends SqliteRow {
  GetAccountsRow(Map<String, dynamic> data) : super(data);

  int get id => data['ID'] as int;
}

/// END GETACCOUNTS
