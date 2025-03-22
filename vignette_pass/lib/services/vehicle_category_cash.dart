import 'package:vignette_pass/index.dart';

class VehicleCategoryCache {
  List<VehicleCategory> _categories = [];

  void set(List<VehicleCategory> categories) {
    _categories = categories;
  }

  List<VehicleCategory> get categories => _categories;
}