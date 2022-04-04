import 'package:flutter_image_search/domain/repository/photo_api_repository.dart';
import 'package:flutter_image_search/domain/model/pixabay_photo.dart';
import 'package:flutter_image_search/presentation/home/home_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('스트림이 잘 동작해야 한다', () async {
    final vm = HomeViewModel(FakePhotoApiRepository());

    await vm.fetch("사과");

    var result = equals(fakeJson.map((e) => PixabayPhoto.fromJson(e)).toList());
    expect(vm.photos, result);
  });
}

class FakePhotoApiRepository extends PhotoApiRepository {
  @override
  Future<List<PixabayPhoto>> fetch(String query) async {
    Future.delayed(const Duration(milliseconds: 500));
    return fakeJson.map((e) => PixabayPhoto.fromJson(e)).toList();
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
  },
  {
    "id": 1627193,
    "pageURL":
        "https://pixabay.com/photos/sunflower-yellow-flower-pollen-1627193/",
    "type": "photo",
    "tags": "sunflower, yellow, flower",
    "previewURL":
        "https://cdn.pixabay.com/photo/2016/08/28/23/24/sunflower-1627193_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g44060307a45531670d08dddd212a139a2018371a174d0e810641aec85dd5c3f7b32f42d434ce04eeaf7f377d3451b987bf5bc9a3b9cbdf59cbbcb1dac4729eb8_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/gd15bc9b7d31f8fb9416413d14c224a0d2532ec6bac3a72f9cb3645df2c2c87fbd08c4803e261d3cb7de33af3305e827ff292df2932a333aace4876abdfcf37fb_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 5414839,
    "views": 246784,
    "downloads": 110433,
    "collections": 3407,
    "likes": 596,
    "comments": 115,
    "user_id": 1834854,
    "user": "ulleo",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/02/27/09-13-19-744_250x250.jpg"
  },
  {
    "id": 3792914,
    "pageURL":
        "https://pixabay.com/photos/sunflowers-flowers-sunflower-field-3792914/",
    "type": "photo",
    "tags": "sunflowers, flowers, sunflower field",
    "previewURL":
        "https://cdn.pixabay.com/photo/2018/11/03/21/42/sunflowers-3792914_150.jpg",
    "previewWidth": 150,
    "previewHeight": 69,
    "webformatURL":
        "https://pixabay.com/get/gce0b68190d19d42ef9a8d2ba0a36790574a02219ff10774572d2985f39122701af93e46ac8f3cb61b5eeeec4617fee696c67b05bf2cd37a8e1044a1497eb1c56_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 296,
    "largeImageURL":
        "https://pixabay.com/get/g7b7a4f818b9ff1a410553eb10bd98928baf7f6785c88ed7b6c4fff590c60e611ef531b1a5d8272abad2b7cecba8024fe1f996dc92f57680d491b3ee5514ad641_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 2780,
    "imageSize": 3835319,
    "views": 203766,
    "downloads": 130321,
    "collections": 5355,
    "likes": 571,
    "comments": 129,
    "user_id": 165106,
    "user": "suju-foto",
    "userImageURL": ""
  },
  {
    "id": 6546993,
    "pageURL":
        "https://pixabay.com/photos/sunflower-flower-yellow-flower-6546993/",
    "type": "photo",
    "tags": "sunflower, flower, yellow flower",
    "previewURL":
        "https://cdn.pixabay.com/photo/2021/08/15/06/54/sunflower-6546993_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/g4e7b3fc9f934c2d97346d316295536e983682b6b50363c96397dca483f4fd733485bc326a467ddb90cd3c061ee41b08a1cd2de7dcbffa6b7e739e3d387623bef_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/gb79a379ac52d46729193433e029ec9ae70011123924fcf2daf5d9de558b6f13c3598edd9bb60b541947a3662d0e12f009e284f29ff9012d2b12fe98057078b9e_1280.jpg",
    "imageWidth": 5472,
    "imageHeight": 3648,
    "imageSize": 2522735,
    "views": 150794,
    "downloads": 135627,
    "collections": 3226,
    "likes": 246,
    "comments": 125,
    "user_id": 201217,
    "user": "blende12",
    "userImageURL":
        "https://cdn.pixabay.com/user/2021/04/08/15-30-57-574_250x250.jpg"
  },
  {
    "id": 2295434,
    "pageURL":
        "https://pixabay.com/photos/spring-bird-bird-tit-spring-blue-2295434/",
    "type": "photo",
    "tags": "spring bird, bird, tit",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/05/08/13/15/spring-bird-2295434_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gd00b5612b8df64c8e089616106d31a10bfac48c9c49ccdcfe9b7ba7d6eb61fce5550a6b6e4e5b0517dfdab2a5b28377b5d3b4547cacd5f9a2fa7bc3247bd10bc_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g4237b73a49c5b3a2203a0aab7ecc15a22cd8e7c50f15b3c403f78f0e0cad06ae4bbf349c28f2d637ebaeae24d02e73343f0a8059cdf75ffa99a5a1232115c4a8_1280.jpg",
    "imageWidth": 5363,
    "imageHeight": 3575,
    "imageSize": 2938651,
    "views": 451208,
    "downloads": 237375,
    "collections": 7929,
    "likes": 1768,
    "comments": 213,
    "user_id": 334088,
    "user": "JillWellington",
    "userImageURL":
        "https://cdn.pixabay.com/user/2018/06/27/01-23-02-27_250x250.jpg"
  },
  {
    "id": 6594958,
    "pageURL":
        "https://pixabay.com/photos/orange-gull-cepora-judith-thailand-6594958/",
    "type": "photo",
    "tags": "orange gull, cepora judith, thailand",
    "previewURL":
        "https://cdn.pixabay.com/photo/2021/09/03/04/40/orange-gull-6594958_150.jpg",
    "previewWidth": 150,
    "previewHeight": 104,
    "webformatURL":
        "https://pixabay.com/get/g33c0934a8bb8a6f57837208a40a5f73b1b57bd02e51b1eabe43579ac66d63088e9c7b771b7f4b694fc68c54d74ae948bdb5329aaf577ca19af9f8e58a0cd5632_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 442,
    "largeImageURL":
        "https://pixabay.com/get/gf73893bab0cf136b50a9db22b398228a4de75217be5fd9493d1a1f84d424b7fc7fb7d460fc86dbce23977428e079e69e8f451b085124951b231a14c09d84980a_1280.jpg",
    "imageWidth": 5149,
    "imageHeight": 3556,
    "imageSize": 6215868,
    "views": 224495,
    "downloads": 202909,
    "collections": 4296,
    "likes": 227,
    "comments": 48,
    "user_id": 15012370,
    "user": "Erik_Karits",
    "userImageURL":
        "https://cdn.pixabay.com/user/2021/11/22/06-22-33-376_250x250.jpg"
  },
  {
    "id": 3063284,
    "pageURL":
        "https://pixabay.com/photos/rose-flower-petal-floral-noble-3063284/",
    "type": "photo",
    "tags": "rose, flower, petal",
    "previewURL":
        "https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g6bb84f7b788339da9c33fe06314002a9ca843f463f9da52c6ea29d27f1258e2831e040cbf913e68d6da2425e853cd496797e154e97209c0b556729587f045122_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/ge140c371fffb41bdf936b7d2226bf43cff4d1255578c6146a00178c828a07771843c0e458bc9a54efe08d2b5b3ec21d2b47af78d5e6ec2011a5b595862a499ef_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 3574625,
    "views": 947155,
    "downloads": 610575,
    "collections": 3435,
    "likes": 1429,
    "comments": 311,
    "user_id": 1564471,
    "user": "anncapictures",
    "userImageURL":
        "https://cdn.pixabay.com/user/2015/11/27/06-58-54-609_250x250.jpg"
  },
  {
    "id": 6558487,
    "pageURL":
        "https://pixabay.com/photos/flowers-coast-sea-yellow-flowers-6558487/",
    "type": "photo",
    "tags": "flowers, coast, sea",
    "previewURL":
        "https://cdn.pixabay.com/photo/2021/08/19/16/31/flowers-6558487_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/gceb9131ad2c8fb1e9d4ec0058a23243af581c6685686fe340eefed3317db2892532068c27ea377b638bb9cd0f7fb34310068fcc5323b6a9029b15b0935bfadfd_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/g463ad8a4b7ac84903e726cc5b274449ef363db1b62a28e34ccb78c7d74d2cadb77422348a549528dcf955a12431204a45f6242de5d9e8bc61b37021bb18ebe6e_1280.jpg",
    "imageWidth": 4256,
    "imageHeight": 2832,
    "imageSize": 4587665,
    "views": 120508,
    "downloads": 100730,
    "collections": 3831,
    "likes": 245,
    "comments": 33,
    "user_id": 21633244,
    "user": "lillolillolillo",
    "userImageURL":
        "https://cdn.pixabay.com/user/2021/06/09/06-56-51-212_250x250.jpg"
  },
  {
    "id": 3123271,
    "pageURL":
        "https://pixabay.com/photos/yellow-field-flowers-meadow-3123271/",
    "type": "photo",
    "tags": "yellow, field, flowers",
    "previewURL":
        "https://cdn.pixabay.com/photo/2018/02/01/14/09/yellow-3123271_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/gdc1d313a9b68488a7cef14e3b1f195d8b69bf2bfa2a7a38dd0da94d5fac1f5c630652cb2c3d4aff76075d83f17d1c676290e015b64a1519fffa99540db844a71_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/gb01e236343977f3bc2730f274b43c5937d4fb7914e746f3ad6f51740db521ddcaf55d85cb15f4046b08fbc218df91fcd948dd02a68867d78e1813061518638c4_1280.jpg",
    "imageWidth": 4272,
    "imageHeight": 2848,
    "imageSize": 4525786,
    "views": 127461,
    "downloads": 80266,
    "collections": 4908,
    "likes": 560,
    "comments": 106,
    "user_id": 3558510,
    "user": "ilyessuti",
    "userImageURL":
        "https://cdn.pixabay.com/user/2017/12/05/15-36-30-145_250x250.jpg"
  },
  {
    "id": 7043225,
    "pageURL":
        "https://pixabay.com/photos/peace-symbol-petals-ukraine-7043225/",
    "type": "photo",
    "tags": "peace, symbol, petals",
    "previewURL":
        "https://cdn.pixabay.com/photo/2022/03/02/13/42/peace-7043225_150.jpg",
    "previewWidth": 150,
    "previewHeight": 113,
    "webformatURL":
        "https://pixabay.com/get/g1e620804db836ea6a2de90ea1a74c7eee89bbb001ff92cc3aee42c18e106ba77760505b221724ddf1876a8295b3176ca0bd403858a305ba2d2e9ec473d8922ee_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 480,
    "largeImageURL":
        "https://pixabay.com/get/g682106767949c5908b987a0786162be62872ad4024b4f4baafca08da096c14d2352e749f252b7d086a6303e8b2fe2bafe57af56b137e1667b1480a1d99e42238_1280.jpg",
    "imageWidth": 10000,
    "imageHeight": 7500,
    "imageSize": 23699588,
    "views": 109602,
    "downloads": 95161,
    "collections": 1146,
    "likes": 102,
    "comments": 36,
    "user_id": 3656355,
    "user": "Engin_Akyurt",
    "userImageURL":
        "https://cdn.pixabay.com/user/2018/09/20/08-02-23-312_250x250.jpg"
  },
  {
    "id": 6561379,
    "pageURL":
        "https://pixabay.com/photos/flowers-watering-can-vintage-6561379/",
    "type": "photo",
    "tags": "flowers, watering can, vintage",
    "previewURL":
        "https://cdn.pixabay.com/photo/2021/08/20/22/05/flowers-6561379_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/gd7d7611dd98592ec3a3f8e2cc7fede850f2e380aec558934dc3c768d25f4a0dca6fd7e1089d9400fd53be9dae14f84ec5f4fb4ec0f50bd1e03e768b33bc6f528_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/g6d5ad8f688332641144dd632620b58eeb417018fc916216212779a79c586211ecd614770baa4bfa7c750a90163b9958bdea21b3a58c1e9168752da31a9c3a6e5_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 3469771,
    "views": 230285,
    "downloads": 209319,
    "collections": 4917,
    "likes": 255,
    "comments": 45,
    "user_id": 2218222,
    "user": "Ylanite",
    "userImageURL":
        "https://cdn.pixabay.com/user/2021/11/18/21-11-44-855_250x250.png"
  },
  {
    "id": 6515860,
    "pageURL":
        "https://pixabay.com/photos/sunflower-flowers-yellow-flowers-6515860/",
    "type": "photo",
    "tags": "sunflower, flowers, yellow flowers",
    "previewURL":
        "https://cdn.pixabay.com/photo/2021/08/02/05/17/sunflower-6515860_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/ge4ec5f96bb773fd2c50c61d85a3142b46766168dfe271e4ba24cc3e0757bc0d7ebbbfe8552af9eebeaa9dbf8f0a1ae5c7610fb5bbe96185e8a2bde4428ff0dfd_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/g74880df7e4a2193aeea0e3598d81a83f236f6e93bf1267be01b7ddd7e6025af75359a18f82034c3d83870b4ca5a6bf23ea13be72c205e61428cbf16770a04433_1280.jpg",
    "imageWidth": 5568,
    "imageHeight": 3712,
    "imageSize": 2196724,
    "views": 130800,
    "downloads": 101358,
    "collections": 4891,
    "likes": 263,
    "comments": 122,
    "user_id": 21062476,
    "user": "Johnnys_pic",
    "userImageURL":
        "https://cdn.pixabay.com/user/2022/01/26/09-12-58-890_250x250.jpeg"
  },
  {
    "id": 2675672,
    "pageURL": "https://pixabay.com/photos/annotation-art-artistic-2675672/",
    "type": "photo",
    "tags": "annotation, art, artistic",
    "previewURL":
        "https://cdn.pixabay.com/photo/2017/08/24/07/40/abstract-2675672_150.png",
    "previewWidth": 150,
    "previewHeight": 146,
    "webformatURL":
        "https://pixabay.com/get/g8b042ce34115be85917ed95f9414b1aa666ab8bfd3fae66e2deae508b66ef4b61ee471951af520b10ca157367bec7dbbc7e68db1a325270a9052cf0ad1600022_640.png",
    "webformatWidth": 640,
    "webformatHeight": 623,
    "largeImageURL":
        "https://pixabay.com/get/g9faf19bb39232422590275c06cce02c6d7f8a5899d481cbb5c5f66ff7a795c7247ac4ddafc06776ce588c7005939176cb1352fc982735f4a3c21d72b9065d7e6_1280.png",
    "imageWidth": 1920,
    "imageHeight": 1871,
    "imageSize": 1232662,
    "views": 185234,
    "downloads": 135125,
    "collections": 2958,
    "likes": 437,
    "comments": 55,
    "user_id": 6190330,
    "user": "gorartser",
    "userImageURL":
        "https://cdn.pixabay.com/user/2017/08/24/22-01-16-223_250x250.jpg"
  },
  {
    "id": 3113318,
    "pageURL":
        "https://pixabay.com/photos/sunflower-nature-flora-flower-3113318/",
    "type": "photo",
    "tags": "sunflower, nature, flora",
    "previewURL":
        "https://cdn.pixabay.com/photo/2018/01/28/11/24/sunflower-3113318_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g83d95b4a933ad4a93e577fae544bce4eb0bb8a47a906e48ef2a90b88b96599b508ea8619e619ca4b72edf5b78b92c23890d02682dc3e10399bf734805a7fb78b_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/gdc71f7b77c851f36c4f6be49ec1ca81629941ea9964af8125893c9a549122075d7864b96c670e765398257d994b3fddb463e435424a061e7f7f74de94acba698_1280.jpg",
    "imageWidth": 2736,
    "imageHeight": 1824,
    "imageSize": 1026006,
    "views": 545962,
    "downloads": 399552,
    "collections": 1549,
    "likes": 959,
    "comments": 151,
    "user_id": 7410713,
    "user": "bichnguyenvo",
    "userImageURL":
        "https://cdn.pixabay.com/user/2017/12/16/10-28-39-199_250x250.jpg"
  },
  {
    "id": 6478427,
    "pageURL": "https://pixabay.com/photos/lily-flower-dew-dewdrops-6478427/",
    "type": "photo",
    "tags": "lily, flower, dew",
    "previewURL":
        "https://cdn.pixabay.com/photo/2021/07/19/15/47/lily-6478427_150.jpg",
    "previewWidth": 150,
    "previewHeight": 100,
    "webformatURL":
        "https://pixabay.com/get/gc5ee8862581565d0917e304edd0740a19b3bb0bd18c00c960ce39bd8e6d8d6748e8d91f8cacedba8e8c882da7b535fe594add1976363378c278908fd272800cf_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 427,
    "largeImageURL":
        "https://pixabay.com/get/g255998a7fb1028330ec4853148dbcddf10a86654aa4ac35d7f3203c3eb3ecc39299afeb48e85b90bb14a8044f7525027405c4a65d8b5555114afd2bc03c05b70_1280.jpg",
    "imageWidth": 5396,
    "imageHeight": 3599,
    "imageSize": 1835714,
    "views": 24905,
    "downloads": 16030,
    "collections": 1776,
    "likes": 124,
    "comments": 93,
    "user_id": 20876190,
    "user": "PoldyChromos",
    "userImageURL":
        "https://cdn.pixabay.com/user/2021/10/14/09-40-38-43_250x250.jpg"
  },
  {
    "id": 4251915,
    "pageURL":
        "https://pixabay.com/photos/yellow-rose-macro-rose-feeling-4251915/",
    "type": "photo",
    "tags": "yellow rose, macro, rose",
    "previewURL":
        "https://cdn.pixabay.com/photo/2019/06/04/17/24/yellow-rose-4251915_150.jpg",
    "previewWidth": 150,
    "previewHeight": 99,
    "webformatURL":
        "https://pixabay.com/get/g10e961889f2c9ea4e4f5d155338a7e5cd3c1db33c4b43ea7d218e9a42a20b86bd4abeb3e6b66578662aa3a74ad857e8049265afa69794bfecf8742c3f1fcd6de_640.jpg",
    "webformatWidth": 640,
    "webformatHeight": 426,
    "largeImageURL":
        "https://pixabay.com/get/gbf781e8b5bf11dc1b27afdb240c1f9222e505a5b3d2857ab3faf31bf7f7f613d4acb15420302de4a7be4ff025ef74ebb01f1f36b0fdd406d62e61a7d1b2c5e1f_1280.jpg",
    "imageWidth": 6000,
    "imageHeight": 4000,
    "imageSize": 1374672,
    "views": 48667,
    "downloads": 31268,
    "collections": 1099,
    "likes": 244,
    "comments": 56,
    "user_id": 9097212,
    "user": "armennano",
    "userImageURL":
        "https://cdn.pixabay.com/user/2019/10/02/06-51-59-238_250x250.jpg"
  }
];
