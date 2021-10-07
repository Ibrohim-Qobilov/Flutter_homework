import 'package:allhomework/pages/home_work_12/models/category_model.dart';


class Transport {
  final String _name;
  final String _type;
  final String _color;
  final String _imageUrl;
  final double _pricePerDay;
  final double _rating;
  final double _spendFuel;
  final Category _category;
  final int _madeYear;

  Transport(
    this._name,
    this._type,
    this._color,
    this._pricePerDay,
    this._rating,
    this._spendFuel,
    this._category,
    this._imageUrl,
    this._madeYear,
  );

  String get name => _name;

  String get type => _type;

  double get spendFuel => _spendFuel;

  double get rating => _rating;

  double get pricePerDay => _pricePerDay;

  String get color => _color;

  Category get category => _category;

  String get imageUrl => _imageUrl;

  int get madeYear => _madeYear;
}
