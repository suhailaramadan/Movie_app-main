import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_app/screens/movie_details_screen.dart';
import 'package:movie_app/theme/app_theme.dart';
import 'package:movie_app/widgets/new_release_movie_item.dart';

import '../widgets/recomended_film.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200.h,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Image_movie.png'),fit: BoxFit.fill)),
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(MovieDetailsScreen.routeName);
                },
                icon: Icon(
                  Icons.play_circle,
                  color: AppTheme.white,
                  size: 50.sp,
                ))
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          " Dora and the lost city of gold",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SizedBox(
          height: 7.h,
        ),
        Text(
          " 2019  PG-13  2h 7m",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 150.h,
          decoration: const BoxDecoration(color: AppTheme.containerColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "   New Releases ",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const newReleaseMovieItem();
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 5.w,
                      );
                    },
                    itemCount: 10),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 18.h,
        ),
        Expanded(
          child: Container(
            // margin: EdgeInsets.symmetric(vertical: 3),
            padding: EdgeInsets.symmetric(vertical: 8),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .2,

            decoration: const BoxDecoration(color: AppTheme.containerColor),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5.h,),
                Text(
                  "  Recomended ",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const recomendedMovieItem();
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          width: 5.w,
                        );
                      },
                      itemCount: 10),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
