import 'package:flutter/cupertino.dart';
import 'sizes.dart';

AppSizes? sizes;

bool _isInitialized = false;

void initializeResources({required BuildContext context}) {
  AppSizes().initializeSize(context);
  if (_isInitialized) {
    /**
     * this is to prevent
     * multiple initialization calls.
     */
    return;
  }

  sizes = AppSizes()..initializeSize(context);
  // debugPrint("_isInitialized: $_isInitialized $sizes");

}
