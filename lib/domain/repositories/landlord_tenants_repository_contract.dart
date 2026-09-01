export 'landlord_tenant_option.dart';
export 'value_objects/landlord_tenant_option_values.dart';

import 'package:festou_app/domain/repositories/landlord_tenant_option.dart';

abstract class LandlordTenantsRepositoryContract {
  Future<List<LandlordTenantOption>> fetchTenants();
}
