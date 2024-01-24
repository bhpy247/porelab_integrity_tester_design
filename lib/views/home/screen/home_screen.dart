import 'package:flutter/material.dart';
import 'package:porelab_integrity_tester_design/configs/app_constants.dart';
import 'package:porelab_integrity_tester_design/views/common/components/common_appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppConstants.getCommonAppbar(
        actions: [
          Image.asset(AssetsName.bellIcon),
          Image.asset(AssetsName.menuIcon),
        ]
      ),
      body: const Center(
        child: Text("Hello"),
      ),
    );
  }
}
