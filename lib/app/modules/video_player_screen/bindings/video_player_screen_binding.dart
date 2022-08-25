import 'package:get/get.dart';

import '../controllers/video_player_screen_controller.dart';

class VideoPlayerScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VideoPlayerScreenController>(
      () => VideoPlayerScreenController(),
    );
  }
}
