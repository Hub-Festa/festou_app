import 'package:auto_route/auto_route.dart';
import 'package:festou_app/application/schedule/event_selected_occurrence_projection.dart';
import 'package:festou_app/application/router/modular_app/modules/schedule_module.dart';
import 'package:festou_app/application/router/support/route_scoped_resolver_route.dart';
import 'package:festou_app/domain/schedule/event_model.dart';
import 'package:festou_app/domain/value_objects/thumb_uri_value.dart';
import 'package:festou_app/domain/upcoming_ocurrence/projections/upcoming_ocurrence_resume.dart';
import 'package:festou_app/presentation/shared/widgets/image_palette_theme.dart';
import 'package:festou_app/presentation/tenant_public/schedule/screens/immersive_event_detail/immersive_event_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_it_modular_with_auto_route/get_it_modular_with_auto_route.dart';

@RoutePage(name: 'ImmersiveEventDetailRoute')
class ImmersiveEventDetailRoutePage
    extends RouteScopedResolverRoute<EventModel, ScheduleModule> {
  const ImmersiveEventDetailRoutePage({
    super.key,
    @PathParam('slug') required this.eventSlug,
    @QueryParam('occurrence') this.occurrenceId,
    @QueryParam('tab') this.tab,
  });

  final String eventSlug;
  final String? occurrenceId;
  final String? tab;

  @override
  RouteResolverParams get resolverParams => {
        'slug': eventSlug,
        if (occurrenceId != null && occurrenceId!.trim().isNotEmpty)
          'occurrence': occurrenceId,
      };

  @override
  Widget buildScreen(BuildContext context, EventModel model) {
    final selectedModel =
        occurrenceId != null && occurrenceId!.trim().isNotEmpty
            ? EventSelectedOccurrenceProjection.project(model, occurrenceId!)
            : EventSelectedOccurrenceProjection.align(model);
    final fallbackImageValue = ThumbUriValue(
      defaultValue: Uri.parse('asset://event-placeholder'),
      isRequired: true,
    )..parse('asset://event-placeholder');
    final preferredImageUri = UpcomingOcurrenceResume.resolvePreferredImageUri(
      selectedModel,
      settingsDefaultImageValue: fallbackImageValue,
    );
    if (preferredImageUri.scheme == 'asset') {
      return ImmersiveEventDetailScreen(
        event: selectedModel,
      );
    }
    return ImagePaletteTheme(
      imageProvider: NetworkImage(preferredImageUri.toString()),
      builder: (context, scheme) => ImmersiveEventDetailScreen(
        event: selectedModel,
        colorScheme: scheme,
      ),
    );
  }
}
