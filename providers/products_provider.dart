import 'package:flutter/foundation.dart';
import '../models/product.dart';

class Products_Provider with ChangeNotifier {
  bool showFavoritesOnly = false;

  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Andrew Tate',
      description: 'Top-G for sale!',
      price: 29000.50,
      imageUrl:
          'https://i.pinimg.com/564x/65/77/21/657721c16ef19261859b873dfe724671.jpg',
    ),
    Product(
      id: 'p2',
      title: 'കൊച്ചു-Funda',
      description: 'The best ഐശ്വര്യം removel item since 2000',
      price: 10000000,
      imageUrl:
          'https://i.pinimg.com/564x/48/7f/91/487f91dfa662be5281ee0f31de3fbe15.jpg',
    ),
    Product(
      id: 'p3',
      title: 'The Tsunade',
      description: 'A nice pair of ( . Y  . )  ',
      price: 50000.99,
      imageUrl:
          'https://i.pinimg.com/564x/f9/9a/8e/f99a8edf1da84fc99b11e617b632902f.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Beetel juice അണ്ണൻ ',
      description: 'Highly educated product',
      price: 8499.99,
      imageUrl: 'https://pbs.twimg.com/media/CdjzzIVUYAA0WOC.jpg',
    ),
    Product(
      id: 'p5',
      title: 'OWNER',
      description: 'Jobless Highly Skilled Young Guy',
      price: 666666.66,
      imageUrl:
          'https://i.pinimg.com/564x/0c/01/d4/0c01d4f1511e34117d55625c67ada8fa.jpg',
    ),
    Product(
      id: 'p6',
      title: 'Kidney',
      description: 'HighQuality fresh kidney. 50% off for iphone 14 exchange',
      price: 140000.99,
      imageUrl:
          'https://i.pinimg.com/564x/c4/b9/ee/c4b9ee0678c79c8f57a230c20fdb67a1.jpg',
    ),
    Product(
      id: 'p7',
      title: 'അമ്പാട്ടം പന്നിടെ ഉണ്ട ',
      description: 'Big ഉണ്ട for sale.',
      price: 140000.99,
      imageUrl:
          'https://cinemaelectronica.files.wordpress.com/2010/02/big-balls-crpd.jpg?w=497',
    ),
  ];

  List<Product> get items {
    // if we use this kind of filtration every screen using provider will have the filter applied products

    // if (showFavoritesOnly) {
    //   return _items.where((element) => element.isFavorite).toList();
    // }

    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items
        .where((product_element) => product_element.isFavorite)
        .toList();
  }

  Product findById(String id) {
    return _items.firstWhere(
        (iterated_productElement) => iterated_productElement.id == id);
  }

// we dont use this method which effects all the screens

  // void toggleShow_FavoritesOnly() {
  //   showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void toggle_ShowAll() {
  //   showFavoritesOnly = false;
  //   notifyListeners();
  // }
}
