

part of'colors.dart';

class ColorConstants{
  static Color appBarBackgroundColor = Colors.grey.shade400;
  static Color primary = HexColor.fromHex("#FFFFFF");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#FFFFFF");
  static Color darkPrimary = HexColor.fromHex("#FFFFFF");
  static Color grey1 = HexColor.fromHex("#707070");
  static Color grey2 = HexColor.fromHex("#797979");
  static Color whiteTextColor = HexColor.fromHex("#FFFFFF");
  static Color blackTextColor = HexColor.fromHex("#000000");
  static Color error = HexColor.fromHex("#e61f34"); // red color
  static Color iconColor = HexColor.fromHex("#000000");


}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}