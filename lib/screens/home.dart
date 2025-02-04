import 'package:daily_plan/common/widgets/box_item.dart';
import 'package:daily_plan/common/widgets/task_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Task',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
                    child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(children: [
                          boxItem(
                              'assets/icons/iMac.png',
                              'Completed',
                              '86 Task',
                              [
                                Color(0xff7DC8E7),
                                Color(0xff7DC8E7).withOpacity(0.69)
                              ],
                              0),
                          const SizedBox(
                            height: 17,
                          ),
                          boxItem(
                              '',
                              'Canceled',
                              '15 Task',
                              [
                                Color(0xffE77D7D),
                                Color(0xffE77D7D).withOpacity(0.71)
                              ],
                              1,
                              icon: Icons.cancel_presentation),
                        ]),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(children: [
                          boxItem(
                              '',
                              'Pending',
                              '15 Task',
                              [
                                Color(0xff7D88E7),
                                Color(0xff7D88E7).withOpacity(0.74)
                              ],
                              1,
                              icon: Icons.watch_later_outlined),
                          const SizedBox(
                            height: 17,
                          ),
                          boxItem(
                              'assets/icons/Folder.png',
                              'On Going',
                              '67 Task',
                              [
                                Color(0xff81E89E),
                                Color(0xff81E89E).withOpacity(0.35)
                              ],
                              0),
                        ]),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Today Task',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      Text('View all',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Color(0xff393F93),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  taskItem(),
                ],
              ),
            )))
          ],
        ),
      ),
    );
  }
}
