import 'package:flutter/material.dart';
import 'package:quiz/Presentation/Views/home/NavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = ScrollController();
  final double itemSize = 200;

  void onListenerController() {
    setState(() {});
  }

  @override
  void initState() {
    controller.addListener(onListenerController);
    super.initState();
  }

  @override
  void dispose() {
    controller.removeListener(onListenerController);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text('AppBar Demo'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        color: Colors.white,
        child: _listView(),
        // child: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [_body()],
        //   ),
        // ),
      ),
    );
  }

  Widget _body() => Stack(
        children: [
          _listView(),
        ],
      );
  Widget _listView() => ListView.builder(
        itemCount: 5,
        controller: controller,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.of(context).push(route),
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(4),
              height: itemSize,
              decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(12), boxShadow: const [BoxShadow(color: Colors.black87, blurRadius: 1, spreadRadius: 2)]),
              child: Text(
                '$index',
                style: TextStyle(color: Color.fromARGB(255, 68, 50, 50), fontSize: 40),
              ),
            ),
          );
        },
      );
}
