import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixabay_photo.freezed.dart';

part 'pixabay_photo.g.dart';

@freezed
class PixabayPhoto with _$PixabayPhoto {
  factory PixabayPhoto.fromJson(Map<String, dynamic> json) => _$PixabayPhotoFromJson(json);

  factory PixabayPhoto(
      {required int id,
      required String tags,
      required String previewURL}) = _PixabayPhoto;
}
