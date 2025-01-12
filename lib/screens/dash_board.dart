import 'package:daily_plan/controllers/dash_board_controller.dart';
import 'package:daily_plan/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DashBoard extends StatelessWidget {
  DashBoard({super.key});
  final controller = Get.put(DashBoradController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterDocked,
          bottomNavigationBar: bottomNavigationBase(context),
          body: pageDefine()),
    );
  }

  Widget bottomNavigationBase(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: BottomAppBar(
        elevation: 0,
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(4, 4),
                  spreadRadius: 2,
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          margin: const EdgeInsets.symmetric(horizontal: 6),
          child: Obx(
            () => Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: itemDashBoard(
                        controller.selectedIndex.value != 0
                            ? 'assets/icons/Home.svg'
                            : 'assets/icons/Home_Selected.svg',
                        0),
                  ),
                  Expanded(
                    child: itemDashBoard(
                        controller.selectedIndex.value != 1
                            ? 'assets/icons/Document.svg'
                            : 'assets/icons/Document_Selected.svg',
                        1),
                  ),
                  Expanded(
                      child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xff5B67CA), shape: BoxShape.circle),
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  )),
                  Expanded(
                    child: itemDashBoard(
                        controller.selectedIndex.value != 2
                            ? 'assets/icons/Activity.svg'
                            : 'assets/icons/Activity_Selected.svg',
                        2),
                  ),
                  Expanded(
                    child: itemDashBoard(
                        controller.selectedIndex.value != 3
                            ? 'assets/icons/Folder.svg'
                            : 'assets/icons/Folder_Selected.svg',
                        3),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget itemDashBoard(String pathPicture, int index) {
    return GestureDetector(
      onTap: () {
        controller.onItemTapped(index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SvgPicture.asset(
          pathPicture,
          height: 25,
          width: 25,
        ),
      ),
    );
  }

  Widget pageDefine() {
    switch (controller.selectedIndex.value) {
      case 0:
        return HomeScreen();
      case 1:
        return HomeScreen();
      case 2:
        return HomeScreen();
      case 3:
        return HomeScreen();
      default:
        return HomeScreen();
    }
  }
}
