import 'package:festou_app/domain/tenant/tenant.dart';

abstract class TenantBackendContract {
  Future<Tenant> getTenant();
}
