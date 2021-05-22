import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  ProductItem(this.product);
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(product.imageUrl, fit: BoxFit.cover),
      footer: GridTileBar(
        backgroundColor: Colors.black45,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        title: Text(product.title, textAlign: TextAlign.center),
        trailing: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
      ),
    );
  }
}
