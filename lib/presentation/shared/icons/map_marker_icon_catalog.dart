import 'package:festou_app/application/icons/festou_icons.dart';
import 'package:flutter/material.dart';

enum MapMarkerIconGroup {
  generic(label: 'Geral'),
  gastronomy(label: 'Gastronomia'),
  culture(label: 'Cultura'),
  tourism(label: 'Turismo'),
  services(label: 'Serviços'),
  commerce(label: 'Comércio'),
  partner(label: 'Destaque');

  const MapMarkerIconGroup({required this.label});

  final String label;
}

enum MapMarkerIconToken {
  clapperboard(
    storageKey: 'clapperboard',
    label: 'Cinema',
    iconData: FestouIcons.clapperboard,
    group: MapMarkerIconGroup.culture,
  ),
  whatsapp(
    storageKey: 'whatsapp',
    label: 'WhatsApp',
    iconData: FestouIcons.whatsapp,
    group: MapMarkerIconGroup.services,
  ),
  running(
    storageKey: 'running',
    label: 'Corrida',
    iconData: FestouIcons.running,
    group: MapMarkerIconGroup.services,
  ),
  jubs(
    storageKey: 'jubs',
    label: 'Jubs',
    iconData: FestouIcons.jubs,
    group: MapMarkerIconGroup.partner,
  ),
  peopleGroup(
    storageKey: 'group',
    label: 'Grupo',
    iconData: FestouIcons.group,
    group: MapMarkerIconGroup.services,
  ),
  smallTalk(
    storageKey: 'small-talk',
    label: 'Conversa',
    iconData: FestouIcons.smallTalk,
    group: MapMarkerIconGroup.services,
  ),
  creativeTeam(
    storageKey: 'creative-team',
    label: 'Equipe criativa',
    iconData: FestouIcons.creativeTeam,
    group: MapMarkerIconGroup.services,
  ),
  presentation(
    storageKey: 'presentation',
    label: 'Apresentação',
    iconData: FestouIcons.presentation,
    group: MapMarkerIconGroup.services,
  ),
  workshop(
    storageKey: 'workshop',
    label: 'Workshop',
    iconData: FestouIcons.workshop,
    group: MapMarkerIconGroup.services,
  ),
  readingBook(
    storageKey: 'reading-book',
    label: 'Leitura',
    iconData: FestouIcons.readingBook,
    group: MapMarkerIconGroup.culture,
  ),
  guitarInstrument(
    storageKey: 'guitar-instrument',
    label: 'Guitarra',
    iconData: FestouIcons.guitarInstrument,
    group: MapMarkerIconGroup.culture,
  ),
  liveMusic(
    storageKey: 'live-music',
    label: 'Música ao vivo',
    iconData: FestouIcons.liveMusic,
    group: MapMarkerIconGroup.culture,
  ),
  microphone(
    storageKey: 'microphone',
    label: 'Microfone',
    iconData: FestouIcons.microphone,
    group: MapMarkerIconGroup.culture,
  ),
  usersLinked(
    storageKey: 'users-linked',
    label: 'Pessoas conectadas',
    iconData: FestouIcons.usersLinked,
    group: MapMarkerIconGroup.services,
  ),
  stage(
    storageKey: 'stage',
    label: 'Palco',
    iconData: FestouIcons.stage,
    group: MapMarkerIconGroup.culture,
  ),
  busStation(
    storageKey: 'bus-station',
    label: 'Rodoviária',
    iconData: FestouIcons.busStation,
    group: MapMarkerIconGroup.services,
  ),
  market(
    storageKey: 'market',
    label: 'Mercado',
    iconData: FestouIcons.market,
    group: MapMarkerIconGroup.commerce,
  ),
  kiosk(
    storageKey: 'kiosk',
    label: 'Quiosque',
    iconData: FestouIcons.kiosk,
    group: MapMarkerIconGroup.commerce,
  ),
  fireworks(
    storageKey: 'fireworks',
    label: 'Fogos',
    iconData: FestouIcons.fireworks,
    group: MapMarkerIconGroup.tourism,
  ),
  mountains(
    storageKey: 'mountains',
    label: 'Montanhas',
    iconData: FestouIcons.mountains,
    group: MapMarkerIconGroup.tourism,
  ),
  destination(
    storageKey: 'destination',
    label: 'Destino',
    iconData: FestouIcons.destination,
    group: MapMarkerIconGroup.generic,
  ),
  chef(
    storageKey: 'chef',
    label: 'Chef',
    iconData: FestouIcons.chef,
    group: MapMarkerIconGroup.gastronomy,
  ),
  chef1(
    storageKey: 'chef1',
    label: 'Chef alternativo',
    iconData: FestouIcons.chef1,
    group: MapMarkerIconGroup.gastronomy,
  ),
  united(
    storageKey: 'united',
    label: 'Comunidade',
    iconData: FestouIcons.united,
    group: MapMarkerIconGroup.services,
  ),
  theater(
    storageKey: 'theater',
    label: 'Teatro',
    iconData: FestouIcons.theater,
    group: MapMarkerIconGroup.culture,
  ),
  handshake(
    storageKey: 'handshake',
    label: 'Parceria',
    iconData: FestouIcons.handshake,
    group: MapMarkerIconGroup.services,
  ),
  openBook(
    storageKey: 'open-book',
    label: 'Livro aberto',
    iconData: FestouIcons.openBook,
    group: MapMarkerIconGroup.culture,
  ),
  luggage(
    storageKey: 'luggage',
    label: 'Bagagem',
    iconData: FestouIcons.luggage,
    group: MapMarkerIconGroup.tourism,
  ),
  airplane(
    storageKey: 'airplane',
    label: 'Avião',
    iconData: FestouIcons.airplane,
    group: MapMarkerIconGroup.tourism,
  ),
  coupon(
    storageKey: 'coupon',
    label: 'Cupom',
    iconData: FestouIcons.coupon,
    group: MapMarkerIconGroup.partner,
  ),
  promo(
    storageKey: 'promo',
    label: 'Promoção',
    iconData: FestouIcons.promo,
    group: MapMarkerIconGroup.partner,
  ),
  discount(
    storageKey: 'discount',
    label: 'Desconto',
    iconData: FestouIcons.discount,
    group: MapMarkerIconGroup.partner,
  ),
  lunch(
    storageKey: 'lunch',
    label: 'Almoço',
    iconData: FestouIcons.lunch,
    group: MapMarkerIconGroup.gastronomy,
  ),
  iceCream(
    storageKey: 'ice-cream',
    label: 'Sorvete',
    iconData: FestouIcons.iceCream,
    group: MapMarkerIconGroup.gastronomy,
  ),
  restaurant(
    storageKey: 'restaurant',
    label: 'Restaurante',
    iconData: FestouIcons.restaurant,
    group: MapMarkerIconGroup.gastronomy,
  ),
  museum(
    storageKey: 'museum',
    label: 'Museu',
    iconData: FestouIcons.museum,
    group: MapMarkerIconGroup.culture,
  ),
  bank(
    storageKey: 'bank',
    label: 'Banco',
    iconData: FestouIcons.bank,
    group: MapMarkerIconGroup.commerce,
  ),
  church(
    storageKey: 'church',
    label: 'Igreja',
    iconData: FestouIcons.church,
    group: MapMarkerIconGroup.culture,
  ),
  musicalNote(
    storageKey: 'musical-note',
    label: 'Nota musical',
    iconData: FestouIcons.musicalNote,
    group: MapMarkerIconGroup.culture,
  ),
  vinyl(
    storageKey: 'vinyl',
    label: 'Vinil',
    iconData: FestouIcons.vinyl,
    group: MapMarkerIconGroup.culture,
  ),
  beachUmbrella(
    storageKey: 'beach-umbrella',
    label: 'Praia',
    iconData: FestouIcons.beachUmbrella,
    group: MapMarkerIconGroup.tourism,
  ),
  hotel(
    storageKey: 'hotel',
    label: 'Hospedagem',
    iconData: FestouIcons.hotel,
    group: MapMarkerIconGroup.tourism,
  ),
  nature(
    storageKey: 'nature',
    label: 'Natureza',
    iconData: FestouIcons.nature,
    group: MapMarkerIconGroup.tourism,
  ),
  wave(
    storageKey: 'wave',
    label: 'Onda',
    iconData: FestouIcons.wave,
    group: MapMarkerIconGroup.tourism,
  ),
  sunset(
    storageKey: 'sunset',
    label: 'Pôr do sol',
    iconData: FestouIcons.sunset,
    group: MapMarkerIconGroup.tourism,
  ),
  wave1(
    storageKey: 'wave1',
    label: 'Onda alternativa',
    iconData: FestouIcons.wave1,
    group: MapMarkerIconGroup.tourism,
  ),
  paddling(
    storageKey: 'paddling',
    label: 'Remo',
    iconData: FestouIcons.paddling,
    group: MapMarkerIconGroup.tourism,
  ),
  swimmer(
    storageKey: 'swimmer',
    label: 'Natação',
    iconData: FestouIcons.swimmer,
    group: MapMarkerIconGroup.tourism,
  ),
  drug(
    storageKey: 'drug',
    label: 'Medicamento',
    iconData: FestouIcons.drug,
    group: MapMarkerIconGroup.services,
  ),
  pharmacy(
    storageKey: 'pharmacy',
    label: 'Farmácia',
    iconData: FestouIcons.pharmacy,
    group: MapMarkerIconGroup.services,
  ),
  firstAidKit(
    storageKey: 'first-aid-kit',
    label: 'Primeiros socorros',
    iconData: FestouIcons.firstAidKit,
    group: MapMarkerIconGroup.services,
  ),
  hospital(
    storageKey: 'hospital',
    label: 'Hospital',
    iconData: FestouIcons.hospital,
    group: MapMarkerIconGroup.services,
  ),
  groceryStore(
    storageKey: 'grocery-store',
    label: 'Mercearia',
    iconData: FestouIcons.groceryStore,
    group: MapMarkerIconGroup.commerce,
  ),
  shoppingBag(
    storageKey: 'shopping-bag',
    label: 'Compras',
    iconData: FestouIcons.shoppingBag,
    group: MapMarkerIconGroup.commerce,
  ),
  event(
    storageKey: 'event',
    label: 'Evento',
    iconData: FestouIcons.event,
    group: MapMarkerIconGroup.generic,
  ),
  local(
    storageKey: 'local',
    label: 'Local',
    iconData: FestouIcons.local,
    group: MapMarkerIconGroup.generic,
  ),
  ticket(
    storageKey: 'ticket',
    label: 'Ingresso',
    iconData: FestouIcons.ticket,
    group: MapMarkerIconGroup.generic,
  ),
  ticket1(
    storageKey: 'ticket1',
    label: 'Ingresso alternativo',
    iconData: FestouIcons.ticket1,
    group: MapMarkerIconGroup.generic,
  ),
  invitation(
    storageKey: 'invitation',
    label: 'Convite',
    iconData: FestouIcons.invitation,
    group: MapMarkerIconGroup.generic,
  ),
  invitationOutlined(
    storageKey: 'invitation_outlined',
    label: 'Convite alternativo',
    iconData: FestouIcons.invitationOutlined,
    group: MapMarkerIconGroup.generic,
  ),
  appointment(
    storageKey: 'appointment',
    label: 'Confirmado',
    iconData: FestouIcons.appointment,
    group: MapMarkerIconGroup.generic,
  ),
  hotAirBalloon(
    storageKey: 'hot-air-balloon',
    label: 'Balão',
    iconData: FestouIcons.hotAirBalloon,
    group: MapMarkerIconGroup.tourism,
  ),
  airBalloon(
    storageKey: 'air-balloon',
    label: 'Balão alternativo',
    iconData: FestouIcons.airBalloon,
    group: MapMarkerIconGroup.tourism,
  ),
  mountain1(
    storageKey: 'mountain1',
    label: 'Montanha 1',
    iconData: FestouIcons.mountain1,
    group: MapMarkerIconGroup.tourism,
  ),
  mountain2(
    storageKey: 'mountain2',
    label: 'Montanha 2',
    iconData: FestouIcons.mountain2,
    group: MapMarkerIconGroup.tourism,
  ),
  mountain3(
    storageKey: 'mountain3',
    label: 'Montanha 3',
    iconData: FestouIcons.mountain3,
    group: MapMarkerIconGroup.tourism,
  ),
  mountains1(
    storageKey: 'mountains1',
    label: 'Montanhas 1',
    iconData: FestouIcons.mountains1,
    group: MapMarkerIconGroup.tourism,
  ),
  mountains2(
    storageKey: 'mountains2',
    label: 'Montanhas 2',
    iconData: FestouIcons.mountains2,
    group: MapMarkerIconGroup.tourism,
  ),
  beach(
    storageKey: 'beach',
    label: 'Orla',
    iconData: FestouIcons.beach,
    group: MapMarkerIconGroup.tourism,
  ),
  badminton(
    storageKey: 'badminton',
    label: 'Badminton',
    iconData: FestouIcons.badminton,
    group: MapMarkerIconGroup.tourism,
  ),
  surfing(
    storageKey: 'surfing',
    label: 'Surfe',
    iconData: FestouIcons.surfing,
    group: MapMarkerIconGroup.tourism,
  ),
  kiosk1(
    storageKey: 'kiosk1',
    label: 'Quiosque alternativo',
    iconData: FestouIcons.kiosk1,
    group: MapMarkerIconGroup.commerce,
  ),
  loungeChair(
    storageKey: 'lounge-chair',
    label: 'Espreguiçadeira',
    iconData: FestouIcons.loungeChair,
    group: MapMarkerIconGroup.tourism,
  ),
  food(
    storageKey: 'food',
    label: 'Comida',
    iconData: FestouIcons.food,
    group: MapMarkerIconGroup.gastronomy,
  ),
  shrimp(
    storageKey: 'shrimp',
    label: 'Camarão',
    iconData: FestouIcons.shrimp,
    group: MapMarkerIconGroup.gastronomy,
  ),
  microphone1(
    storageKey: 'microphone1',
    label: 'Microfone alternativo',
    iconData: FestouIcons.microphone1,
    group: MapMarkerIconGroup.culture,
  ),
  event1(
    storageKey: 'event1',
    label: 'Evento alternativo',
    iconData: FestouIcons.event1,
    group: MapMarkerIconGroup.generic,
  ),
  ribbonCutting(
    storageKey: 'ribbon-cutting',
    label: 'Inauguração',
    iconData: FestouIcons.ribbonCutting,
    group: MapMarkerIconGroup.partner,
  ),
  promo1(
    storageKey: 'promo1',
    label: 'Promoção alternativa',
    iconData: FestouIcons.promo1,
    group: MapMarkerIconGroup.partner,
  ),
  discount1(
    storageKey: 'discount1',
    label: 'Desconto alternativo',
    iconData: FestouIcons.discount1,
    group: MapMarkerIconGroup.partner,
  ),
  fire(
    storageKey: 'fire',
    label: 'Fogo',
    iconData: FestouIcons.fire,
    group: MapMarkerIconGroup.partner,
  ),
  pray(
    storageKey: 'pray',
    label: 'Oração',
    iconData: FestouIcons.pray,
    group: MapMarkerIconGroup.culture,
  ),
  islam(
    storageKey: 'islam',
    label: 'Islã',
    iconData: FestouIcons.islam,
    group: MapMarkerIconGroup.culture,
  ),
  cross(
    storageKey: 'cross',
    label: 'Cruz',
    iconData: FestouIcons.cross,
    group: MapMarkerIconGroup.culture,
  ),
  hinduist(
    storageKey: 'hinduist',
    label: 'Hinduísmo',
    iconData: FestouIcons.hinduist,
    group: MapMarkerIconGroup.culture,
  ),
  therapy(
    storageKey: 'therapy',
    label: 'Terapia',
    iconData: FestouIcons.therapy,
    group: MapMarkerIconGroup.services,
  ),
  massageTherapist(
    storageKey: 'massage-therapist',
    label: 'Massagem',
    iconData: FestouIcons.massageTherapist,
    group: MapMarkerIconGroup.services,
  ),
  exercise(
    storageKey: 'exercise',
    label: 'Exercício',
    iconData: FestouIcons.exercise,
    group: MapMarkerIconGroup.services,
  ),
  podcast(
    storageKey: 'podcast',
    label: 'Podcast',
    iconData: FestouIcons.podcast,
    group: MapMarkerIconGroup.culture,
  ),
  adventureGame(
    storageKey: 'adventure-game',
    label: 'Aventura',
    iconData: FestouIcons.adventureGame,
    group: MapMarkerIconGroup.tourism,
  ),
  signPost(
    storageKey: 'sign-post',
    label: 'Sinalização',
    iconData: FestouIcons.signPost,
    group: MapMarkerIconGroup.tourism,
  ),
  motorbike(
    storageKey: 'motorbike',
    label: 'Moto',
    iconData: FestouIcons.motorbike,
    group: MapMarkerIconGroup.services,
  ),
  takeAway(
    storageKey: 'take-away',
    label: 'Para viagem',
    iconData: FestouIcons.takeAway,
    group: MapMarkerIconGroup.gastronomy,
  ),
  martini(
    storageKey: 'martini',
    label: 'Drink',
    iconData: FestouIcons.martini,
    group: MapMarkerIconGroup.gastronomy,
  ),
  hotCoffee(
    storageKey: 'hot-coffee',
    label: 'Café',
    iconData: FestouIcons.hotCoffee,
    group: MapMarkerIconGroup.gastronomy,
  ),
  marketing(
    storageKey: 'marketing',
    label: 'Marketing',
    iconData: FestouIcons.marketing,
    group: MapMarkerIconGroup.services,
  ),
  marketing1(
    storageKey: 'marketing1',
    label: 'Marketing alternativo',
    iconData: FestouIcons.marketing1,
    group: MapMarkerIconGroup.services,
  ),
  whale(
    storageKey: 'whale',
    label: 'Baleia',
    iconData: FestouIcons.whale,
    group: MapMarkerIconGroup.tourism,
  ),
  whale1(
    storageKey: 'whale1',
    label: 'Baleia alternativa',
    iconData: FestouIcons.whale1,
    group: MapMarkerIconGroup.tourism,
  ),
  dolphin(
    storageKey: 'dolphin',
    label: 'Golfinho',
    iconData: FestouIcons.dolphin,
    group: MapMarkerIconGroup.tourism,
  ),
  bus(
    storageKey: 'bus',
    label: 'Ônibus',
    iconData: FestouIcons.bus,
    group: MapMarkerIconGroup.services,
  ),
  bin(
    storageKey: 'bin',
    label: 'Lixeira',
    iconData: FestouIcons.bin,
    group: MapMarkerIconGroup.services,
  ),
  drug1(
    storageKey: 'drug1',
    label: 'Medicamento alternativo',
    iconData: FestouIcons.drug1,
    group: MapMarkerIconGroup.services,
  ),
  medicalCross(
    storageKey: 'medical-cross',
    label: 'Cruz médica',
    iconData: FestouIcons.medicalCross,
    group: MapMarkerIconGroup.services,
  ),
  gasStation(
    storageKey: 'gas-station',
    label: 'Posto',
    iconData: FestouIcons.gasStation,
    group: MapMarkerIconGroup.services,
  ),
  shoppingCart(
    storageKey: 'shopping-cart',
    label: 'Carrinho',
    iconData: FestouIcons.shoppingCart,
    group: MapMarkerIconGroup.commerce,
  ),
  coffeeCup(
    storageKey: 'coffee-cup',
    label: 'Xícara',
    iconData: FestouIcons.coffeeCup,
    group: MapMarkerIconGroup.gastronomy,
  ),
  dj(
    storageKey: 'dj',
    label: 'DJ',
    iconData: FestouIcons.dj,
    group: MapMarkerIconGroup.culture,
  ),
  destination1(
    storageKey: 'destination1',
    label: 'Destino alternativo',
    iconData: FestouIcons.destination1,
    group: MapMarkerIconGroup.generic,
  ),
  airplane1(
    storageKey: 'airplane1',
    label: 'Avião alternativo',
    iconData: FestouIcons.airplane1,
    group: MapMarkerIconGroup.tourism,
  ),
  maps(
    storageKey: 'maps',
    label: 'Mapas',
    iconData: FestouIcons.maps,
    group: MapMarkerIconGroup.generic,
  ),
  location(
    storageKey: 'location',
    label: 'Localização',
    iconData: FestouIcons.location,
    group: MapMarkerIconGroup.generic,
  ),
  destination2(
    storageKey: 'destination2',
    label: 'Destino extra',
    iconData: FestouIcons.destination2,
    group: MapMarkerIconGroup.generic,
  ),
  hiker(
    storageKey: 'hiker',
    label: 'Trilheiro',
    iconData: FestouIcons.hiker,
    group: MapMarkerIconGroup.tourism,
  ),
  hiking(
    storageKey: 'hiking',
    label: 'Trilha',
    iconData: FestouIcons.hiking,
    group: MapMarkerIconGroup.tourism,
  ),
  map(
    storageKey: 'map',
    label: 'Mapa',
    iconData: FestouIcons.map,
    group: MapMarkerIconGroup.generic,
  ),
  delivery(
    storageKey: 'delivery',
    label: 'Delivery',
    iconData: FestouIcons.delivery,
    group: MapMarkerIconGroup.services,
  ),
  travel(
    storageKey: 'travel',
    label: 'Viagem',
    iconData: FestouIcons.travel,
    group: MapMarkerIconGroup.tourism,
  ),
  mountain(
    storageKey: 'mountain',
    label: 'Montanha',
    iconData: FestouIcons.mountain,
    group: MapMarkerIconGroup.tourism,
  );

