import 'package:uas_jivo/model/model_cuaca.dart';
import 'package:uas_jivo/service/service_cuaca.dart';
import 'package:flutter/cupertino.dart';

class ProviderCuaca extends ChangeNotifier {
  TextEditingController cityNameText = TextEditingController();

  ServiceCuaca serviceCuaca = ServiceCuaca();
  ModelCuaca? modelCuaca;

  showWeatherData() async {
    modelCuaca = await serviceCuaca.getCurrentWeather(cityNameText.text);
    print(modelCuaca?.weather?.first.main);
    notifyListeners();
  }
}
