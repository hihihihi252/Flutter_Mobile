import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: const Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                Text(
                  "Xin chao",
                  textDirection: TextDirection.ltr,
                ),
                Text(
                  "Widget",
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              children: [
                Text(
                  "Xin chao",
                  textDirection: TextDirection.ltr,
                ),
                Text(
                  "Widget",
                  textDirection: TextDirection.ltr,
                ),
              ],
            ),
          ),
          // Thêm khung Row mới ở đây
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              color: Colors.amber,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      "New",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(width: 30), // Sửa height thành width
                    Text(
                      "Row",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(width: 30), // Thêm khoảng cách giữa các phần tử
                    Column(
                      children: [
                        Text(
                          "New",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          "Column",
                          textDirection: TextDirection.ltr,
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}