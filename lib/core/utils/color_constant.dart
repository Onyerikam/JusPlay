import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green300 = fromHex('#6dd177');

  static Color whiteA7007e = fromHex('#7effffff');

  static Color bluegray90063 = fromHex('#63252334');

  static Color bluegray20019 = fromHex('#19b6b4d0');

  static Color whiteA70099 = fromHex('#99ffffff');

  static Color gray3008d = fromHex('#8ddedede');

  static Color black90000 = fromHex('#001b1201');

  static Color amberA700 = fromHex('#ffad09');

  static Color whiteA700Ab = fromHex('#abffffff');

  static Color whiteA70019 = fromHex('#19ffffff');

  static Color gray400 = fromHex('#c4c4c4');

  static Color orangeA200 = fromHex('#ffac47');

  static Color bluegray100A2 = fromHex('#a2cbc9d8');

  static Color deepPurpleA7000c = fromHex('#0c1e00ff');

  static Color amber300 = fromHex('#ffcb49');

  static Color black9001 = fromHex('#0006031f');

  static Color whiteA70065 = fromHex('#65ffffff');

  static Color bluegray800 = fromHex('#353449');

  static Color whiteA70063 = fromHex('#63ffffff');

  static Color black90099 = fromHex('#9906041f');

  static Color whiteA70064 = fromHex('#64ffffff');

  static Color bluegray9002b = fromHex('#2b252334');

  static Color bluegray401 = fromHex('#888888');

  static Color bluegray400 = fromHex('#8b899e');

  static Color gray500Ab = fromHex('#aba5a4b1');

  static Color black9002 = fromHex('#00000000');

  static Color bluegray9006c = fromHex('#6c28263e');

  static Color black90019 = fromHex('#19100f0f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color whiteA7005e = fromHex('#5effffff');

  static Color red700 = fromHex('#de0b30');

  static Color whiteA700Cc = fromHex('#ccffffff');

  static Color black903 = fromHex('#000000');

  static Color whiteA70075 = fromHex('#75ffffff');

  static Color bluegray90090 = fromHex('#9028263e');

  static Color black900 = fromHex('#06041f');

  static Color black902 = fromHex('#1b1302');

  static Color black901 = fromHex('#04021b');

  static Color deepOrange400 = fromHex('#ff7b51');

  static Color black90026 = fromHex('#26020012');

  static Color whiteA7006c = fromHex('#6cffffff');

  static Color gray500 = fromHex('#a5a4b1');

  static Color whiteA700A2 = fromHex('#a2ffffff');

  static Color indigo50 = fromHex('#e8e6ff');

  static Color bluegray100 = fromHex('#cbc9d8');

  static Color whiteA70087 = fromHex('#87ffffff');

  static Color bluegray900 = fromHex('#252334');

  static Color indigo100 = fromHex('#cbc9e3');

  static Color bluegray105 = fromHex('#c8e1e9');

  static Color bluegray104 = fromHex('#cdcdcd');

  static Color bluegray103 = fromHex('#cac9d7');

  static Color bluegray301 = fromHex('#9491b1');

  static Color bluegray102 = fromHex('#ceccd7');

  static Color bluegray300 = fromHex('#9592b1');

  static Color bluegray101 = fromHex('#cecdd8');

  static Color blue400 = fromHex('#499be9');

  static Color bluegray902 = fromHex('#262530');

  static Color bluegray901 = fromHex('#262531');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
