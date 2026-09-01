import 'package:festou_app/infrastructure/services/deferred_link_native_payload.dart';

abstract class DeferredLinkNativeSourceContract {
  Future<DeferredLinkNativePayload?> readDeferredPayload({
    required String platform,
  });
}
