import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'textSection.dart';
import 'package:app_flutter_1/models/product.dart';

class LocationDetail extends StatelessWidget {
  final int _productId;
  LocationDetail(this._productId);

  @override
  Widget build(BuildContext context) {
    final products = Product.fetchAll();
    final product = products.first;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(product.imagePath),...textSections(product)
        ]
      ),
    );
  }

  List<Widget> textSections(Product p) {
    return p.categories.map((e) => TextSection(e.title, e.description)).toList();
  }
}