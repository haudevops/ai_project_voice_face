import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSnackBar extends StatefulWidget {
  const CustomSnackBar.success({
    @required this.message,
    this.icon = const Icon(
      Icons.check_circle,
      color: Colors.white,
      size: 50,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: Colors.white,
    ),
    this.backgroundColor = const Color(0xff00E676),
  });

  const CustomSnackBar.info({
    @required this.message,
    this.icon = const Icon(
      Icons.sentiment_neutral,
      color: Color(0x15000000),
      size: 50,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: Colors.white,
    ),
    this.backgroundColor = const Color(0xff2196F3),
  });

  const CustomSnackBar.error({
    @required this.message,
    this.icon = const Icon(
      Icons.error_outline,
      color: Color(0x15000000),
      size: 50,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
      color: Colors.white,
    ),
    this.backgroundColor = const Color(0xffff5252),
  });

  final String message;
  final Icon icon;
  final Color backgroundColor;
  final TextStyle textStyle;

  @override
  _CustomSnackBarState createState() => _CustomSnackBarState();
}

class _CustomSnackBarState extends State<CustomSnackBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Row(
          children: [
            widget.icon,
            Expanded(
              child: Text(
                widget.message,
                style: theme.textTheme.bodyText2?.merge(
                  widget.textStyle,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }
}
