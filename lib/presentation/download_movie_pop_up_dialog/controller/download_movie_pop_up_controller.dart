import '/core/app_export.dart';import 'package:jusplay/presentation/download_movie_pop_up_dialog/models/download_movie_pop_up_model.dart';class DownloadMoviePopUpController extends GetxController {Rx<DownloadMoviePopUpModel> downloadMoviePopUpModelObj = DownloadMoviePopUpModel().obs;

RxBool checkbox = false.obs;

RxBool checkbox1 = false.obs;

RxBool checkbox2 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
