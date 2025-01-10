import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vercel_app/core/constants/app_colors.dart';
import 'package:vercel_app/core/constants/app_icons.dart';

import '../widgets/internet_status_widget.dart';

class HomeWrapperWidget extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const HomeWrapperWidget({super.key, required this.navigationShell});

  @override
  State<HomeWrapperWidget> createState() => HomeWrapperWidgetState();
}

class HomeWrapperWidgetState extends State<HomeWrapperWidget> {
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: const Column(
        children: [
          InternetStatusBar(),
        ],
      ),
      bottomNavigationBar: Material(
        color: AppColors.white,
        shadowColor: AppColors.white,
        child: SafeArea(child: Container(
          decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 1, color: Theme.of(context).colorScheme.outline.withOpacity(0.4),),),
        ),
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){}, icon: const Icon(AppIcons.home),),
            IconButton(onPressed: (){}, icon: const Icon(AppIcons.usage),),
            IconButton(onPressed: (){}, icon: const Icon(AppIcons.notification),),
            IconButton(onPressed: (){}, icon: const Icon(AppIcons.profile),),
          ],
        ),
        ),
        ),
      ),
    );
  }
}
