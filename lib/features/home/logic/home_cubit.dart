import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/data/model/post_data_request_body.dart';
import 'package:news/features/home/data/repo/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  void getTopHeadlines() async {
    emit(const HomeState.loading());
    final result = await _homeRepo.getTopHeadLines();
    result.when(success: (data) {
      emit(HomeState.loaded(data));
    }, error: (error) {
      emit(HomeState.error());
    });
  }

  Future<void> postData(PostDataRequestBody body) async {
    emit(const HomeState.loading());
    final result =await _homeRepo.postData(body);
    result.when(success: (data) {
      emit(HomeState.loaded(data));
    }, error: (error) {
      emit(HomeState.error());
    });
  }


}
