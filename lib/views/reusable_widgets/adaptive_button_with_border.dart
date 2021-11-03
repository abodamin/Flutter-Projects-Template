import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects_template/views/reusable_widgets/utils.dart';

///Shows native bordered button for iOS and Android.
class AdaptiveBorderButton extends StatefulWidget {
  final Widget child;
  final VoidCallback onPressed;
  final double radius;
  final Color color;

  final Color bgColor;

  final Color borderColor;

  final double width;

  const AdaptiveBorderButton({
    Key key,
    @required this.child,
    @required this.onPressed,
    this.radius,
    @required this.color,
    @required this.bgColor,
    @required this.borderColor,
    @required this.width,
  }) : super(key: key);

  @override
  _AdaptiveBorderButtonState createState() => _AdaptiveBorderButtonState();
}

class _AdaptiveBorderButtonState extends State<AdaptiveBorderButton> {
  double opacity = 0.9;

  @override
  Widget build(BuildContext context) {
    return !(Platform.isIOS || Platform.isMacOS)
        ? MaterialButton(
            shape: cardColorRadiusBorder(
              widget.borderColor,
              widget.radius ?? 8,
              widget.width,
            ),
            color: widget.bgColor,
            onPressed: widget.onPressed,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: widget.child,
            ),
          )
        : GestureDetector(
            onTapDown: (_) {
              setState(() {
                opacity = 0.4;
              });
            },
            onTap: () {
              Future.delayed(Duration.zero, widget.onPressed);
              opacity = 0.9;
              setState(() {});
            },
            child: Container(
              decoration: containerColorRadiusBorderWidth(
                widget.bgColor,
                widget.radius ?? 8,
                widget.borderColor.withOpacity(opacity),
                widget.width,
              ),
              child: widget.child,
            ),
          );
  }
}

/**
 * GestureDetector(
    onTapDown: (_) {
    setState(() {
    opacity = 0.4;
    });
    },
    onTap: () {
    // navigateTo(context, LoginPage());
    opacity = 0.9;
    setState(() {});
    },
    child: Container(
    margin: const EdgeInsets.all(8),
    decoration: containerColorRadiusBorderWidth(Colors.transparent,
    6, Colors.green.withOpacity(opacity), 4),
    child: Center(
    child: Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset(
    'assets/icons/Whatsapp.png',
    height: get30Size(context),
    ),
    mWidth(get10Size(context)),
    Text(
    "اتصل بنا",
    style: Theme.of(context)
    .textTheme
    .bodyText1
    .copyWith(color: Colors.green),
    ),
    ],
    ),
    ),
    ),
    ),
    ),
 */
