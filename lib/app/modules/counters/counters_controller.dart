import 'package:counter_collection/app/shared/models/counter_model.dart';
import 'package:mobx/mobx.dart';

part 'counters_controller.g.dart';

class CountersController = _CountersBase with _$CountersController;

abstract class _CountersBase with Store {

}
