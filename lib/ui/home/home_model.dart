import 'package:food_ui/common/constans/images.dart';

class HomeItemModel {
  final String image;
  final String title;
  final String description;
  final String price;

  HomeItemModel(
      {required this.image,
      required this.title,
      required this.description,
      required this.price});
}

List<HomeItemModel> avavibleFoodList = [
  HomeItemModel(
      image: Images.pizzafourth,
      title: 'Meat Pizza',
      description: 'Mixed Pizza',
      price: '\$ 8.30'),
  HomeItemModel(
      image: Images.pizzaSecound,
      title: 'Cheese Pizza',
      description: 'Mixed Pizza',
      price: '\$ 7.30'),
  HomeItemModel(
      image: Images.pizzaFirst,
      title: 'Meat Pizza',
      description: 'Mixed Pizza',
      price: '\$ 8.30'),
  HomeItemModel(
      image: Images.pizzaTherd,
      title: 'California Pizza.',
      description: 'Mixed Pizza',
      price: '\$ 9.30'),
];
