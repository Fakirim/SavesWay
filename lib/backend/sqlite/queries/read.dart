import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN GETALLACCOUNT
Future<List<GetAllAccountRow>> performGetAllAccount(
  Database database,
) {
  final query = '''
SELECT * FROM accounts;
''';
  return _readQuery(database, query, (d) => GetAllAccountRow(d));
}

class GetAllAccountRow extends SqliteRow {
  GetAllAccountRow(Map<String, dynamic> data) : super(data);

  int get id => data['ID'] as int;
  String get name => data['Name'] as String;
  String get type => data['Type'] as String;
  int get balance => data['Balance'] as int;
}

/// END GETALLACCOUNT
