import 'package:flutter/material.dart';
import 'package:porelab_integrity_tester_design/views/home/screen/home_screen.dart';
import 'package:provider/provider.dart';

import 'backend/app_theme/app_theme_controller.dart';
import 'backend/app_theme/app_theme_provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider<AppThemeProvider>(create: (_) => AppThemeProvider()),
        ],
        child:MyApp());
  }
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      AppThemeController(appThemeProvider: Provider.of<AppThemeProvider>(context, listen: false)).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeProvider>(
        builder: (BuildContext context, AppThemeProvider appThemeProvider, Widget? child) {
          // MyPrint.printOnConsole("appThemeProvider:${appThemeProvider.darkThemeMode}");
          return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const HomeScreen(),
        );
      }
    );
  }
}
