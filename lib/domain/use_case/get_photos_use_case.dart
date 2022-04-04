import 'dart:math';

import 'package:flutter_image_search/data/sorce/result.dart';
import 'package:flutter_image_search/domain/model/pixabay_photo.dart';
import 'package:flutter_image_search/domain/repository/photo_api_repository.dart';

class GetPhotosUseCase {
  GetPhotosUseCase(this.repository);

  final PhotoApiRepository repository;

  Future<Result<List<PixabayPhoto>>> excute(String query) async {
    final result = await repository.fetch(query);

    return result.when(success: (photos) {
      return Result.success(photos.sublist(0, min(3, photos.length)));
    }, error: (message) {
      return Result.error(message);
    });
  }
}
