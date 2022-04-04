import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/pixabay_photo.dart';

part 'home_state.freezed.dart';

part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState(List<PixabayPhoto> photos, bool isLoading) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
