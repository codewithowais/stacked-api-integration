import 'package:learn_api_integration/app/app.locator.dart';
import 'package:learn_api_integration/services/api_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navigatioService = locator<NavigationService>();
  final apiService = locator<ApiService>();
  List users = [];

  getUsers() async {
    users = await apiService.getUsersData();
    print(users);
    rebuildUi();
  }
}
