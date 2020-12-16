part of 'model.dart';

class Shoes {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final int price;
  final double rate;
  final int discount;
  final bool like;

  Shoes(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.price,
      this.rate,
      this.like = false,
      this.discount = 0});
}

List<Shoes> mockShoes = [
  Shoes(
      id: 1,
      picturePath: 'assets/snik11.png',
      name: 'Oz Pro III',
      description: 'A good sport shoe for running',
      price: 200,
      discount: 40,
      rate: 3.5),
  Shoes(
      id: 2,
      picturePath: 'assets/snik21.png',
      name: 'Nike Presto',
      description: 'A good sport shoe for running',
      price: 220,
      rate: 4.2),
  Shoes(
      id: 3,
      picturePath: 'assets/snik31.png',
      name: 'Nike X Yeezy',
      description: 'A good sport shoe for running',
      price: 259,
      discount: 20,
      rate: 4.2),
  Shoes(
      id: 4,
      picturePath: 'assets/snik41.png',
      name: 'Nike Air Vapormax',
      description: 'A good sport shoe for running',
      price: 279,
      rate: 5.0),
  Shoes(
      id: 5,
      picturePath: 'assets/snik51.png',
      name: 'Nike Hypermax',
      description: 'A good sport shoe for running',
      price: 279,
      rate: 3.0),
  Shoes(
      id: 6,
      picturePath: 'assets/snik61.png',
      name: 'Nike Training Shoes 2019',
      description: 'A good sport shoe for running',
      price: 319,
      discount: 60,
      rate: 2.8),
];
