

class ExampleData {
  List<String> list;

  static final ExampleData _instance = ExampleData._internal();
  factory ExampleData() {
    return _instance;
  }
  ExampleData._internal();

//  List<Cate> get cate1List {
//    if(cateList == null ) return [];
//    return cateList.where((e) => e.size == 1).toList();
//  }
}