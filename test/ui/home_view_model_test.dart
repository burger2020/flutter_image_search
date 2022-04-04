import 'package:flutter_image_search/data/sorce/result.dart';
import 'package:flutter_image_search/domain/repository/photo_api_repository.dart';
import 'package:flutter_image_search/domain/model/pixabay_photo.dart';
import 'package:flutter_image_search/domain/use_case/get_photos_use_case.dart';
import 'package:flutter_image_search/presentation/home/home_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('스트림이 잘 동작해야 한다', () async {
    final vm = HomeViewModel(GetPhotosUseCase(FakePhotoApiRepository()));

    await vm.fetch("사과");

    var result = equals(fakeJson.map((e) => PixabayPhoto.fromJson(e)).toList());
    expect(vm.state.photos, result);
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<Result<List<PixabayPhoto>>> fetch(String query) async {
    Future.delayed(const Duration(milliseconds: 500));

    return Result.success(fakeJson.map((e) => PixabayPhoto.fromJson(e)).toList());
  }
}

List<Map<String, dynamic>> fakeJson = [
  {
    "id": 1127174,
    "pageURL":
        "https://pixabay.com/photos/sunflower-flower-plant-petals-1127174/",
    "type": "photo",
    "tags": "sunflower, flower, plant",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/01/08/05/24/sunflower-1127174_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gcbbc54246f9d653863448ec91752928b44f98a0be9f18632977153a241c330b32e4fed14d6970e3d1ba2fb2723759e2fdbb08422f12c3c563f18af2d59b493b4_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g9ee460b76c897452b0efa61956a47ad585d9c88884a299ebece034e1936c53b845a1cbbd6e9ee3ab394cc1ee80aa991c1ddbe0555e60b3a3c5a677416d110f12_1280.jpg",
    "imageWidth": 4752,
    "imageHeight": 3168,
    "imageSize": 3922163,
    "views": 337609,
    "downloads": 206059,
    "collections": 4839,
    "likes": 911,
    "comments": 122,
    "user_id": 1445608,
    "user": "mploscar",
    "userImageURL":
        "https://cdn.pixabay.com/user/2016/01/05/14-08-20-943_250x250.jpg"
  },
  {
    "id": 887443,
    "pageURL":
        "https://pixabay.com/photos/flower-life-yellow-flower-crack-887443/",
    "type": "photo",
    "tags": "flower, life, yellow flower",
    "previewURL":
        "https://cdn.pixabay.com/photo/2015/08/13/20/06/flower-887443_150.jpg",
    "previewWidth": 150,
    "previewHeight": 116,
    "webformatURL":
        "https://pixabay.com/get/g4559837e3d759078809e29a6bad5de1a75a8c3935d8bda5c4e02081067c4e5f5b03ffaaea11caeafa1099c403db7cdf4_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 497,
    "largeImageURL":
        "https://pixabay.com/get/g3d2d7e7a075787b2436092b0276b95e6da232552c130615dc07b10ad9a0d7a23e0f1dd10a5cd4d2847e47791669b56783d36fda00163232b54aee8abb6323698_1280.jpg",
    "imageWidth": 3867,
    "imageHeight": 3005,
    "imageSize": 2611531,
    "views": 281171,
    "downloads": 167763,
    "collections": 4607,
    "likes": 1033,
    "comments": 172,
    "user_id": 1298145,
    "user": "klimkin",
    "userImageURL":
        "https://cdn.pixabay.com/user/2017/07/18/13-46-18-393_250x250.jpg"
  }
];
