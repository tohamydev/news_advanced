import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news/core/constants/app_color.dart';
import 'package:news/features/home/data/model/top_headlines_response.dart';

class NewsItemWidget extends StatelessWidget {
   NewsItemWidget(this.article, {super.key , this.width = 348 });
 final double width ;
   Article article;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17.9.r),
        border: Border.all(color: AppColor.grey5 , width: 0.96922.w),

      ),

      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(13.8.r),
                child: Image.network(
                  article.urlToImage ?? "https://via.placeholder.com/150",
                  width: MediaQuery.of(context).size.width,
                  height: 200.h,
                  fit: BoxFit.cover,
                ),
              ),
               Positioned(
                  left: 13.w,
                  top: 23.h,
                  child:  Row(
                    children: [
                      CircleAvatar(
                        radius: 15.r,
                        backgroundColor: Colors.white,
                        child: Text(article.source!.name![0] , style: TextStyle(color: AppColor.redPrimary , fontSize: 17.sp , fontWeight: FontWeight.w700),
                      ),),
                      SizedBox(width: 10.w,),
                      Text(article.source!.name!  , style: TextStyle(color: Colors.white , fontSize: 17.sp , fontWeight: FontWeight.w700),),
                    ],
                  )),
               Positioned(
                  left: 13.w,
                  bottom: 12.h,
                  child: Text(article.publishedAt.toString()  , style: TextStyle(color: Colors.white , fontSize: 12.sp , fontWeight: FontWeight.w400),)),

            ],
          ),
           SizedBox(height: 10.h),
           Text(
            article.title!,
            style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
          ),
           SizedBox(height: 10.h),

        ],
      ),
    );
  }
}
