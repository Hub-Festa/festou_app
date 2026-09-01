import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:festou_app/application/contracts/promotion/promotion_lead_capture_service_contract.dart';
import 'package:festou_app/application/router/app_router.gr.dart';
import 'package:festou_app/application/router/guards/tenant_route_guard.dart';
import 'package:festou_app/application/router/support/canonical_route_family.dart';
import 'package:festou_app/application/router/support/canonical_route_meta.dart';
import 'package:festou_app/application/router/support/route_redirect_path.dart';
import 'package:festou_app/domain/repositories/app_data_repository_contract.dart';
import 'package:festou_app/infrastructure/services/promotion/tenant_public_api_promotion_lead_capture_service.dart';
import 'package:festou_app/presentation/shared/promotion/screens/app_promotion_screen/controllers/app_promotion_screen_controller.dart';
import 'package:festou_app/presentation/shared/promotion/screens/app_promotion_screen/controllers/app_promotion_tester_waitlist_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_modular_with_auto_route/get_it_modular_with_auto_route.dart';

class AppPromotionModule extends ModuleContract {
  @override
  FutureOr<void> registerDependencies() {
    registerLazySingleton<PromotionLeadCaptureServiceContract>(
      () => TenantPublicApiPromotionLeadCaptureService(),
    );
    registerLazySingleton<AppPromotionScreenController>(
      () => AppPromotionScreenController(
        appDataRepository: GetIt.I.get<AppDataRepositoryContract>(),
      ),
    );
    registerLazySingleton<AppPromotionTesterWaitlistController>(
      () => AppPromotionTesterWaitlistController(
        appDataRepository: GetIt.I.get<AppDataRepositoryContract>(),
        leadCaptureService: GetIt.I.get<PromotionLeadCaptureServiceContract>(),
      ),
    );
  }

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: webPromotionRoutePath,
          page: AppPromotionRoute.page,
          guards: [TenantRouteGuard()],
          meta: canonicalRouteMeta(family: CanonicalRouteFamily.appPromotion),
        ),
      ];
}
