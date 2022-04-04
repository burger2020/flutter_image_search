import 'package:flutter_image_search/data/sorce/pixabay_api.dart';
import 'package:flutter_image_search/domain/model/pixabay_photo.dart';
import 'package:flutter_image_search/domain/model/pixabay_photo_response_dto.dart';
import 'package:flutter_image_search/domain/repository/photo_api_repository.dart';

class PhotoApiRepositoryImpl extends PhotoApiRepository {
  PixabayApi api;


  PhotoApiRepositoryImpl(this.api);

  @override
  Future<List<PixabayPhoto>> fetch(String query) async {
    var result = await api.fetch(query);
    return PixabayPhotoResponseDTO.fromJson(result).hits;
  }
}
