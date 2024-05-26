import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news/core/constants/app_assets.dart';
import 'package:news/core/constants/app_color.dart';
import 'package:news/core/di/di.dart';
import 'package:news/features/home/logic/home_cubit.dart';
import 'package:news/features/home/logic/home_state.dart';
import 'package:news/features/home/view/widgets/news_item_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getTopHeadlines(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                title: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset(
                    AppAssets.logo,
                    width: 95,
                    height: 33,
                  ),
                ),
                centerTitle: false,
                actions: [
                ],
              ),
              body: state is Loaded
                  ? RefreshIndicator(
                color: AppColor.redPrimary,
                    onRefresh: () {
                      getIt<HomeCubit>().getTopHeadlines();
                      return Future.delayed(Duration(seconds: 2));
                    },
                    child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Inbound Now!',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: AppColor.redPrimary,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 18),
                              ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state.data.articles!.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return NewsItemWidget(state.data.articles![index]);
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                  )
                  : const Center(
                      child: CupertinoActivityIndicator(),
                    ));
        },
      ),
    );
  }
}
