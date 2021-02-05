import 'package:flutter/foundation.dart';



class Product with ChangeNotifier {
  final int id;
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final categoryId;
  final categoryName;
  bool isFavorite;
  List<String> tagId = []; 


  Product({
  this.id,
  this.title = '',
     this.description,
     this.price,
     this.imageUrl,
    this.categoryId,
    this.categoryName = '',
    this.isFavorite = false,
    this.tagId
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
     
  }
}