  const MapMarkerIconToken({
    required this.storageKey,
    required this.label,
    required this.iconData,
    required this.group,
  });

  static const int festouFontIconCount = FestouIcons.fontIconCount;

  final String storageKey;
  final String label;
  final IconData iconData;
  final MapMarkerIconGroup group;

  static MapMarkerIconToken? fromStorage(String? raw) {
    final normalized = _normalize(raw);
    if (normalized.isEmpty) {
      return null;
    }
    return _tokenByAlias[normalized];
  }

  static List<MapMarkerIconToken> byGroup(MapMarkerIconGroup group) {
    return values
        .where((entry) => entry.group == group)
        .toList(growable: false);
  }

  static final Map<String, MapMarkerIconToken> _tokenByAlias =
      <String, MapMarkerIconToken>{
        for (final token in MapMarkerIconToken.values)
          _normalize(token.storageKey): token,
        'place': MapMarkerIconToken.local,
        'locationon': MapMarkerIconToken.local,
        'mappin': MapMarkerIconToken.local,
        'pin': MapMarkerIconToken.local,
        'default': MapMarkerIconToken.local,
        'invitationoutline': MapMarkerIconToken.invitationOutlined,
        'activity': MapMarkerIconToken.event,
        'lodging': MapMarkerIconToken.hotel,
        'culture': MapMarkerIconToken.museum,
        'health': MapMarkerIconToken.hospital,
        'historic': MapMarkerIconToken.museum,
        'monument': MapMarkerIconToken.museum,
        'park': MapMarkerIconToken.nature,
        'attraction': MapMarkerIconToken.destination,
        'store': MapMarkerIconToken.market,
        'storefront': MapMarkerIconToken.market,
        'quiosque': MapMarkerIconToken.kiosk,
        'bag': MapMarkerIconToken.shoppingBag,
        'shopping': MapMarkerIconToken.shoppingBag,
        'icecream': MapMarkerIconToken.iceCream,
        'sorvete': MapMarkerIconToken.iceCream,
        'music': MapMarkerIconToken.musicalNote,
        'musicnote': MapMarkerIconToken.musicalNote,
        'audiotrack': MapMarkerIconToken.musicalNote,
        'star': MapMarkerIconToken.promo,
      };

  static String _normalize(String? raw) {
    return (raw ?? '').trim().toLowerCase().replaceAll(
      RegExp(r'[^a-z0-9]+'),
      '',
    );
  }
}
