import 'package:flutter/material.dart';
import '../datamodel.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    var p = Product(id:1,name:"Dummy Product",price:1.25,image:"");
    return ProductItem(product: p);
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
        child: Text(product.name),
      ),
    );
  }
}
