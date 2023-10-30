import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  // Construtor com acesso privado
  DB._();
  // Cria uma instância de DB
  static final DB instance = DB._();
  // Instancia do SQLite
  static Database? _database;

  get database async {
    if (_database != null) return _database;
    return await _initDatabase();
  }

  _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'easyTable.db'),
      version: 1,
      onCreate: _onCreate,
    );
  }

  _onCreate(db, version) async {
    await db.execute(_conta);
    await db.execute(_mesa);
    await db.execute(_produto);
    await db.execute(_pedido);
    await db.execute(_pedidoProduto);
  }

  String get _conta => '''
    CREATE TABLE conta (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT NOT NULL,
      email TEXT NOT NULL,
      senha TEXT NOT NULL,
    )
  ''';

  String get _mesa => '''
    CREATE TABLE mesa (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      numero INTEGER NOT NULL,
      status TEXT NOT NULL,
      conta_id INTEGER NOT NULL,
      FOREIGN KEY (conta_id) REFERENCES conta (id)
    )
  ''';

  String get _produto => '''
    CREATE TABLE produto (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      nome TEXT NOT NULL,
      descricao TEXT,
      preco REAL NOT NULL,
      imagem TEXT NOT NULL,
    )
  ''';

  String get _pedido => '''
    CREATE TABLE pedido (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      data TEXT NOT NULL,
      mesa_id INTEGER NOT NULL,
      conta_id INTEGER NOT NULL,
      FOREIGN KEY (mesa_id) REFERENCES mesa (id),
      FOREIGN KEY (conta_id) REFERENCES conta (id)
    )
  ''';

  String get _pedidoProduto => '''
    CREATE TABLE pedido_produto (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      quantidade INTEGER NOT NULL,
      pedido_id INTEGER NOT NULL,
      produto_id INTEGER NOT NULL,
      FOREIGN KEY (pedido_id) REFERENCES pedido (id),
      FOREIGN KEY (produto_id) REFERENCES produto (id)
    )
  ''';
}
