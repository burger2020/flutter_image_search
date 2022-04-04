import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_image_search/domain/use_case/get_photos_use_case.dart';
import 'package:flutter_image_search/presentation/home/home_state.dart';
import 'package:flutter_image_search/presentation/home/home_ui_event.dart';

class HomeViewModel with ChangeNotifier {
  HomeViewModel(this.getPhotosUseCase);

  final GetPhotosUseCase getPhotosUseCase;

  HomeState get state => _state;
  HomeState _state = HomeState([], false);

  Stream<HomeUiEvent> get eventStream => _eventController.stream;
  final _eventController = StreamController<HomeUiEvent>();

  Future fetch(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await getPhotosUseCase.excute(query);

    result.when(success: (photos) {
      _state = state.copyWith(photos: photos);
    }, error: (message) {
      _eventController.add(HomeUiEvent.showSnackBar(message));
    });

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
