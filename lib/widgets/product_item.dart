import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final double price;
  final String imageUrl;

  ProductItem({
    this.title,
    this.price,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          color: Theme.of(context).accentColor,
          onPressed: () {},
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          color: Theme.of(context).accentColor,
          onPressed: () {},
        ),
      ),
    );
  }
}
