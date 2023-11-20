import 'package:flutter/material.dart';
import 'package:taskmanager_apps_api/ui/screen/cancel_task_screen.dart';
import 'package:taskmanager_apps_api/ui/screen/completed_task_screen.dart';
import 'package:taskmanager_apps_api/ui/screen/in_progress_screen.dart';
import 'package:taskmanager_apps_api/ui/screen/new_task_screen.dart';

class ButtonNavBar extends StatefulWidget {
  const ButtonNavBar({super.key});

  @override
  State<ButtonNavBar> createState() => _ButtonNavBarState();
}

class _ButtonNavBarState extends State<ButtonNavBar> {

   int _selectedIndex = 0;

   final List<Widget> _screen = const[
     NewTaskScreen(),
     InProgressTaskScreen(),
     CancelTaskScreen(),
     CompletedTaskScreen(),

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        onTap: (int index){
          _selectedIndex = index;
          if(mounted){
            setState(() {});
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'New'),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'In Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.cancel), label: 'Cancel'),
          BottomNavigationBarItem(icon: Icon(Icons.done_all), label: 'Completed'),
        ],
      ),
    );
  }
}