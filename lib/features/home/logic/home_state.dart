
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news/features/home/data/model/top_headlines_response.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.loaded(TopHeadlinesResponse data) = Loaded;
  const factory HomeState.error() = Error;

}
