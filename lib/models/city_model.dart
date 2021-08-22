import 'package:travelers/shared/app_images.dart';

class CityModel {
  String name;
  String description;
  String image;
  double star;

  CityModel(this.name, this.description, this.image, this.star);

  List<CityModel> lugares = [
    CityModel("Luanda", "Baia de Luanda", AppImages.city_1, 4),
    CityModel("Benguela", "Catumbela de Angola", AppImages.city_2, 3),
    CityModel("Luanda", "Baia de Luanda noturna", AppImages.city_1, 4.5),
    CityModel("Canada", "City of Canada", AppImages.city_1, 4)
  ];
}
