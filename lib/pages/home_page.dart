import 'package:flutter/material.dart';
import 'package:studycp/pages/first_page.dart';
import 'package:studycp/pages/secound_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getPages(),
      bottomNavigationBar: getNavigations(),
    );
  }
  
  Widget getPages() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        FirstPage(),
        SecondPage()
      ],
    );
  }
  
  Widget getNavigations() {
    List<BottomNavigationBarItem> items = const [
      BottomNavigationBarItem(icon: Icon(Icons.abc), label: "First Page"),
      BottomNavigationBarItem(icon: Icon(Icons.account_tree), label: "Second Page")
    ];

    return BottomNavigationBar(
      items: items,
      type: BottomNavigationBarType.fixed,
      currentIndex: pageIndex,
      onTap: (index) {
        setState(() {
          pageIndex = index;
        });
      },
    );
  }
}