import 'package:fluttertoast/fluttertoast.dart';

class DoubleTapExit {
  DateTime current;

  Future<bool> doubleTapExit() {
    DateTime now = DateTime.now();
    if (current == null || now.difference(current) > Duration(seconds: 2)) {
      current = now;
      Fluttertoast.showToast(
          msg: 'Press back again to exit', toastLength: Toast.LENGTH_SHORT);
      return Future.value(false);
    } else {
      Fluttertoast.cancel();
      return Future.value(true);
    }
  }
}
