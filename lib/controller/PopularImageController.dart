import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';
import 'package:thoughts_creator/Model/PopularImageResponse.dart';
import 'package:thoughts_creator/Model/QuotesImg.dart';
import 'package:thoughts_creator/Services/RequestApi.dart';
import '/Services/data/Images.dart';
import 'package:thoughts_creator/utils/ApiUtils.dart';
import 'package:thoughts_creator/utils/AppColors.dart';
import 'package:http/http.dart' as http;

class PopularImageController extends GetxController {
  var isLoading = true.obs;
  final box = GetStorage();

  List<Images> list = [];
  String imgNetworkPath = '';
  Logger logger = Logger();

  @override
  void onInit() {
    super.onInit();
  }

  void apiCallPopularTamplate() async {
    isLoading(true);
    Future.delayed(Duration(microseconds: 5), () async {
      list = images;
      isLoading(false);
    });
  }

  // void apiCallPopularTamplate() async {
  //   isLoading(true);
  //   Future.delayed(Duration(microseconds: 5), () async {
  //     Uri uri = Uri.parse("https://quote.rainit.in/api/popular_templet");
  //     final response = await http.get(uri);
  //     RequestApi request = RequestApi(
  //         url: "https://quote.rainit.in/api/popular_templet", body: {});
  //     final quotesImgsList = quotesImgsFromJson(response.body);
  //     list.addAll(quotesImgsList);

  //     logger.v(response);
  //     logger.v(response.body);
  //     logger.v("URL: ${ApiUtils.Popular_Templet}");
  //     request.get().then((value) {
  //       logger.v("Response Popular collection " + value.body.toString());
  //       PopularImageResponse popularImageResponse =
  //           PopularImageResponse.fromJson(json.decode(value.body));

  //       // final quotesImgsList = quotesImgsFromJson(json.decode(response.body));
  //       // logger.v(response);
  //       // logger.v(response.body);
  //       if (popularImageResponse.status == true) {
  //         if (popularImageResponse.data != null) {
  //           list.clear();
  //           isLoading(false);
  //           // imgNetworkPath = popularImageResponse.data.path;
  //           // list.addAll(popularImageResponse.data.src);
  //           list.addAll(quotesImgsList);

  //           // Get.off(HomeView());

  //         } else {
  //           isLoading(false);
  //           if (!Get.isSnackbarOpen) {
  //             Get.snackbar("Error", "No Data Found",
  //                 backgroundColor: AppColors.yellow,
  //                 snackPosition: SnackPosition.BOTTOM,
  //                 maxWidth: Get.width,
  //                 icon: new Icon(Icons.clear));
  //           }
  //         }
  //       } else {
  //         isLoading(false);
  //         if (!Get.isSnackbarOpen) {
  //           Get.snackbar("Error", "Something went wrong",
  //               backgroundColor: AppColors.yellow,
  //               snackPosition: SnackPosition.BOTTOM,
  //               maxWidth: Get.width,
  //               icon: new Icon(Icons.clear));
  //         }
  //       }
  //     }).catchError((onError) {
  //       isLoading(false);
  //       print("Error" + onError.toString());
  //     });
  //   });
  // }

  @override
  void onClose() {
    super.onClose();
  }
}
