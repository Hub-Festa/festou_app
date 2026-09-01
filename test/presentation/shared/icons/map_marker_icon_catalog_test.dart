import 'dart:convert';
import 'dart:io';

import 'package:festou_app/application/icons/festou_icons.dart';
import 'package:festou_app/presentation/shared/icons/map_marker_icon_catalog.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('fromStorage resolves canonical keys and legacy aliases', () {
    expect(MapMarkerIconToken.fromStorage('place'), MapMarkerIconToken.local);
    expect(
      MapMarkerIconToken.fromStorage('location_on'),
      MapMarkerIconToken.local,
    );
    expect(
      MapMarkerIconToken.fromStorage('location'),
      MapMarkerIconToken.location,
    );
    expect(
      MapMarkerIconToken.fromStorage('shopping_bag'),
      MapMarkerIconToken.shoppingBag,
    );
    expect(MapMarkerIconToken.fromStorage('food'), MapMarkerIconToken.food);
    expect(MapMarkerIconToken.fromStorage('beach'), MapMarkerIconToken.beach);
    expect(
      MapMarkerIconToken.fromStorage(' CULTURE '),
      MapMarkerIconToken.museum,
    );
    expect(
      MapMarkerIconToken.fromStorage('sorvete'),
      MapMarkerIconToken.iceCream,
    );
    expect(
      MapMarkerIconToken.fromStorage('quiosque'),
      MapMarkerIconToken.kiosk,
    );
    expect(
      MapMarkerIconToken.fromStorage('invitation_outline'),
      MapMarkerIconToken.invitationOutlined,
    );
    expect(MapMarkerIconToken.fromStorage('unknown-token'), isNull);
  });

  test('catalog exposes every new Festou font icon exactly once', () {
    expect(
      MapMarkerIconToken.values.length,
      MapMarkerIconToken.festouFontIconCount,
    );
    expect(MapMarkerIconToken.festouFontIconCount, FestouIcons.fontIconCount);
    expect(
      MapMarkerIconToken.values.map((entry) => entry.iconData).toSet().length,
      FestouIcons.fontIconCount,
    );
    expect(
      MapMarkerIconToken.values.every(
        (entry) => entry.iconData.fontFamily == FestouIcons.fontFamily,
      ),
      isTrue,
    );
  });

  test('all uploaded Festou font storage keys are present', () {
    expect(
      MapMarkerIconToken.values.map((entry) => entry.storageKey).toSet(),
      _uploadedFestouIconNames(),
    );
  });

  test('catalog includes the full expanded Festou drop', () {
    expect(MapMarkerIconToken.hotAirBalloon.storageKey, 'hot-air-balloon');
    expect(MapMarkerIconToken.shoppingCart.storageKey, 'shopping-cart');
    expect(MapMarkerIconToken.location.storageKey, 'location');
    expect(MapMarkerIconToken.delivery.storageKey, 'delivery');
  });

  test('storage keys are unique and non-empty', () {
    final keys = MapMarkerIconToken.values
        .map((entry) => entry.storageKey)
        .toList();
    expect(keys, everyElement(isNotEmpty));
    expect(keys.toSet().length, keys.length);
  });

  test('byGroup returns only entries from the requested group', () {
    final cultureItems = MapMarkerIconToken.byGroup(MapMarkerIconGroup.culture);
    expect(cultureItems, isNotEmpty);
    expect(
      cultureItems.every((entry) => entry.group == MapMarkerIconGroup.culture),
      isTrue,
    );
  });

  test('fire is grouped under partner after discount1', () {
    final partnerItems = MapMarkerIconToken.byGroup(MapMarkerIconGroup.partner);
    expect(partnerItems, contains(MapMarkerIconToken.discount1));
    expect(partnerItems, contains(MapMarkerIconToken.fire));
    expect(
      partnerItems.indexOf(MapMarkerIconToken.fire),
      partnerItems.indexOf(MapMarkerIconToken.discount1) + 1,
    );
  });
}

Set<String> _uploadedFestouIconNames() {
  final json =
      jsonDecode(
            File(
              'assets/fonts/festou_icons_configs/config.json',
            ).readAsStringSync(),
          )
          as Map<String, dynamic>;
  final glyphs = (json['glyphs'] as List<dynamic>).cast<Map<String, dynamic>>();
  return glyphs.map((glyph) => glyph['name'] as String).toSet();
}
