class Product {
  //Properties
  int id;
  String name;
  double price;
  String image;
  String get imageUrl =>
      "https://firtman.github.io/coffeemasters/api/images/$image";

  //Constructor
  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  });

  // Factory Constructor
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      price: json['price'] as double,
      image: json['image'] as String,
    );
  }
  //By using a factory constructor,
  //we can create instances of MyClass in a more flexible way,
  //depending on the input parameters we pass to the constructor.
}

class Category {
  String name;
  List<Product> products;

  Category({required this.name, required this.products});

  factory Category.fromJson(Map<String, dynamic> json) {
    var productJson = json['products'] as Iterable<dynamic>;
    //makes products iterable
    var products = productJson.map((p) => Product.fromJson(p)).toList();
    //converts json to list
    return Category(name: json['name'] as String, products: products);
    //creates a category with name and list of products
  }
}

class ItemInCart {
  Product product;
  int quantity;
  ItemInCart({required this.product, required this.quantity});
}
