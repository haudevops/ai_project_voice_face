import 'package:flutter/material.dart';
import 'dart:ui' as ui show window;

double _designW = 360;
double _designH = 640;
double _designD = 3;

void setDesignWHD(double w, double h, {double density = 3.0}) {
  _designW = w ?? _designW;
  _designH = h ?? _designH;
  _designD = density ?? _designD;
}

class ScreenUtil {
  double _screenWidth = 0;
  double _screenHeight = 0;
  double _screenDensity = 0;
  double _statusBarHeight = 0;
  double _bottomBarHeight = 0;
  double _appBarHeight = 0;
  MediaQueryData _mediaQueryData;

  static final ScreenUtil _singleton = ScreenUtil();

  static ScreenUtil getInstance() {
    _singleton._init();
    return _singleton;
  }

  _init() {
    MediaQueryData mediaQuery = MediaQueryData.fromWindow(ui.window);
    if (_mediaQueryData != mediaQuery) {
      _mediaQueryData = mediaQuery;
      _screenWidth = mediaQuery.size.width;
      _screenHeight = mediaQuery.size.height;
      _screenDensity = mediaQuery.devicePixelRatio;
      _statusBarHeight = mediaQuery.padding.top;
      _bottomBarHeight = mediaQuery.padding.bottom;
      _appBarHeight = kToolbarHeight;
    }
  }

  // screen width
  double get screenWidth => _screenWidth;

  // screen height
  double get screenHeight => _screenHeight;

  // appBar height
  double get appBarHeight => _appBarHeight;

  // screen density
  double get screenDensity => _screenDensity;

  double get statusBarHeight => _statusBarHeight;

  // bottom bar Height
  double get bottomBarHeight => _bottomBarHeight;

  // media Query Data
  MediaQueryData get mediaQueryData => _mediaQueryData;

  // screen width
  static double getScreenW(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.width;
  }

  // screen height
  static double getScreenH(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.size.height;
  }

  // screen density
  static double getScreenDensity(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.devicePixelRatio;
  }

  // status bar Height
  static double getStatusBarH(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.padding.top;
  }

  // status bar Height
  static double getBottomBarH(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.padding.bottom;
  }

  // MediaQueryData
  static MediaQueryData getMediaQueryData(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery;
  }

  // returns the size after adaptation according to the screen width.(unit dp or pt)
  static double getScaleW(BuildContext context, double size) {
    if (getScreenW(context) == 0.0) return size;
    return size * getScreenW(context) / _designW;
  }

  // returns the size after adaptation according to the screen height.(unit dp or pt)
  // size unit dp or pt
  static double getScaleH(BuildContext context, double size) {
    if (getScreenH(context) == 0.0) return size;
    return size * getScreenH(context) / _designH;
  }

  // returns the fonts size after adaptation according to the screen density.
  // fontSize
  static double getScaleSp(BuildContext context, double fontSize) {
    if (getScreenW(context) == 0.0) return fontSize;
    return fontSize * getScreenW(context) / _designW;
  }

  // Orientation
  // (portrait, landscape)
  static Orientation getOrientation(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return mediaQuery.orientation;
  }

  // returns the size after adaptation according to the screen width.(unit dp or pt)
  double getWidth(double size) {
    return _screenWidth == 0.0 ? size : (size * _screenWidth / _designW);
  }

  // returns the size after adaptation according to the screen height.(unit dp or pt)
  // size unit dp or pt
  double getHeight(double size) {
    return _screenHeight == 0.0 ? size : (size * _screenHeight / _designH);
  }

  // returns the size after adaptation according to the screen width.(unit dp or pt)
  // sizePx unit px
  double getWidthPx(double sizePx) {
    return _screenWidth == 0.0
        ? (sizePx / _designD)
        : (sizePx * _screenWidth / (_designW * _designD));
  }

  // returns the size after adaptation according to the screen height.(unit dp or pt)
  // sizePx unit px
  double getHeightPx(double sizePx) {
    return _screenHeight == 0.0
        ? (sizePx / _designD)
        : (sizePx * _screenHeight / (_designH * _designD));
  }

  // returns the fonts size after adaptation according to the screen density.
  // fontSize
  double getSp(double fontSize) {
    if (_screenDensity == 0.0) return fontSize;
    return fontSize * _screenWidth / _designW;
  }

  // Get the appropriate size, compatible with horizontal/vertical screen switching, can be used for wide, high, fonts size adaptation.
  double getAdapterSize(double dp) {
    if (_screenWidth == 0 || _screenHeight == 0) return dp;
    return getRatio() * dp;
  }

  // Ratio.
  double getRatio() {
    return (_screenWidth > _screenHeight ? _screenHeight : _screenWidth) /
        _designW;
  }

  // Get the appropriate size, compatible with horizontal/vertical screen switching, can be used for wide, high, fonts size adaptation.
  static double getAdapterSizeCtx(BuildContext context, double dp) {
    Size size = MediaQuery.of(context).size;
    if (size == Size.zero) return dp;
    return getRatioCtx(context) * dp;
  }

  // Ratio.
  static double getRatioCtx(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return (size.width > size.height ? size.height : size.width) / _designW;
  }

  double getPadding() {
    if (_screenWidth == 0 || _screenHeight == 0) return 8.0;
    return getRatio() * 8.0;
  }
}