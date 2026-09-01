import 'dart:async';

import 'package:festou_app/application/map_surface/belluga_map_interaction.dart';
import 'package:festou_app/domain/map/value_objects/city_coordinate.dart';
import 'package:flutter/widgets.dart';

abstract class BellugaMapHandleContract {
  Stream<BellugaMapInteractionEvent> get interactionStream;

  bool get isReady;

  double? get currentZoom;

  CityCoordinate? get currentCenter;

  bool moveTo(
    CityCoordinate coordinate, {
    required double zoom,
  });

  bool moveToAnchored(
    CityCoordinate coordinate, {
    required double zoom,
    required double verticalViewportAnchor,
  });

  Offset? projectToViewport(CityCoordinate coordinate);

  bool fitToCoordinates(
    List<CityCoordinate> coordinates, {
    double padding = 32,
    double? maxZoom,
  });

  void markReady();

  void emitInteraction(BellugaMapInteractionEvent event);

  void dispose();
}
