import 'package:daily_plan/screens/home.dart';
import 'package:daily_plan/screens/other.dart';
import 'package:daily_plan/screens/report.dart';
import 'package:daily_plan/screens/task.dart';

class RouteDefine {
  static dynamic getPageByName(String pageName) {
    switch (pageName) {
      case 'Home':
        return HomeScreen();
      case 'Task':
        return TaskScreen();
      case 'Report':
        return ReportScreen();
      case 'Other':
        return OtherScreen();
    }
  }
}
