import 'package:flutter_application_new/services/counter_service.dart';
import 'package:stacked/stacked.dart';

import '../app/app.locator.dart';

class HomeViewModel extends BaseViewModel {
  final counterService = locator<CounterService>();
}
