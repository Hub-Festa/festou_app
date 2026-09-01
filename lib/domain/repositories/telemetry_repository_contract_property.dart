import 'package:festou_app/domain/repositories/telemetry_repository_contract_property_value.dart';
import 'package:festou_app/domain/repositories/value_objects/telemetry_repository_contract_text_value.dart';

class TelemetryRepositoryContractProperty {
  const TelemetryRepositoryContractProperty({
    required this.keyValue,
    required this.value,
  });

  final TelemetryRepositoryContractTextValue keyValue;
  final TelemetryRepositoryContractPropertyValue value;
}
