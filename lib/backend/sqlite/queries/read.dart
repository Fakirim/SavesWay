import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GET ALL ACCOUNT
Future<List<GetAllAccountRow>> performGetAllAccount(
  Database database,
) {
  const query = '''
SELECT * FROM accounts;
''';
  return _readQuery(database, query, (d) => GetAllAccountRow(d));
}

class GetAllAccountRow extends SqliteRow {
  GetAllAccountRow(super.data);

  int get id => data['ID'] as int;
  String get name => data['Name'] as String;
  String get type => data['Type'] as String;
  double get balance => data['Balance'] as double;
}

/// END GET ALL ACCOUNT
