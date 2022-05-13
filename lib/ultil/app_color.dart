import 'package:flutter/material.dart';

class AppColor extends ChangeNotifier {
  AppColor();

  static Map<int, Color> color = {
    50: const Color.fromRGBO(136, 14, 79, .1),
    100: const Color.fromRGBO(136, 14, 79, .2),
    200: const Color.fromRGBO(136, 14, 79, .3),
    300: const Color.fromRGBO(136, 14, 79, .4),
    400: const Color.fromRGBO(136, 14, 79, .5),
    500: const Color.fromRGBO(136, 14, 79, .6),
    600: const Color.fromRGBO(136, 14, 79, .7),
    700: const Color.fromRGBO(136, 14, 79, .8),
    800: const Color.fromRGBO(136, 14, 79, .9),
    900: const Color.fromRGBO(136, 14, 79, 1),
  };

  static String binDefaultColor = '#000000';
  static String binPickedColor = '#2B9f02';
  static String binPickNotYetColor = '#f28022';
  static String binBigCarColor = '#0080ff';
  static String binSmallCarColor = '#0000ff';
  static String whiteColor = '#ffffff';
  static String yellowColor = '#ffff00';
  static String nitAppColor = '#1F1F1F';
  static String redColor = '#EF5350';
  static String emptyColor = '#FFFFFF';
  static String binFM = '#33F3FF';
  static String stairs = '#641E16';
  static String backgroundColor = '#303030';
  static String wall = '#CDC9C9';
  static String door = '#8B4513';

  static Color colorNavajoWhite = const Color(0xFFCDB38B);
  static Color colorGrey = Colors.grey;
  static Color colorGreen = MaterialColor(0xFF2B9F02, color);
  static Color colorBlue = MaterialColor(0xFF22B2F2, color);
  static Color colorWhite = Colors.white;
  static Color colorRed = Colors.red;
  static Color colorPink = Colors.pink;
  static Color colorOrange = MaterialColor(0xFFF3C34D, color);
  static Color colorCyan = Colors.cyan;
  static Color colorBlack = Colors.black;
  static Color colorErrorBackground = const Color(0xFFE30000);
  static Color colorBackgroundDrak = const Color(0xFF222222);
  static Color colorAppBarDrak = const Color(0xFF2a2a2a);
  static Color colorBackgroundContainerDark = const Color(0xFF2a2a2a);
  static Color colorBackgroundItemDrak = const Color(0xFF333333);
  static Color colorBackgroundItemDrakNew = const Color(0xFF171717);
  static Color colorBackgroundGrey = const Color(0xFF424242);

  static MaterialColor backgroundInitAppColor = MaterialColor(0xFF303030, color); // dark
  static MaterialColor textInfoColor = MaterialColor(0xFFADADAD, color);
  static MaterialColor buttonDisableBackgroundColor = MaterialColor(0xFF999999, color); // grey

  static Brightness brightness = Brightness.light;

