import 'package:flutter/material.dart';
import 'package:app_flutter_1/models/product.dart';

const LocationDetailRoute = "/location_detail";

class Location extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final products = Product.fetchAll();
    final product = products.first;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: ListView(
          children: products.map((e) => GestureDetector(
              child: Text(e.name),
              onTap:() => _onProductTap(context,product.id)
          )).toList(),
      ),
    );
  }

  void _onProductTap(BuildContext context, int productId) {
    Navigator.pushNamed(context, LocationDetailRoute, arguments: {'id': productId});
  }
}