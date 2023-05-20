// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Presentation/Views/Exam/ExamDetail.dart';

class ExamWidget extends StatelessWidget {
  const ExamWidget({
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              ...List.generate(
                10,
                (index) => Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const ExamDetail(title: 'Ôn tập chương 69')));
                    },
                    leading: CircleAvatar(),
                    title: Text('Ôn tập chương 6$index'),
                    subtitle: Text('Tạo bởi: Lê Quang Vịnh\nThời gian làm: 15p\nSố câu: 10'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
