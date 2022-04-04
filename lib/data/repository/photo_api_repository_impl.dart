import 'package:flutter_image_search/data/sorce/pixabay_api.dart';
import 'package:flutter_image_search/data/sorce/result.dart';
import 'package:flutter_image_search/domain/model/pixabay_photo.dart';
import 'package:flutter_image_search/domain/model/pixabay_photo_response_dto.dart';
import 'package:flutter_image_search/domain/repository/photo_api_repository.dart';

class PhotoApiRepositoryImpl extends PhotoApiRepository {
  PixabayApi api;

  PhotoApiRepositoryImpl(this.api);

  @override
  Future<Result<List<PixabayPhoto>>> fetch(String query) async {
    final Result<Map<String, dynamic>> result = await api.fetch(query);

    return result.when(success: (map) {
      return Result.success(PixabayPhotoResponseDTO.fromJson(map).hits);
    }, error: (message) {
      return Result.error(message);
    });
  }
}