  static MaterialColor defaultHeaderOSColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor primaryBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor secondBackgroundColor = MaterialColor(0xFFFAFAFA, color); // white over
  static MaterialColor appBarBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor appBarTitleColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor appBarIconColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor buttonBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor buttonTitleColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor itemListViewBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor itemListViewTitleTextColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor itemListViewContentTextColor = MaterialColor(0xFF000000, color); // black
  static MaterialColor iconTextColor = MaterialColor(0xFF000000, color); // black
  static Color iconBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor dividerColor = MaterialColor(0xFFF1F1F1, color); // grey
  static MaterialColor iconBorderColor = MaterialColor(0xFFADADAD, color); // gray
  static MaterialColor buttonBorderColor = MaterialColor(0xFFADADAD, color); // gray
  static MaterialColor dialogBackgroundColor = MaterialColor(0xFF111111, color); // black dialog
  static MaterialColor dialogItemListBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor dialogItemListBorderColor = MaterialColor(0xFFEAEAEA, color); // shadow gray
  static MaterialColor dialogBorderColor = MaterialColor(0xFFEAEAEA, color); // white border
  static MaterialColor dialogTitleItemListTextColor = MaterialColor(0xFF000000, color); // black
  static MaterialColor dialogContentItemListTextColor = MaterialColor(0xFF000000, color); // black
  static MaterialColor dialogIconItemListTextColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor bottomNavigationSelectedColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor bottomNavigationDefaultColor = MaterialColor(0xFFADADAD, color); // gray
  static MaterialColor mapItemPickedBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor mapItemPickDefaultBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor mapItemPickDefaultTextColor = MaterialColor(0xFF000000, color); // black
  static MaterialColor mapItemPickedTextColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor mapPickBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor loadingBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor loadingTextColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor switchActiveColor = MaterialColor(0xFFF1F1F1, color); // white switch
  static MaterialColor switchActiveTrackColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor switchActiveTrackColor_1 = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor switchInactiveTrackColor = MaterialColor(0x221F1F42, color); // gray
  static MaterialColor switchInactiveThumbColor = MaterialColor(0xFFF1F1F1, color); // over gray
  static MaterialColor textFieldLabelColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor textFieldHintTextColor = MaterialColor(0xFFADADAD, color); // grey
  static MaterialColor textFieldBorderFocusedColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor textFieldEnabledBorderColor = MaterialColor(0xFFEAEAEA, color); // grey
  static MaterialColor textFieldContentTextColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor textFieldContentTextOrangeColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor textFieldTitleTextColor = MaterialColor(0xFF000000, color); // black
  static MaterialColor textFieldCursorTextColor = MaterialColor(0xFF000000, color); // black
  static MaterialColor textFieldFillBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor textFieldSelectionColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor fabBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor fabTextColor = MaterialColor(0xFFFFFFFF, color); // white
  static MaterialColor itemCardBackgroundColor = MaterialColor(0xFF303030, color); // black
  static MaterialColor itemCardBorderColor = MaterialColor(0xFF3C3C3C, color); // b// yellow common
  static MaterialColor switchActiveColor_1 = MaterialColor(0xFFF3C34D, color); // yellow common switch
  static MaterialColor switchInactiveTrackColor_1 = MaterialColor(0x221F1F42, color); // gray
  static MaterialColor textColorGreen = MaterialColor(0xFF4CAF50, color); // green
  static MaterialColor containerBorder = MaterialColor(0xFFF3C34D, color); // yellow common
  static MaterialColor btnColorGreen = MaterialColor(0xFF4CAF50, color); // green
  static MaterialColor iconMinusColor = MaterialColor(0xFF44336, color); // red
  static MaterialColor iconPlusColor = MaterialColor(0xFF4CAF50, color); // green
  void switchMode({bool isDarkTheme = false}) {
    // true for light and false for dark
    if (!isDarkTheme) {
      // Light Mode
      brightness = Brightness.light;

      defaultHeaderOSColor = MaterialColor(0xFFF3C34D, color); // yellow common
      primaryBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
      secondBackgroundColor = MaterialColor(0xFFFAFAFA, color); // white over
      appBarBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
      appBarTitleColor = MaterialColor(0xFFFFFFFF, color); // white
      appBarIconColor = MaterialColor(0xFFFFFFFF, color); // white
      buttonBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
      buttonTitleColor = MaterialColor(0xFFF3C34D, color); // yellow common
      itemListViewBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
      itemListViewTitleTextColor = MaterialColor(0xFF000000, color); // black
      itemListViewContentTextColor = MaterialColor(0xFF000000, color); // black
      iconTextColor = MaterialColor(0xFF000000, color); // black
      iconBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
      dividerColor = MaterialColor(0xFFF1F1F1, color); // grey
      iconBorderColor = MaterialColor(0xFFADADAD, color); // gray
      buttonBorderColor = MaterialColor(0xFFADADAD, color); // gray
      dialogBackgroundColor = MaterialColor(0xFFFFFFFF, color); // black dialog
      dialogItemListBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
      dialogItemListBorderColor = MaterialColor(0xFFEAEAEA, color); // shadow gray
      dialogBorderColor = MaterialColor(0xFFEAEAEA, color); // white border
      dialogTitleItemListTextColor = MaterialColor(0xFF000000, color); // black
      dialogContentItemListTextColor = MaterialColor(0xFF000000, color); // black
      dialogIconItemListTextColor = MaterialColor(0xFFF3C34D, color); // yellow common
      bottomNavigationSelectedColor = MaterialColor(0xFFF3C34D, color); // yellow common
      bottomNavigationDefaultColor = MaterialColor(0xFFADADAD, color); // gray
      mapItemPickedBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
      mapItemPickDefaultBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
      mapItemPickDefaultTextColor = MaterialColor(0xFF000000, color); // black
      mapItemPickedTextColor = MaterialColor(0xFFFFFFFF, color); // white
      mapPickBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
      loadingBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
      loadingTextColor = MaterialColor(0xFFF3C34D, color); // yellow common
      switchActiveColor = MaterialColor(0xFFF1F1F1, color); // white switch
      switchActiveTrackColor = MaterialColor(0xFFF3C34D, color); // yellow common
      switchActiveTrackColor_1 = MaterialColor(0xFFF1F1F1, color); // yellow common
      switchInactiveTrackColor = MaterialColor(0x221F1F42, color); // gray
      switchInactiveThumbColor = MaterialColor(0xFFF1F1F1, color); // over gray
      textFieldLabelColor = MaterialColor(0xFFFFFFFF, color); // white
      textFieldHintTextColor = MaterialColor(0xFFADADAD, color); // grey
      textFieldBorderFocusedColor = MaterialColor(0xFFF3C34D, color); // yellow common
      textFieldEnabledBorderColor = MaterialColor(0xFFEAEAEA, color); // grey
      textFieldContentTextColor = MaterialColor(0xFFFFFFFF, color); // white
      textFieldContentTextOrangeColor = MaterialColor(0xFFF3C34D, color); // yellow common
      textFieldTitleTextColor = MaterialColor(0xFF000000, color); // black
      textFieldCursorTextColor = MaterialColor(0xFF000000, color); // black
      textFieldFillBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
      textFieldSelectionColor = MaterialColor(0xFFFFFFFF, color); // white
      fabBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
      fabTextColor = MaterialColor(0xFFFFFFFF, color); // white
      itemCardBackgroundColor = MaterialColor(0xFFFFFFFF, color); // white
      itemCardBorderColor = MaterialColor(0xFF3C3C3C, color); // black
      switchActiveColor_1 = MaterialColor(0xFFF1F1F1, color);
      textColorGreen = MaterialColor(0xFFF3C34D, color); // white switch
      containerBorder = MaterialColor(0xFFF3C34D, color); // yellow common
    } else {
      // Dark Mode
      brightness = Brightness.dark;

      defaultHeaderOSColor = MaterialColor(0xFF1F1F1F, color); // black
      primaryBackgroundColor = MaterialColor(0xFF1F1F1F, color); // black
      secondBackgroundColor = MaterialColor(0xFF303030, color); // dark
      appBarBackgroundColor = MaterialColor(0xFF1F1F1F, color); // black
      appBarTitleColor = MaterialColor(0xFFFFFFFF, color); // white
      appBarIconColor = MaterialColor(0xFFFFFFFF, color); // white
      buttonBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
      buttonTitleColor = MaterialColor(0xFFFFFFFF, color); // white
      itemListViewBackgroundColor = MaterialColor(0xFF1F1F1F, color); // black
      itemListViewTitleTextColor = MaterialColor(0xFFF3C34D, color); // yellow common
      itemListViewContentTextColor = MaterialColor(0xFFFFFFFF, color); // white
      iconTextColor = MaterialColor(0xFFFFFFFF, color); // white
      iconBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
      dividerColor = MaterialColor(0xFF303030, color); // dark
      iconBorderColor = MaterialColor(0xFF1F1F1F, color); // black
      buttonBorderColor = MaterialColor(0xFF303030, color); // dark
      dialogBackgroundColor = MaterialColor(0xFF1F1F1F, color); // black dialog
      dialogItemListBackgroundColor = MaterialColor(0xFF303030, color); // dark
      dialogItemListBorderColor = MaterialColor(0xFFEAEAEA, color); // shadow gray
      dialogBorderColor = MaterialColor(0xFF1F1F1F, color); // white border
      dialogTitleItemListTextColor = MaterialColor(0xFFFFFFFF, color); // white
      dialogContentItemListTextColor = MaterialColor(0xFFFFFFFF, color); // white
      dialogIconItemListTextColor = MaterialColor(0xFFF3C34D, color); // yellow common
      bottomNavigationSelectedColor = MaterialColor(0xFFF3C34D, color); // yellow common
      bottomNavigationDefaultColor = MaterialColor(0xFFADADAD, color); // gray
      mapItemPickedBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
      mapItemPickDefaultBackgroundColor = MaterialColor(0xFF1F1F1F, color); // black
      mapItemPickDefaultTextColor = MaterialColor(0xFFFFFFFF, color); // black
      mapItemPickedTextColor = MaterialColor(0xFFFFFFFF, color); // white
      mapPickBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
      loadingBackgroundColor = MaterialColor(0xFF1F1F1F, color); // black
      loadingTextColor = MaterialColor(0xFFFFFFFF, color); // white
      switchActiveColor = MaterialColor(0xFFF1F1F1, color); // white
      switchActiveTrackColor = MaterialColor(0xFFF3C34D, color); // yellow common
      switchActiveTrackColor_1 = MaterialColor(0xFFF3C34D, color); // yellow common
      switchInactiveTrackColor = MaterialColor(0xFFADADAD, color); // black
      switchInactiveTrackColor_1 = MaterialColor(0xFFADADAD, color); // black
      switchInactiveThumbColor = MaterialColor(0xFFF1F1F1, color); // over gray
      textFieldLabelColor = MaterialColor(0xFFFFFFFF, color); // white
      textFieldHintTextColor = MaterialColor(0xFFFFFFFF, color); // white
      textFieldBorderFocusedColor = MaterialColor(0xFFF3C34D, color); // yellow common
      textFieldEnabledBorderColor = MaterialColor(0xFF3C3C3C, color); // over black
      textFieldContentTextColor = MaterialColor(0xFFFFFFFF, color); // white
      textFieldContentTextOrangeColor = MaterialColor(0xFFF3C34D, color); // yellow common
      textFieldTitleTextColor = MaterialColor(0xFF1F1F1F, color); // black
      textFieldCursorTextColor = MaterialColor(0xFFFFFFFF, color); // white
      textFieldFillBackgroundColor = MaterialColor(0xFF1F1F1F, color); // black
      textFieldSelectionColor = MaterialColor(0xFF111111, color); // black
      fabBackgroundColor = MaterialColor(0xFFF3C34D, color); // yellow common
      fabTextColor = MaterialColor(0xFFFFFFFF, color); // white
      itemCardBackgroundColor = MaterialColor(0xFF303030, color); // black
      itemCardBorderColor = MaterialColor(0xFF3C3C3C, color); // bl
      switchActiveColor_1 = MaterialColor(0xFFF3C34D, color);
      textColorGreen = MaterialColor(0xFF4CAF50, color);
      containerBorder = MaterialColor(0xFFF3C34D, color);
    }

    notifyListeners();
  }
}
