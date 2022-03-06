import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Helper/PreferenceHelper.dart';
import '../ui/IntroScreenUI.dart';
import '../ui/MainScreen.dart';
import '../utils/AppString.dart';
import 'AdmobController.dart';
import 'BackgroundImgController.dart';
import 'CommonEditorController.dart';

class SplashController extends GetxController {
  final admob = Get.find<AdmobController>();
  Logger log = Logger();
  PreferenceHelper preferenceHelper;
  SharedPreferences prefs;

  final BackgroundImgController bgImgController =
      Get.put(BackgroundImgController());
  final CommonEditorController commonController =
      Get.put(CommonEditorController());

  bool showInterstitial = false;

  @override
  void onReady() async {
    log.i("onReady of splash controller");
    await admob.loadOpenad();
    super.onReady();
    // await getIgVideo(igUrl);
    await Future.delayed(Duration(seconds: 3), () {
      admob.showAppOpen();
      //HERE GOES THE LOGIC OF SHOWING PAGE
      checkInternetConnection();
      // Get.off(() => StartPage(), transition: Transition.zoom);
    });
  }

  void onInit() async {
    super.onInit();
    log.i("Init of splash controller");
  }

  checkInternetConnection() async {
    var notConnection = await (Connectivity().checkConnectivity());
    if (notConnection == ConnectivityResult.none) {
      _showDialog();
    } else {
      getSharedPreferenceObject();
    }
  }

  Future<void> getSharedPreferenceObject() async {
    SharedPreferences.getInstance().then((SharedPreferences sp) {
      prefs = sp;
      preferenceHelper = new PreferenceHelper(prefs);
      // checkInternetConnection();

      bgImgController.apiLogin();
      Future.delayed(new Duration(seconds: 4), () async {
        print("new user======" + preferenceHelper.getIsUserNew().toString());
        if (preferenceHelper.getIsUserNew()) {
          Get.off(() => IntroScreenUI());
        } else {
          if (commonController.isNoDataApi) {
            Get.off(() => MainScreenUI(false, true));
          } else {
            Get.off(() => MainScreenUI(false, false));
          }
        }
      });
    });
  }

  _showDialog() {
    //replace for getx' dialog
    return Get.defaultDialog(
      title: AppString.msg_noInternetTitle,
      content: Text(AppString.msg_InternetConnection),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            checkInternetConnection();
            // Navigator.of(context).pop();
            Get.back(canPop: true);
          },
          child: Text("Dismiss"),
        ),
      ],
    );

    // showCupertinoDialog(
    //     context: context,
    //     builder: (context) {
    //       return CupertinoAlertDialog(
    //         title: Text(AppString.msg_noInternetTitle),
    //         content: Text(AppString.msg_InternetConnection),
    //         actions: <Widget>[
    //           TextButton(
    //             onPressed: () {
    //               checkInternetConnection();
    //               Navigator.of(context).pop();
    //             },
    //             child: Text("Dismiss"),
    //           ),
    //         ],
    //       );
    //     });
  }
}
