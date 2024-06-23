import 'package:learn_api_integration/screens/about/about_screen.dart';
import 'package:learn_api_integration/screens/contact/contact_screen.dart';
import 'package:learn_api_integration/screens/home/home_screen.dart';
import 'package:learn_api_integration/services/api_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeScreen, initial: true),
    MaterialRoute(page: AboutScreen),
    MaterialRoute(page: ContactScreen),
  ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: ApiService),
  ],
)
class App {}
