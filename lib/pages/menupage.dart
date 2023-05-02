import 'package:flutter/material.dart';
import '../datamodel.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    var p = Product(id: 1, name: "Dummy Product", price: 1.25, image: "");
    var q = Product(
        id: 1, name: "Dummy Product much larger", price: 1.25, image: "");
    return ListView(
      children: [
        ProductItem(product: p),
        ProductItem(product: q),
      ],
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  //input property of widget must be declared as final

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/black_coffee.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("\$${product.price}"),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Add"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
