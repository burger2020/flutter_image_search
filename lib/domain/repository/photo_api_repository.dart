import 'package:flutter_image_search/data/sorce/result.dart';
import 'package:flutter_image_search/domain/model/pixabay_photo.dart';

abstract class PhotoApiRepository {
  Future<Result<List<PixabayPhoto>>> fetch(String query);
}
