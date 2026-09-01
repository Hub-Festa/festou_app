import 'package:festou_app/domain/app_data/app_data.dart';

abstract class LandlordPublicInstancesRepositoryContract {
  Future<List<AppData>> fetchFeaturedInstances();
}
