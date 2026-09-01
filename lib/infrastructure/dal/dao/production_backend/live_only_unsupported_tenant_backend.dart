import 'package:festou_app/domain/tenant/tenant.dart';
import 'package:festou_app/infrastructure/dal/dao/tenant_backend_contract.dart';

class LiveOnlyUnsupportedTenantBackend implements TenantBackendContract {
  const LiveOnlyUnsupportedTenantBackend();

  @override
  Future<Tenant> getTenant() {
    throw UnsupportedError(
      'Tenant backend adapter is not available in runtime. '
      'Tenant resolution must come from app bootstrap data.',
    );
  }
}
