// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  const TestView({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue.shade900,
        centerTitle: true,
        elevation: 0.0,
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  10,
                  (index) {
                    final isDone = Random().nextBool();
                    final isSelected = index == 0;
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Chip(
                        label: Text('${index + 1}'),
                        labelStyle: TextStyle(color: isDone ? Colors.white : null),
                        backgroundColor: isDone ? Colors.blue.shade900 : null,
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Thầy huấn có bao nhiêu ngón tay',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            RadioMenuButton<String>(
              toggleable: true,
              value: '10 ngón',
              groupValue: '1',
              onChanged: (i) {},
              child: Text('A: 10 ngón'),
            ),
            RadioMenuButton<String>(
              value: '9 ngón',
              groupValue: '1',
              onChanged: (i) {},
              child: Text('A: 9 ngón'),
            ),
            RadioMenuButton<String>(
              value: 'Không có',
              groupValue: '1',
              onChanged: (i) {},
              child: Text('Không có'),
            ),
            RadioMenuButton<String>(
              value: '9.5 ngón',
              groupValue: '1',
              onChanged: (i) {},
              child: Text('A: 9.5 ngón'),
            )
            // Expanded(
            //   child: SingleChildScrollView(
            //     child: Padding(
            //       padding: EdgeInsets.all(18),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [Text('data')],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
