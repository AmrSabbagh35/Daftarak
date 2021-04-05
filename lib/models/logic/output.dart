import 'package:test_login/enum/type.dart';
import 'package:test_login/models/logic/operations.dart';

class Output extends Operations {
  Output(String id, String title, String description, int value, DateTime date,
      IType type, bool isToday)
      : super(title, description, value, date, type, isToday);
}
