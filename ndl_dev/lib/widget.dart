import 'package:flutter/material.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Screen'),
      ),
      body: Align(
        alignment: Alignment.topCenter, // Căn giữa theo chiều ngang và ở phía trên
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Bắt đầu từ phía trên
          children: [
            const Text(
              'Xin Chao',
              textDirection: TextDirection.ltr,
            ),
            const Text(
              'Widget',
              textDirection: TextDirection.ltr,
            ),
            Image.network(
              'https://huongdanlaptrinh.net/content/images/size/w1200/wordpress/2019/06/flutter.png'),
          ],
        ),
      ),
    );
  }
}