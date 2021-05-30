import 'product_category.dart';

class Product {

  int id;
  String name;
  String imagePath;
  final List<ProductCategory> categories;

  Product(this.id,this.name,this.imagePath,this.categories);

  static List<Product> fetchAll() {
    return [
      Product(1,'product1', 'assets/images/logotcom.png', [
        ProductCategory('test1', 'dahsdkljha sakdhsakjdh aksdh askjdhkajsdh askd aksjdhk'),
        ProductCategory('test2', 'dahsdkljha ksajhdkasjhskjdhkajsdh askd aksjdhk'),
        ProductCategory('test3', 'dahsdkljha sashjdksajhd h askjdhkajsdh askd aksjdhk')
      ])
    ];
  }
}