import 'package:flutter/material.dart';
import 'package:flutter_image_search/data/repository/photo_api_repository_impl.dart';
import 'package:flutter_image_search/data/sorce/pixabay_api.dart';
import 'package:flutter_image_search/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';

import 'presentation/home/home_screen.dart';

import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text("이미지 검색", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ChangeNotifierProvider(
            create: (_) => HomeViewModel(
                PhotoApiRepositoryImpl(PixabayApi(http.Client()))),
            child: const HomeScreen()),
      ),
    );
  }
}
