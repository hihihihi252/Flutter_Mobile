import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:ndl_dev/material.dart';

final Logger _logger = Logger('VpnStatusWidget');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WidgetScreen(), // Sử dụng WidgetScreen ở đây
    );
  }
}

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Screen'),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
              'https://huongdanlaptrinh.net/content/images/size/w1200/wordpress/2019/06/flutter.png'
            ),
            const SizedBox(height: 20), // Thêm khoảng cách giữa hai widget
            const VpnStatusWidget(), // Gọi widget trạng thái VPN
            const SizedBox(height: 20), // Thêm khoảng cách giữa hai widget
            ElevatedButton(
              onPressed: () {
                // Điều hướng đến MyWidget
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyWidget()),
                );
              },
              child: const Text('Go to My Widget'),
            ),
          ],
        ),
      ),
    );
  }
}

class VpnStatusWidget extends StatefulWidget {
  const VpnStatusWidget({super.key});

  @override
  State<VpnStatusWidget> createState() => _VpnStatusWidgetState();
}

class _VpnStatusWidgetState extends State<VpnStatusWidget> {
  bool isConnected = false;
  String serverName = 'Viet Nam';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(isConnected ? "Connected" : "Disconnected"),
        Text(serverName),
        ElevatedButton(
          onPressed: () {
            setState(() {
              isConnected = !isConnected;
            });
            // Log trạng thái vào console
            _logger.info('VPN is ${isConnected ? 'connected' : 'disconnected'}');
          },
          child: Text(isConnected ? "Disconnect" : "Connect"),
        ),
      ],
    );
  }
}
