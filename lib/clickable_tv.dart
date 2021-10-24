import 'package:flutter/material.dart';

class ClickableTv extends StatefulWidget {
  Widget? child;
  GestureTapCallback? onClick;

  ClickableTv({Key? key, this.child, this.onClick}) : super(key: key);

  @override
  _ClickableTvState createState() => _ClickableTvState();
}

class _ClickableTvState extends State<ClickableTv> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: RawKeyboardListener(
            focusNode: FocusNode(),
            onKey: (args) {
              // print("RawKeyboardListener: $args");
              if (args.logicalKey.keyLabel == "Select") {
                widget.onClick?.call();
              }
            },
            child: InkWell(
              child: widget.child,
              onTap: widget.onClick,
            )));
  }
}
