import 'package:flutter/material.dart';

import '../../../domain/model/pixabay_photo.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({Key? key, required this.photo}) : super(key: key);
  final PixabayPhoto photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          image: DecorationImage(
              fit: BoxFit.cover, image: NetworkImage(photo.previewURL))),
    );
  }
}
