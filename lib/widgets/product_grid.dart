import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/providers/product_provider.dart';
import 'package:shop_app/widgets/product_item.dart';

class product_grid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final productData = Provider.of<ProductProvider>(context);
    final products = productData.item;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(
          products[i].title,
          products[i].id,
          products[i].description,
          products[i].imageUrl,
          products[i].price),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 3 / 2),
    );
  }
}