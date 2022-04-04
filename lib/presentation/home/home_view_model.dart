import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_image_search/domain/repository/photo_api_repository.dart';
import 'package:flutter_image_search/domain/model/pixabay_photo.dart';

class HomeViewModel with ChangeNotifier {
  HomeViewModel(this.repository);

  final PhotoApiRepository repository;

  List<PixabayPhoto> get photos => _photos;
  List<PixabayPhoto> _photos = [];

  Future fetch(String query) async {
    final result = await repository.fetch(query);
    _photos = result;
    notifyListeners();
  }
}
