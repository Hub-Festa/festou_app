import 'package:festou_app/application/contracts/promotion/promotion_lead_capture_field_payload.dart';
import 'package:festou_app/domain/app_data/value_object/environment_name_value.dart';

class PromotionLeadCaptureRequest {
  PromotionLeadCaptureRequest({
    required this.appNameValue,
    required List<PromotionLeadCaptureFieldPayload> submittedFields,
  }) : submittedFields = List<PromotionLeadCaptureFieldPayload>.unmodifiable(
          submittedFields,
        );

  final EnvironmentNameValue appNameValue;
  final List<PromotionLeadCaptureFieldPayload> submittedFields;

  String get appName => appNameValue.value.trim();
}
