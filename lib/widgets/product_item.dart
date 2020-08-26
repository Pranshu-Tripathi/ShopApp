import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String imageUrl;
  final double price;

  ProductItem(this.title, this.id, this.description, this.imageUrl, this.price);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                arguments: id);
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
          leading: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
              color: Theme.of(context).accentColor),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
