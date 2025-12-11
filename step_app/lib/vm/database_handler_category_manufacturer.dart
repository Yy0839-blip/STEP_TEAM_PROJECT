/*class DatabaseHandler {
  //Connection 및 Table Create
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'category_manufacturer.db'),
      onCreate: (db, version) async {
        await db.execute("""
          create table category_manufacturer(
            category_manufacturer_id integer primary key autoincrement,
            category_manufacturer_name text
          )
          """);
      },
      version: 1,
    );
  } //initialDB

  Future<int> insertCategory_manufacturer(
    Category_manufacturer category_manufacturer,
  ) async {
    int result = 0;
    final Database db = await initializeDB();
    result = await db.rawInsert(
      """
      insert into category_manufacturer
      (category_manufacturer_name)
      values
      (?)
      """,
      [category_manufacturer_name],
    ); //auto increment 생략
    return result;
  } 

  //검색
  Future<List<Category_manufacturer>> queryCategory_manufacturer() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db
        .rawQuery('select * from category_manufacturer');
    return queryResult
        .map((e) => Category_manufacturer.fromMap(e))
        .toList();
  } 

  // 수정
  Future<int> updateCategory_manufacturer(
    Category_manufacturer,
    category_manufacturer,
  ) async {
    int result = 0;
    final Database db = await initializeDB();
    result = await db.rawUpdate(
      """
      update Category_manufacturer
      set Category_manufacturer_name = ?
      where id = ?
      """,
      [category_manufacturer.name, category_manufacturer.id],
    ); //auto increment 생략
    return result;
  } 

  //삭제
  Future deleteCategory_manufacturer(int category_manufacturer) async {
    final Database db = await initializeDB();
    await db.rawDelete(
      'delete from category_manufacturer where id = ?',
      [id],
    );
  }
}
*/
