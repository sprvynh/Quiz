import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz/Router.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // SizedBox(height: 18),
            const ListTile(
              leading: CircleAvatar(),
              title: Text('Lê Quang Vịnh'),
              subtitle: Text('abc@gmail.com'),
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 8),
            const Card(
              child: ListTile(
                leading: Icon(Icons.library_books_sharp),
                title: Text('Quản lý đề'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.question_mark_outlined),
                title: Text('Ngân hàng câu hỏi'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.history),
                title: Text('Lịch sử làm bài'),
              ),
            ),
            Card(
              child: ListTile(
                textColor: Colors.red,
                iconColor: Colors.red,
                leading: const Icon(Icons.logout),
                title: const Text('Đăng xuất'),
                onTap: () {
                  context.go(SIGNIN_ROUTE);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
