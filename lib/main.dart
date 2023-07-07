import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fluttercon_design_tokens_example/views/views.dart';

import 'widgets/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tokens Demo',
      // Add theme extensions here so they react when system theme is changed
      // from light to dark. 
      theme: const AppTheme().themeData.copyWith(
        extensions: <ThemeExtension<dynamic>>[
          AppColors.light,
          AppTypography.light,
        ],
      ),
      darkTheme: const AppDarkTheme().themeData.copyWith(
        extensions: <ThemeExtension<dynamic>>[
          AppColors.dark,
          AppTypography.dark,
        ],
      ),
      home: const MyHomePage(title: 'Tokens Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTab = 0;

  void _newChat() {}

  void _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: const [
          ChatsView(),
          FormView(),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedTab,
        onTap: (value) => _changeTab(value),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _newChat,
        tooltip: 'New chat',
        child: const Icon(Icons.edit),
      ),
    );
  }
}
