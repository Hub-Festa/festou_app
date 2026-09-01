import 'package:festou_app/presentation/shared/widgets/directions_app_chooser/directions_app_choice.dart';
import 'package:festou_app/presentation/shared/widgets/directions_app_chooser/directions_launch_target.dart';
import 'package:flutter/material.dart';

enum DirectionsDirectProvider {
  waze,
  uber,
}

abstract class DirectionsAppChooserContract {
  Future<List<DirectionsAppChoice>> loadOptions({
    required DirectionsLaunchTarget target,
  });

  Future<bool> launchDirect({
    required DirectionsDirectProvider provider,
    required DirectionsLaunchTarget target,
  });

  Future<void> present(
    BuildContext context, {
    required DirectionsLaunchTarget target,
    ValueChanged<String>? onStatusMessage,
  });
}
