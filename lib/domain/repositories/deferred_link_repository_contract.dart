import 'package:festou_app/domain/repositories/deferred_link_capture_result.dart';

export 'package:festou_app/domain/repositories/deferred_link_capture_result.dart';
export 'package:festou_app/domain/repositories/deferred_link_capture_status.dart';
export 'package:festou_app/domain/repositories/value_objects/deferred_link_repository_contract_values.dart';

abstract class DeferredLinkRepositoryContract {
  Future<DeferredLinkCaptureResult> captureFirstOpenInviteCode();
}
