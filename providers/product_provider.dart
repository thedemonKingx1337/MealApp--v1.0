import 'package:flutter/foundation.dart';
import '../models/product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: '80\'s Nigga-man',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://www.meme-arsenal.com/memes/1d288e01079f0d5bdee328508bd61dca.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Lady Tsunade',
      description: 'A nice pair of ( . Y  . )  ',
      price: 59.99,
      imageUrl:
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5f232676-ccb6-4c4a-b06d-b2df03daee60/d2mlx98-d759c88d-5451-475b-99f6-53f63984161f.jpg/v1/fill/w_752,h_1063,q_70,strp/sexy_tsunade_by_omega_deviant_d2mlx98-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTQ0NyIsInBhdGgiOiJcL2ZcLzVmMjMyNjc2LWNjYjYtNGM0YS1iMDZkLWIyZGYwM2RhZWU2MFwvZDJtbHg5OC1kNzU5Yzg4ZC01NDUxLTQ3NWItOTlmNi01M2Y2Mzk4NDE2MWYuanBnIiwid2lkdGgiOiI8PTEwMjQifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.EUmRvrFcMnax7bUQ-BEV6IZzZi0Kafh5RgM7x7vJF04',
    ),
    Product(
      id: 'p3',
      title: 'Beetel juice അണ്ണൻ ',
      description: 'Highly educated product',
      price: 19.99,
      imageUrl: 'https://i.ytimg.com/vi/-cHNoeQOb-I/mqdefault.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Owner',
      description: 'Jobless Highly Skilled Young Guy',
      price: 49.99,
      imageUrl:
          'https://i.pinimg.com/280x280_RS/ce/69/03/ce69036bc50a42a3b0ac2037e364f501.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere(
        (iterated_productElement) => iterated_productElement.id == id);
  }

  // void appProduct(){
  //   _items.add(value);
  //   notifyListeners();
  // }
}
