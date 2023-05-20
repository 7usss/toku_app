import 'package:flutter/material.dart';

class Review {
  final String title;
  final String description;
  final IconData icon_;

  Review({required this.title, required this.description, required this.icon_});

  List<Review> list = [];
}
