// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz/Presentation/Views/Exam/TestView.dart';

class ExamDetail extends StatelessWidget {
  const ExamDetail({
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
              AspectRatio(
                aspectRatio: 21 / 9,
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://file3.qdnd.vn/data/images/0/2022/04/20/tuanson/10%201.jpg?dpi=150&quality=100&w=870'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text('Bởi: Lê Quang Vịnh'),
              const Text('Thời gian làm bài: 15p'),
              const Text('Số câu hỏi: 10'),
              const SizedBox(height: 12),
              FilledButton(
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(builder: (context) => TestView(title: title)));
                },
                child: const Text('Bắt đầu làm bài'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
