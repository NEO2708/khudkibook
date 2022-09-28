import 'package:khudkibook/models/app.dart';

class MainModel {
  late AppModel _mainapp;

  //
  final List<int> _itemIds = [];

//
  AppModel get mainapp => _mainapp;

  //
  set mainapp(AppModel newMainapp) {
    assert(newMainapp != null);
    _mainapp = newMainapp;
  }

  // Get items
  List<Items> get product =>
      _itemIds.map((id) => _mainapp.getById(id)).toList();

  void add(Items product) {
    _itemIds.add(product.id);
    if (product.id == 1 && product.id == 2) {
      print("yes");
    }
  }
}
