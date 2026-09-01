import 'package:festou_app/domain/static_assets/public_static_asset_model.dart';
import 'package:festou_app/infrastructure/dal/dao/static_assets_backend_contract.dart';

class UnsupportedStaticAssetsBackend implements StaticAssetsBackendContract {
  const UnsupportedStaticAssetsBackend();

  @override
  Future<PublicStaticAssetModel?> fetchStaticAssetByRef(String assetRef) {
    throw UnsupportedError(
      'Static assets backend adapter is not available in this runtime.',
    );
  }
}
