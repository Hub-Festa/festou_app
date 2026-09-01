import 'package:festou_app/domain/partners/projections/partner_profile_module_data.dart';
import 'package:festou_app/domain/upcoming_ocurrence/projections/upcoming_ocurrence_resume.dart';

class AccountProfileAgendaPresentation {
  AccountProfileAgendaPresentation({
    required List<PartnerEventView> liveOccurrences,
    required List<UpcomingOcurrenceResume> upcomingOccurrences,
  }) : liveOccurrences = List<PartnerEventView>.unmodifiable(liveOccurrences),
       upcomingOccurrences = List<UpcomingOcurrenceResume>.unmodifiable(
         upcomingOccurrences,
       );

  final List<PartnerEventView> liveOccurrences;
  final List<UpcomingOcurrenceResume> upcomingOccurrences;

  bool get isEmpty => liveOccurrences.isEmpty && upcomingOccurrences.isEmpty;
}
