import 'package:flutter/material.dart';

class LoadViewer extends StatelessWidget {
  const LoadViewer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
