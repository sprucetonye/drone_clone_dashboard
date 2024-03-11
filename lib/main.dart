import 'package:flutter/material.dart';
import 'package:mobileapp/home_page.dart';

void main() {
  runApp(const MobileApp());
}

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _HomePageState();
}

class _HomePageState extends State<RootPage> {
  int currentpage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[350],
        title: const Center(
          child: Text('Mobile Money'),
        ),
        
      ),
      body: const HomePage(),
     drawer: Drawer(backgroundColor: Colors.grey[300],),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('welcome home');
        },
        child: const Icon(Icons.app_registration_rounded),
      ),
      bottomNavigationBar: NavigationBar(
        
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'search'),
          NavigationDestination(icon: Icon(Icons.people), label: 'people'),
          NavigationDestination(
              icon: Icon(Icons.notifications_none), label: 'Notification'),
          NavigationDestination(icon: Icon(Icons.email), label: 'Email'),
        ],
        onDestinationSelected: (int index) {
          setState(
            () {
              currentpage = index;
            },
          );
        },
        selectedIndex: currentpage,
      ),
    );
  }
}
