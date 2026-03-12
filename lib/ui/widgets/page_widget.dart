import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/ui/widgets/header_widget.dart';

class PageWidget extends StatelessWidget {
  final GlobalKey sectionKey;
  final Color? color;
  final String? header;
  final Widget child;
  final bool needsMaxConstraint;

  const PageWidget({
    super.key,
    required this.sectionKey,
    this.color,
    this.header,
    required this.child,
    required this.needsMaxConstraint,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = header != null ? kToolbarHeight * 2 : kToolbarHeight;

    return Container(
      key: sectionKey,
      width: double.infinity,
      constraints: BoxConstraints(minHeight: screenHeight - appBarHeight),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (header != null) HeaderWidget(text: header!),
          //make header widget
          Container(
            width: double.infinity,
            constraints: needsMaxConstraint
                ? BoxConstraints(maxHeight: screenHeight - appBarHeight)
                : null,
            child: child,
          ),
        ],
      ),
    );
  }
}
