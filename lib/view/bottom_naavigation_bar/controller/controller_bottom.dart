import 'package:get/get.dart';
import '../expert-screen.dart';
import '../home_screen.dart';
import '../ipl_screen.dart';
import '../matches_screen.dart';
import '../more_screen.dart';

class BNBController extends GetxController {
  RxInt select = 0.obs;

  final page = [
    HomeScreen(),
    MatchesScreen(),
    IPLScreen(),
    ExpertScreen(),
    MoreScreen(),
  ];
}
