import 'package:flutter_application_3/models/tk_category.dart';
import 'package:flutter_application_3/models/tk_product.dart';

class TkDataSet {
  static List<TkProduct> productList = [
    TkProduct(
      id: 1,
      name: 'Nike Air Max 200',
      price: 240.00,
      isSelected: true,
      isliked: false,
      image: 'assets/images/shooe_tilt_1.png',
      category: 'Sneakers',
    ),
    TkProduct(
      id: 2,
      name: 'Nike Air Max 97',
      price: 220.00,
      isliked: false,
      image: 'assets/images/shoe_tilt_2.png',
      category: 'Sneakers',
    ),
    TkProduct(
      id: 3,
      name: 'Rolex Submariner',
      price: 5000.00,
      isliked: false,
      image: 'assets/images/watch-rollex.png',
      category: 'Watches',
    ),
    TkProduct(
      id: 4,
      name: 'Apple iPhone 12',
      price: 999.00,
      isliked: false,
      image: 'assets/images/electronics-iphone-12.png',
      category: 'Electronics',
    ),
    TkProduct(
      id: 5,
      name: 'Adidas Track Suit',
      price: 150.00,
      isliked: false,
      image: 'assets/images/apparel-addidas-shoe.png',
      category: 'Apparel',
    ),
    TkProduct(
      id: 6,
      name: 'Louis Vuitton Bag',
      price: 1200.00,
      isliked: false,
      image: 'assets/images/bags-louis-vuitton.png',
      category: 'Bags',
    ),
    // Ajoutez d'autres produits ici
  ];

  static List<TkProduct> cartList = [
    TkProduct(
      id: 1,
      name: 'Nike Air Max 200',
      price: 240.00,
      isSelected: true,
      isliked: false,
      image: 'assets/small_tilt_shoe_1.png',
      category: 'Sneakers',
    ),
    TkProduct(
      id: 2,
      name: 'Nike Air Max 97',
      price: 190.00,
      isliked: false,
      image: 'assets/small_tilt_shoe_2.png',
      category: 'Sneakers',
    ),
    TkProduct(
      id: 3,
      name: 'Nike Air Max 92607',
      price: 220.00,
      isliked: false,
      image: 'assets/small_tilt_shoe_3.png',
      category: 'Sneakers',
    ),
  ];

  static List<TkCategory> categoryList = [
    TkCategory(
      id: 1,
      name: 'Sneakers',
      image: 'assets/images/sneakers.png',
      isSelected: true,
    ),
    TkCategory(
      id: 2,
      name: 'Apparels',
      image: 'assets/images/cloth.png',
    ),
    TkCategory(
      id: 3,
      name: 'Watches',
      image: 'assets/images/watches.png',
    ),
    TkCategory(
      id: 4,
      name: 'Electronics',
      image: 'assets/images/electronics.png',
    ),
    TkCategory(
      id: 5,
      name: 'Bags',
      image: 'assets/images/bags.png',
    )
  ];
}
