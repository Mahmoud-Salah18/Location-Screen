import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';

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

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<ProductModel> products = [
    ProductModel(
      id: 1,
      name: "Bell Pepper Red",
      image: "assets/images/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png",
      quantity: 1,
      price: 4.99,
    ),
    ProductModel(
      id: 2,
      name: "Egg Chicken Red",
      image: "assets/images/pngfuel 16.png",
      quantity: 1,
      price: 1.99,
    ),
    ProductModel(
      id: 3,
      name: "Organic Bananas",
      image: "assets/images/Banana.png",
      quantity: 1,
      price: 3.0,
    ),
    ProductModel(
      id: 4,
      name: "Ginger",
      image: "assets/images/pngfuel 3.png",
      quantity: 1,
      price: 2.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(centerTitle: true, title: Text("My Cart")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                var product = products[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              product.image,
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "12kg, Price",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 12),
                                Row(
                                  children: [
                                    _buildQuantityButton(
                                      icon: Icons.remove,
                                      onPressed: () {
                                        setState(() {
                                          if (product.quantity > 1) {
                                            product.quantity--;
                                          }
                                        });
                                      },
                                    ),
                                    SizedBox(width: 12),
                                    Text(
                                      '${product.quantity}',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(width: 12),
                                    _buildQuantityButton(
                                      icon: Icons.add,
                                      color: Colors.green,
                                      onPressed: () {
                                        setState(() {
                                          product.quantity++;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              icon: Icon(Icons.close, color: Colors.grey),
                              onPressed: () {},
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 12.0,
                                bottom: 8,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Go to Checkout',
                    style: TextStyle(fontSize: 18, color: AppColors.whiteColor),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildQuantityButton({
    required IconData icon,
    required VoidCallback onPressed,
    Color color = Colors.grey,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: color),
        ),
        child: Icon(icon, size: 18, color: color),
      ),
    );
  }
}
