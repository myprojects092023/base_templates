library base_templates;

import 'package:flutter/material.dart';

import '../base_templates.dart';

class Wrapper extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  final bool scrollable;
  final Color? scaffoldBackgroundColor;

  const Wrapper({
    super.key,
    required this.child,
    this.padding,
    this.scrollable = false,
    this.scaffoldBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    var padding = this.padding ?? BaseTemplates.defaultWrapperPadding;

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SafeArea(
        child: scrollable
            ? SingleChildScrollView(
                padding: padding,
                child: child,
              )
            : Padding(
                padding: padding,
                child: child,
              ),
      ),
    );
  }
}
