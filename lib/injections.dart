import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt getIt = GetIt.instance;

Future<void> setupInjections()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => preferences);

}
 