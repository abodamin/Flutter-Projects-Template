import 'dart:math';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:projects_template/app/colors.dart';
import 'package:projects_template/app/imports.dart';
import 'package:projects_template/views/reusable_widgets/responsive.dart';

///**************************************************
/// Put all handy small widgets or methods here,
/// to save your time for later.
/// - Use WIDGETS not methods because it is better for performance.
/// - keep it general and simple otherwise make it in separate file.
///*************************************************

///for better print method
Logger mLogger = Logger();

Color getColorFromHex(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll('#', '');

  if (hexColor.length == 6) {
    hexColor = 'FF' + hexColor;
  }

  return Color(int.parse(hexColor, radix: 16));
}

Future navigateTo(context, page) async {
  return await Navigator.push(
      context, MaterialPageRoute(builder: (context) => page));
}

InputDecoration txtField(String label) {
  return new InputDecoration(
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    hintText: label,
    hintStyle: TextStyle(color: Colors.grey),
    disabledBorder: InputBorder.none,
    contentPadding: EdgeInsets.only(left: 15, right: 15),
  );
}

Future<void> setUIOverlays() async {
  await SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
}

InputDecoration txtFieldLabel(String label) {
  return new InputDecoration(
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    labelText: label,
    disabledBorder: InputBorder.none,
    contentPadding: EdgeInsets.only(left: 5, right: 5),
  );
}

InputDecoration txtFieldSearch(String label) {
  return new InputDecoration(
    border: InputBorder.none,
    suffixIcon: Icon(Icons.clear),
    disabledBorder: InputBorder.none,
    contentPadding: EdgeInsets.only(left: 15, right: 15),
  );
}

RoundedRectangleBorder buttonShape() {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(14.0),
  );
}

Decoration containerRadiusWithGradient(double radius) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    gradient: LinearGradient(
      colors: [
        Color(0xFFFDCA46F),
        Color(0xFFFA47E5D),
      ],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
  );
}

Decoration containerRadius(Color background, double radius) {
  return BoxDecoration(
    color: background,
    border: Border.all(
        width: 1, //
        color: background //                  <--- border width here
        ),
    borderRadius: BorderRadius.circular(radius),
  );
}

Decoration containerColorRadiusBorder(
    Color background, double radius, Color color) {
  return BoxDecoration(
    color: background,
    border: Border.all(
        width: 1, //
        color: color //                  <--- border width here
        ),
    borderRadius: BorderRadius.circular(radius),
  );
}

Decoration containerColorRadiusBorderWidth(
    Color background, double radius, Color color, double w) {
  return BoxDecoration(
    color: background,
    border: Border.all(
        width: w, //
        color: color //                  <--- border width here
        ),
    borderRadius: BorderRadius.circular(radius),
  );
}

Decoration containerColorRadiusRight(Color background, double radius) {
  return BoxDecoration(
    color: background,
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(radius),
        bottomRight: Radius.circular(radius)),
  );
}

Decoration containerColorRadiusRightBorder(
    Color background, double radius, double w) {
  return BoxDecoration(
    color: background,
    border: Border.all(
        width: w, //
        color: Colors.white //                  <--- border width here
        ),
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(radius),
        bottomRight: Radius.circular(radius)),
  );
}

Decoration containerColorRadiusRightBorderc(
    Color background, double radius, double w, Color borderColor) {
  return BoxDecoration(
    color: background,
    border: Border.all(
        width: w, //
        color: borderColor //                  <--- border width here
        ),
    borderRadius: BorderRadius.circular(radius),
  );
}

Decoration containerColorRadiusTop(Color color, double radius) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(radius),
      topRight: Radius.circular(radius),
    ),
  );
}

Decoration containerColorRadiusBottom(Color color, double radius) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
    ),
  );
}

Decoration containerColorRadiusLeftBorder(
    Color background, double radius, double w) {
  return BoxDecoration(
    color: background,
    border: Border.all(
        width: w, //
        color: Colors.white //                  <--- border width here
        ),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius), bottomLeft: Radius.circular(radius)),
  );
}

ShapeBorder cardRadius(double radius) {
  return RoundedRectangleBorder(
    side: BorderSide(color: Colors.transparent, width: 1),
    borderRadius: BorderRadius.circular(radius),
  );
}

ShapeBorder cardRadiusTop(double radius) {
  return RoundedRectangleBorder(
    side: BorderSide(color: Colors.transparent, width: 0),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius), topRight: Radius.circular(radius)),
  );
}

ShapeBorder cardRadiusTop2(double radius) {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius), topRight: Radius.circular(radius)),
  );
}

ShapeBorder cardRadiusBottom(double radius) {
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(radius),
        bottomRight: Radius.circular(radius)),
  );
}

ShapeBorder cardRadiusWithoutBorder(double radius) {
  return RoundedRectangleBorder(
    side: BorderSide(color: Colors.transparent, width: 1),
    borderRadius: BorderRadius.circular(radius),
  );
}

ShapeBorder cardRadiusWithBorder(double radius) {
  return RoundedRectangleBorder(
    side: BorderSide(color: Colors.grey, width: 1),
    borderRadius: BorderRadius.circular(radius),
  );
}

ShapeBorder cardRadiusBorder(double radius, double w) {
  return RoundedRectangleBorder(
    side: BorderSide(color: Colors.transparent, width: w),
    borderRadius: BorderRadius.circular(radius),
  );
}

ShapeBorder cardColorRadiusBorder(Color color, double radius, double w) {
  return RoundedRectangleBorder(
    side: BorderSide(color: color, width: w),
    borderRadius: BorderRadius.circular(radius),
  );
}

String properRound(double val, int places) {
  double mod = pow(10.0, places);
  double result = ((val * mod).round().toDouble() / mod);
  return result.toString();
}

double properRoundDouble(double val, int places) {
  double mod = pow(10.0, places);
  double result = ((val * mod).round().toDouble() / mod);
  return result;
}

// ------- WIDGETS ------- //

class CircularImage extends StatelessWidget {
  final String image;
  final double width, height;

  const CircularImage(this.image, this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190.0,
      height: 190.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(image),
        ),
      ),
    );
  }
}

class MDivider extends StatelessWidget {
  final Color color;

  const MDivider(this.color);

  @override
  Widget build(BuildContext context) {
    return Divider(
      // width: double.infinity,
      height: 1,
      color: color,
    );
  }
}

class MFlex extends StatelessWidget {
  final int flex;

  const MFlex(this.flex);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flex,
      child: Container(),
    );
  }
}

class MWidth extends StatelessWidget {
  final double width;

  const MWidth(this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
    );
  }
}

class MHeight extends StatelessWidget {
  final double height;

  const MHeight(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
    );
  }
}

class MButtonText extends StatelessWidget {
  final String text;

  const MButtonText(this.text);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFA47E5D),
            Color(0xFFFDCA46F),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.all(Radius.circular(14.0)),
      ),
      child: Container(
        alignment: Alignment.center,
        height: 50,
        constraints: const BoxConstraints(minWidth: 0.0, minHeight: 0.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}

class MyLoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: CircularProgressIndicator
            .adaptive(), // or use your own progress indicator.
      ),
    );
  }
}

class AppBarText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const AppBarText(this.text, {this.style})
      : assert(text != null, 'text must be non null');

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      style: getTextTheme(context).button.copyWith(color: primaryColor),
    );
  }
}
