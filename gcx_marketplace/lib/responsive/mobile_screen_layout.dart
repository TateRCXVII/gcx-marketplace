import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Screen Layout'),
      ),
      body: const Center(
        child: Text('Mobile Screen Layout'),
      ),
    );
  }
}
