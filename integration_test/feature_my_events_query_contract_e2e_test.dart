import 'package:festou_app/domain/repositories/app_data_repository_contract.dart';
import 'package:festou_app/domain/repositories/auth_repository_contract.dart';
import 'package:festou_app/domain/repositories/value_objects/auth_repository_contract_values.dart';
import 'package:festou_app/domain/upcoming_ocurrence/projections/upcoming_ocurrence_resume.dart';
import 'package:festou_app/infrastructure/dal/dao/backend_context.dart';
import 'package:festou_app/infrastructure/dal/dao/backend_contract.dart';
import 'package:festou_app/infrastructure/platform/app_data_local_info_source/app_data_local_info_source.dart';
import 'package:festou_app/infrastructure/dal/dao/laravel_backend/user_events_backend/laravel_user_events_backend.dart';
import 'package:festou_app/infrastructure/dal/dao/production_backend/production_backend.dart';
import 'package:festou_app/infrastructure/repositories/app_data_repository.dart';
import 'package:festou_app/infrastructure/repositories/auth_repository.dart';
import 'package:festou_app/infrastructure/repositories/schedule_repository.dart';
import 'package:festou_app/infrastructure/repositories/user_events_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:integration_test/integration_test.dart';

import 'support/integration_test_bootstrap.dart';
import 'support/tenant_scope_guard.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  IntegrationTestBootstrap.ensureNonProductionLandlordDomain();

  const userTokenKey = 'user_token';
  const userIdKey = 'user_id';
  const deviceIdKey = 'device_id';

  const seededEmail =
      String.fromEnvironment('MY_EVENTS_E2E_EMAIL', defaultValue: '');
  const seededPassword =
      String.fromEnvironment('MY_EVENTS_E2E_PASSWORD', defaultValue: '');
  const expectNonEmpty = bool.fromEnvironment(
    'MY_EVENTS_E2E_EXPECT_NON_EMPTY',
    defaultValue: false,
  );

  Future<void> clearAuthStorage() async {
    await AuthRepository.storage.delete(key: userTokenKey);
    await AuthRepository.storage.delete(key: userIdKey);
    await AuthRepository.storage.delete(key: deviceIdKey);
  }

  Future<void> resetGetIt() async {
    final getIt = GetIt.I;
    if (getIt.isRegistered<AuthRepositoryContract>()) {
      getIt.unregister<AuthRepositoryContract>();
    }
    if (getIt.isRegistered<AppDataRepositoryContract>()) {
      getIt.unregister<AppDataRepositoryContract>();
    }
    if (getIt.isRegistered<BackendContract>()) {
      getIt.unregister<BackendContract>();
    }
  }

  testWidgets('My-events query contract works against real backend', (_) async {
    await clearAuthStorage();
    await resetGetIt();

    final backend = ProductionBackend();
    GetIt.I.registerSingleton<BackendContract>(backend);

    final appDataRepository = AppDataRepository(
      backendContract: backend,
      localInfoSource: AppDataLocalInfoSource(),
    );
    await appDataRepository.init();
    TenantScopeGuard.assertTenantScope(
      appDataRepository.appData,
      testName: 'my-events-query-contract',
    );
    GetIt.I.registerSingleton<AppDataRepositoryContract>(appDataRepository);
    backend.setContext(
      BackendContext.fromAppData(appDataRepository.appData),
    );

    final authRepository = AuthRepository();
    await authRepository.init();
    GetIt.I.registerSingleton<AuthRepositoryContract>(authRepository);

    if (seededEmail.trim().isNotEmpty && seededPassword.trim().isNotEmpty) {
      await authRepository.loginWithEmailPassword(
        authRepoString(seededEmail.trim()),
        authRepoString(seededPassword.trim()),
      );
    } else {
      final now = DateTime.now().millisecondsSinceEpoch;
      final email = 'my-events-e2e-$now@festou.test';
      const password = 'SecurePass!123';
      await authRepository.signUpWithEmailPassword(
        authRepoString('My Events E2E Tester'),
        authRepoString(email),
        authRepoString(password),
      );
    }

    final userEventsBackend = LaravelUserEventsBackend();
    final confirmedPayload =
        await userEventsBackend.fetchConfirmedOccurrenceIds();
    final confirmedOccurrenceIds = confirmedPayload['confirmed_occurrence_ids'];
    expect(confirmedOccurrenceIds, isA<List<dynamic>>());

    final scheduleRepository = ScheduleRepository(backendContract: backend);
    final userEventsRepository = UserEventsRepository(
      scheduleRepository: scheduleRepository,
      backend: userEventsBackend,
    );

    final myEvents = await userEventsRepository.fetchMyEvents();
    expect(myEvents, isA<List<UpcomingOcurrenceResume>>());

    for (final event in myEvents) {
      expect(event.id.trim(), isNotEmpty);
      expect(event.title.trim(), isNotEmpty);
      expect(event.slug.trim(), isNotEmpty);
      expect(event.startDateTime, isA<DateTime>());
    }

    if (expectNonEmpty) {
      expect(
        myEvents,
        isNotEmpty,
        reason:
            'Set MY_EVENTS_E2E_EMAIL/MY_EVENTS_E2E_PASSWORD for seeded user.',
      );
    }
  });
}
