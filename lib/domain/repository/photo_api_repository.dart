import 'package:flutter_image_search/domain/model/pixabay_photo.dart';

abstract class PhotoApiRepository {
  Future<List<PixabayPhoto>> fetch(String query);
}
