class ProductModel {
  final int id;
  final String name;
  final String image;
   int quantity;
  final double price;

  ProductModel({
    required this.id,
    required this.name,
    required this.image,
    required this.quantity,
    required this.price,
  });
}

List<ProductModel> exProducts = [
  ProductModel(
    id: 1,
    name: "Apple",
    image: "assets/images/Apple.png",
    quantity: 1,
    price: 3.5,
  ),
  ProductModel(
    id: 1,
    name: "Banana",
    image: "assets/images/Banana.png",
    quantity: 1,
    price: 1.0,
  ),
  ProductModel(
    id: 3,
    name: "Apple",
    image: "assets/images/Apple.png",
    quantity: 1,
    price: 4.0,
  ),
  ProductModel(
    id: 4,
    name: "Banana",
    image: "assets/images/Banana.png",
    quantity: 1,
    price:5.0,
  ),
  ProductModel(
    id: 5,
    name: "Apple",
    image: "assets/images/Apple.png",
    quantity: 1,
    price:6.0,
  ),
];
List<ProductModel> offerProducts = [
  ProductModel(
    id: 6,
    name: "Apple",
    image: "assets/images/Apple.png",
    quantity: 1,
    price: 3.5,
  ),
  ProductModel(
    id: 7,
    name: "Banana",
    image: "assets/images/Banana.png",
    quantity: 1,
    price: 1.0,
  ),
  ProductModel(
    id: 8,
    name: "Apple",
    image: "assets/images/Apple.png",
    quantity: 1,
    price: 4.0,
  ),
  ProductModel(
    id: 9,
    name: "Banana",
    image: "assets/images/Banana.png",
    quantity: 1,
    price:5.0,
  ),
  ProductModel(
    id: 10,
    name: "Apple",
    image: "assets/images/Apple.png",
    quantity: 1,
    price:6.0,
  ),
];
