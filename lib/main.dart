import 'package:flutter/material.dart';
import 'package:news/core/di/di.dart';
import 'package:news/core/network/dio_helper/dio_helper.dart';
import 'package:news/news_app.dart';

void main() {
  setGetIt();
  runApp(const NewsApp());
}

