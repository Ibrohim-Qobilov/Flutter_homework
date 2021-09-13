import 'package:allhomework/home_work_12/models/category_model.dart';
import 'package:allhomework/home_work_12/models/transport_model.dart';


class Car extends Transport {
  Car(
    String name,
    String type,
    String color,
    String imageUrl,
    double pricePerDay,
    double rating,
    double spendFuel,
    Category category,
    int madeYear,
  ) : super(
          name,
          type,
          color,
          pricePerDay,
          rating,
          spendFuel,
          category,
          imageUrl,
          madeYear,
        );
}
