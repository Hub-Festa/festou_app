import 'package:festou_app/application/router/support/back_surface_kind.dart';

abstract interface class RouteBackPolicy {
  BackSurfaceKind get surfaceKind;

  void handleBack();
}
