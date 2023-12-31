import 'package:flutter/material.dart';

import '../../widgets/list_tile_item.dart';

import '../../widgets/user_profile_banner.dart';


class CompletedTaskScreen extends StatelessWidget {
  const CompletedTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBannerAppBar(),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return SizedBox();
                  // return  TaskListTile(
                  //   taskData: null,
                  // );
                }, separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


