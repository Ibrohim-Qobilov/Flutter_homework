import 'package:allhomework/home_work_12/data/car_list.dart';
import 'package:allhomework/home_work_12/data/category_list.dart';
import 'package:allhomework/home_work_12/models/car_model.dart';
import 'package:allhomework/home_work_12/models/category_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Size? _size;

SingleChildScrollView getExplorePage(BuildContext context, Widget widget) {
  _size = MediaQuery.of(context).size;
  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getSearchBox(context),
        widget,
        _getDivider(),
        _getCarInfoList(),
        _setSomeText("Trending Categories", 24.0),
        _getCategoryListWithImages(),
      ],
    ),
  );
}

Row _getSearchBox(BuildContext context) => Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 16.0),
            width: _size!.width * 0.8,
            child: TextField(
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none),
                fillColor: Colors.grey[300],
                filled: true,
                hintText: "What transport do you need?",
                prefixIcon:
                    const Icon(CupertinoIcons.search, color: Colors.grey),
                contentPadding: EdgeInsets.zero,
              ),
              onSubmitted: (value) {},
            ),
          ),
        ),
        Card(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          elevation: 3.0,
          child: Container(
            margin: const EdgeInsets.all(8.0),
            child: const Icon(Icons.menu_open_outlined),
          ),
        ),
      ],
    );

SizedBox _getCarInfoList() => SizedBox(
      height: _size!.width,
      child: ListView.builder(
          itemCount: carList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            Car car = carList[index];
            return _getCarInfoLayout(car);
          }),
    );

Container _getCarInfoLayout(Car car) => Container(
      width: _size!.width * 0.9,
      height: _size!.width * 0.9,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        car.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        ),
                      ),
                      Text(
                        "${car.madeYear} | ${car.type}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.yellow[100]),
                    child: Text(
                      "⭐️${car.rating}",
                      style: TextStyle(
                        color: Colors.yellow[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                  height: _size!.width * 0.4,
                  width: _size!.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(car.imageUrl)))),
              _getAgreementPart(car),
            ],
          ),
        ),
      ),
    );

_getAgreementPart(Car car) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "\$${car.pricePerDay}",
              ),
              const TextSpan(text: " per day", style: TextStyle(fontSize: 14.0))
            ],
            style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 24.0),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Book Now"),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0))),
        ),
      ],
    );


Container _getCategoryListWithImages() => Container(
      height: _size!.height * 0.28,
      child: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        children: categoryList
            .map((category) => _setTrendingCategoriesItem(category))
            .toList(),
      ),
    );


Container _setTrendingCategoriesItem(Category category) => Container(
      width: _size!.width * 0.4,
      height: _size!.width * 0.3,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.blue,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(category.imageUrl),
        ),
      ),
      child: Text(
        category.name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );

_setSomeText(String text, double size) => Container(
    margin: const EdgeInsets.only(
      left: 16.0,
      right: 16.0,
      top: 32.0,
      bottom: 16.0,
    ),
    child: Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
    ));

Divider _getDivider() => const Divider(
      thickness: 1.0,
    );
