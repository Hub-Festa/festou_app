import 'package:festou_app/infrastructure/dal/dao/app_data_backend_contract.dart';
import 'package:festou_app/infrastructure/dal/dto/app_data_dto.dart';

class FakeLandlordAppDataBackend implements AppDataBackendContract {
  const FakeLandlordAppDataBackend({
    this.mainDomain = 'http://festou.local.test',
  });

  final String mainDomain;

  @override
  Future<AppDataDTO> fetch() async {
    return AppDataDTO(
      tenantId: null,
      name: 'Belluga',
      type: 'landlord',
      mainDomain: mainDomain,
      domains: [mainDomain],
      appDomains: const [
        'site.festou.app',
        'site.festou.app',
      ],
      profileTypes: const [],
      themeDataSettings: const {
        'brightness_default': 'light',
        'primary_seed_color': '#4FA0E3',
        'secondary_seed_color': '#E80D5D',
      },
      mainColor: '#4FA0E3',
      telemetry: const {'trackers': []},
      telemetryContext: const {},
      firebase: null,
      push: null,
    );
  }
}
