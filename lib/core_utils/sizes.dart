import 'package:flutter/material.dart';

class AppSizes {
  late Size _screenSize;
  late bool isPhone;
  late double width;
  late double height;
  late double topPadding;

  //For dynamic Sizing
  late double widthRatio;
  late double heightRatio;
  late double fontRatio;

  //Dynamic Font Sizes
  late double extraSmallFontSize;
  late double smallFontSize;
  late double smallFontSize12;
  late double smallFontSize11;
  late double smallFontSize10;
  late double mediumFontSize;
  late double mediumLargeFontSize;
  late double regularFontSize;
  late double largeFontSize;
  late double extraLargeFontSize;
  late double jumboFontSize;
  late double jumbo28FontSize;
  late double jumbo38FontSize;
  late double jumbo34FontSize;
  late double jumbo30FontSize;
  late double jumbo24FontSize;
  late double jumbo25FontSize;
  late double jumbo17FontSize;
  late double jumbo18FontSize;
  late double jumbo26FontSize;
  late double jumbo20FontSize;

  //padding
  late double smallPadding;
  late double regularPadding;
  late double mediumPadding;
  late double pagePadding;
  late double largePadding;
  late double extraLargePadding;
  late double largerPadding;

  //tablet specific padding
  late double tabletInnerPadding;
  late double tabletOuterPadding;
  late double tabletPagePadding;
  late double tabletLargeOuterMargin;
  late double tabletExtraLargeOuterMargin;
  late double tabletSocialMediaPadding;
  late double tabletAuthCommentPadding;

  void initializeSize(context) {
    _screenSize = MediaQuery.of(context).size;
    topPadding = MediaQuery.of(context).padding.top;
    width = _screenSize.shortestSide;
    height = _screenSize.longestSide;
    isPhone = _screenSize.shortestSide < 600;
    fontRatio =
        (isPhone && _screenSize.width <= 360) ? _screenSize.width / 360 : 1.0;
    widthRatio = isPhone ? _screenSize.width / 360 : _screenSize.width / 900;
    heightRatio =
        isPhone ? _screenSize.height / 720 : _screenSize.height / 1200;

    // debugPrint("heightRatio: $heightRatio ");
    // debugPrint("widthRatio: $widthRatio ");
    extraSmallFontSize = 10.0 * fontRatio;
    smallFontSize = 13.0 * fontRatio;
    smallFontSize12 = 12.0 * fontRatio;
    smallFontSize11 = 11.0 * fontRatio;
    smallFontSize10 = 10.0 * fontRatio;
    regularFontSize = 14.0 * fontRatio;
    mediumFontSize = 15.0 * fontRatio;
    mediumLargeFontSize = 16.0 * fontRatio;
    largeFontSize = 18.0 * fontRatio;
    extraLargeFontSize = 22.0 * fontRatio;
    jumboFontSize = 32.0 * fontRatio;
    jumbo28FontSize = 28.0 * fontRatio;
    jumbo38FontSize = 38.0 * fontRatio;
    jumbo34FontSize = 34.0 * fontRatio;
    jumbo30FontSize = 30.0 * fontRatio;
    jumbo24FontSize = 24.0 * fontRatio;
    jumbo25FontSize = 25.0 * fontRatio;
    jumbo26FontSize = 26.0 * fontRatio;
    jumbo18FontSize = 18.0 * fontRatio;
    jumbo17FontSize = 17.0 * fontRatio;
    jumbo20FontSize = 20.0 * fontRatio;

    smallPadding = 4.0 * widthRatio;
    regularPadding = 8.0 * widthRatio;
    mediumPadding = 12.0 * widthRatio;
    pagePadding = 16.0 * widthRatio;
    largePadding = 24.0 * widthRatio;
    extraLargePadding = 32.0 * widthRatio;
    largerPadding = 32.0 * widthRatio;

    tabletOuterPadding = 144.0 * widthRatio;
    tabletInnerPadding = 76.0 * widthRatio;
    tabletPagePadding = 48.0 * widthRatio;
    tabletExtraLargeOuterMargin = 228.0 * widthRatio;
    tabletLargeOuterMargin = 172.0 * widthRatio;
    tabletSocialMediaPadding = 192.0 * widthRatio;
    tabletAuthCommentPadding = 99.0 * widthRatio;
  }

  void refreshSize(context) {
    _screenSize = MediaQuery.of(context).size;
    width = _screenSize.width;
    height = _screenSize.height;
  }
}
