import 'package:intl/intl.dart';

class TcFormat {
  static TcFormat shared = TcFormat();
  final DateFormat _formatterWithYear = DateFormat('yyyy年MM月dd日 HH時mm分');
  final DateFormat _formatterWithoutYear = DateFormat('MM月dd日 HH時mm分');

  // フォーマットを設定（年の部分は今年なら省略）
  String formatTimestamp(DateTime timestamp) {
    DateTime now = DateTime.now();
    if (timestamp.year == now.year) {
      // 今年の場合、年を省略
      return _formatterWithoutYear.format(timestamp);
    } else {
      // 今年でない場合、年を表示
      return _formatterWithYear.format(timestamp);
    }
  }
}
