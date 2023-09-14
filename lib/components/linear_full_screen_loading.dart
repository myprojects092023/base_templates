library base_templates;

import 'package:flutter/material.dart';

class LinearFullScreenLoading extends StatelessWidget {
  const LinearFullScreenLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LinearProgressIndicator(),
      ),
    );
  }
}