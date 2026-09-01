import 'package:festou_app/infrastructure/dal/dto/deferred_link/deferred_link_resolution_dto.dart';

abstract class DeferredLinkBackendContract {
  Future<DeferredLinkResolutionDto> resolveDeferredLink({
    required String platform,
    String? resolverPayload,
    String? storeChannel,
  });
}
