import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:make_api_calls_using_cubit/Models/rating.dart';

class ProductModel extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();

  final int id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  final double rating;
  final RatingModel ratingModel;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
    required this.ratingModel,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'description': description,
      'category': category,
      'image': image,
      'rating': rating,
      'ratingModel': ratingModel.toMap(),
    };
  }
}
