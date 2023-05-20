import 'package:flutter/material.dart';

import 'HomeWidget.dart';
import 'ProfileWidget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thi trắc nghiệm'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue.shade900,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          HomeViewWidget(),
          ProfileWidget(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            activeIcon: Icon(Icons.account_circle),
            label: 'Cá nhân',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.create),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Tham gia'),
                content: const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Nhập mã đề'),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                  ),
                ),
                actionsPadding: const EdgeInsets.only(left: 28, right: 28, bottom: 18),
                actions: [
                  FilledButton(
                    onPressed: () {},
                    child: const Text('Tham gia'),
                  ),
                ],
              );
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
