import 'package:flutter/material.dart';
import 'package:test_app/presentation/home_screen_container_screen/home_screen_container_screen.dart';
import 'package:test_app/presentation/warning_signs_one_screen/warning_signs_one_screen.dart';
import 'package:test_app/presentation/self_care_screen/self_care_screen.dart';
import 'package:test_app/presentation/safety_plan_screen/safety_plan_screen.dart';
import 'package:test_app/presentation/self_care_my_strategies_choose_screen/self_care_my_strategies_choose_screen.dart';
import 'package:test_app/presentation/self_care_resources_screen/self_care_resources_screen.dart';
import 'package:test_app/presentation/self_care_gratitude_journal_screen/self_care_gratitude_journal_screen.dart';
import 'package:test_app/presentation/mood_tracker_screen/mood_tracker_screen.dart';
import 'package:test_app/presentation/contact_a_professional_screen/contact_a_professional_screen.dart';
import 'package:test_app/presentation/document_abuse_two_screen/document_abuse_two_screen.dart';
import 'package:test_app/presentation/document_abuse_add_a_new_record_screen/document_abuse_add_a_new_record_screen.dart';
import 'package:test_app/presentation/document_abuse_add_supporting_evidence_tab_container_screen/document_abuse_add_supporting_evidence_one_page.dart';
import 'package:test_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String warningSignsOneScreen = '/warning_signs_one_screen';

  static const String selfCareScreen = '/self_care_screen';

  static const String safetyPlanScreen = '/safety_plan_screen';

  static const String selfCareMyStrategiesChooseScreen =
      '/self_care_my_strategies_choose_screen';

  static const String selfCareResourcesScreen = '/self_care_resources_screen';

  static const String selfCareGratitudeJournalScreen =
      '/self_care_gratitude_journal_screen';

  static const String moodTrackerScreen = '/mood_tracker_screen';

  static const String contactAProfessionalScreen =
      '/contact_a_professional_screen';

  static const String documentAbuseTwoScreen = '/document_abuse_two_screen';

  static const String documentAbuseAddANewRecordScreen =
      '/document_abuse_add_a_new_record_screen';

  static const String documentAbuseAddSupportingEvidencePage =
      '/document_abuse_add_supporting_evidence_page';

  static const String documentAbuseAddSupportingEvidenceTabContainerScreen =
      '/document_abuse_add_supporting_evidence_tab_container_screen';

  static const String documentAbuseAddSupportingEvidenceOnePage =
      '/document_abuse_add_supporting_evidence_one_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    homeScreenContainerScreen: (context) => HomeScreenContainerScreen(),
    warningSignsOneScreen: (context) => WarningSignsOneScreen(),
    selfCareScreen: (context) => SelfCareScreen(),
    safetyPlanScreen: (context) => SafetyPlanScreen(),
    selfCareMyStrategiesChooseScreen: (context) =>
        SelfCareMyStrategiesChooseScreen(),
    selfCareResourcesScreen: (context) => SelfCareResourcesScreen(),
    selfCareGratitudeJournalScreen: (context) =>
        SelfCareGratitudeJournalScreen(),
    moodTrackerScreen: (context) => MoodTrackerScreen(),
    contactAProfessionalScreen: (context) => ContactAProfessionalScreen(),
    documentAbuseTwoScreen: (context) => DocumentAbuseTwoScreen(),
    documentAbuseAddANewRecordScreen: (context) =>
        DocumentAbuseAddANewRecordScreen(),
    documentAbuseAddSupportingEvidenceTabContainerScreen: (context) =>
        DocumentAbuseAddSupportingEvidenceTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
