import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETALLACCOUNTS
Future<List<GetAllAccountsRow>> performGetAllAccounts(
  Database database,
) {
  final query = '''
SELECT * from Accounts
''';
  return _readQuery(database, query, (d) => GetAllAccountsRow(d));
}

class GetAllAccountsRow extends SqliteRow {
  GetAllAccountsRow(Map<String, dynamic> data) : super(data);
}

/// END GETALLACCOUNTS
