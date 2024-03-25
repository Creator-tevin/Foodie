import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController {
  RxString _category = ''.obs;

  String get categoryValue => _category.value;

  set updateCategory(String value) {
    _category.value = value;
  }

  RxString _title = ''.obs;

  String get titleValue => _title.value; // Corrected getter name

  set updateTitle(String value) {
    _title.value = value; // Corrected variable to update
  }
}
