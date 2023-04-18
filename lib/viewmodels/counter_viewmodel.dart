import 'package:flutter_application_new/app/app.locator.dart';
import 'package:flutter_application_new/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/counter_service.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  addValue() {
    counterService.addCounterValue();
    rebuildUi(); //** Calls the builder function with this updated viewmodel**
  }

  navigateToHome() {
    navigationService.navigateTo(Routes.homeView);
  }
}
