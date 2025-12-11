/*class DatabaseHandler {
  //Connection 및 Table Create
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'category_gender.db'),
      onCreate: (db, version) async {
        await db.execute("""
          create table category_gender(
            category_gender_id integer primary key autoincrement,
            category_gender_name text
          )
          """);
      },
      version: 1,
    );
  } //initialDB

  Future<int> insertCategory_gender(
    Category_gender category_gender,
  ) async {
    int result = 0;
    final Database db = await initializeDB();
    result = await db.rawInsert(
      """
      insert into category_gender
      (category_gender_name)
      values
      (?)
      """,
      [category_gender_name],
    ); //auto increment 생략
    return result;
  } 

  //검색
  Future<List<Category_gender>> queryCategory_gender() async {
    final Database db = await initializeDB();
    final List<Map<String, Object?>> queryResult = await db
        .rawQuery('select * from category_gender');
    return queryResult
        .map((e) => Category_gender.fromMap(e))
        .toList();
  } 

  // 수정
  Future<int> updateCategory_gender(
    Category_gender,
    category_gender,
  ) async {
    int result = 0;
    final Database db = await initializeDB();
    result = await db.rawUpdate(
      """
      update Category_gender
      set Category_gender_name = ?
      where id = ?
      """,
      [category_gender.name, category_gender.id],
    ); //auto increment 생략
    return result;
  } 

  //삭제
  Future deleteCategory_gender(int category_gender) async {
    final Database db = await initializeDB();
    await db.rawDelete(
      'delete from category_gender where id = ?',
      [id],
    );
  }
}
*/
