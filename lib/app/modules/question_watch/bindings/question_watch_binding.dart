import 'package:get/get.dart';

import '../controllers/question_watch_controller.dart';

class QuestionWatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuestionWatchController>(
      () => QuestionWatchController(),
    );
  }
}
