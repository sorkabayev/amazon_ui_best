class Product {
  String image;

  Product(this.image);
  static List<Product> products = [
    Product("asset/image/item_1.jpeg"),
    Product("asset/image/item_2.jpeg"),
    Product("asset/image/item_3.jpeg"),
    Product("asset/image/item_4.jpeg"),
  ];
}

class Product2 {
  String image2;

  Product2(this.image2);

  static List<Product2> product2 = [
    Product2("asset/image/item_5.jpeg"),
    Product2("asset/image/item_7.jpeg"),
  ];
}