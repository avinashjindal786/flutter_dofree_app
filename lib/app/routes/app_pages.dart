import 'package:get/get.dart';

import 'package:freedo/app/modules/home/bindings/home_binding.dart';
import 'package:freedo/app/modules/home/views/home_view.dart';
import 'package:freedo/app/modules/question_watch/bindings/question_watch_binding.dart';
import 'package:freedo/app/modules/questions/bindings/questions_binding.dart';
import 'package:freedo/app/modules/questions/views/questions_view.dart';
import 'package:freedo/app/modules/splashscreen/bindings/splashscreen_binding.dart';
import 'package:freedo/app/modules/splashscreen/views/splashscreen_view.dart';
import 'package:freedo/app/modules/video_player_screen/bindings/video_player_screen_binding.dart';
import 'package:freedo/app/modules/video_player_screen/views/video_player_screen_view.dart';
import 'package:freedo/app/modules/watch/bindings/watch_binding.dart';
//import 'package:freedo/app/modules/watch/views/watch_view.dart';

//import 'package:freedo/app/modules/question_watch/views/question_watch_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashscreenView(),
      binding: SplashscreenBinding(),
    ),

  ];
}
