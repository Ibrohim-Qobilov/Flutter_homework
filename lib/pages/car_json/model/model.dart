class Car {
  int? _year;
  int? _id;
  int? _horsepower;
  String? _make;
  String? _model;
  int? _price;
  String? _imgUrl;

  Car(
      {required int year,
      required int id,
      required int horsepower,
      required String make,
      required String model,
      required int price,
      required String imgUrl}) {
    this._year = year;
    this._id = id;
    this._horsepower = horsepower;
    this._make = make;
    this._model = model;
    this._price = price;
    this._imgUrl = imgUrl;
  }

  int get year => _year!;
  set year(int year) => _year = year;
  int get id => _id!;
  set id(int id) => _id = id;
  int get horsepower => _horsepower!;
  set horsepower(int horsepower) => _horsepower = horsepower;
  String get make => _make!;
  set make(String make) => _make = make;
  String get model => _model!;
  set model(String model) => _model = model;
  int get price => _price!;
  set price(int price) => _price = price;
  String get imgUrl => _imgUrl!;
  set imgUrl(String imgUrl) => _imgUrl = imgUrl;

  Car.fromJson(Map<String, dynamic> json) {
    _year = json['year'];
    _id = json['id'];
    _horsepower = json['horsepower'];
    _make = json['make'];
    _model = json['model'];
    _price = json['price'];
    _imgUrl = json['img_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this._year;
    data['id'] = this._id;
    data['horsepower'] = this._horsepower;
    data['make'] = this._make;
    data['model'] = this._model;
    data['price'] = this._price;
    data['img_url'] = this._imgUrl;
    return data;
  }
}
