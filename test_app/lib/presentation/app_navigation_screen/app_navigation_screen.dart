import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: 375.h,
                child: Column(children: [
                  Container(
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 10.v),
                                child: Text("App Navigation",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: theme
                                            .colorScheme.onErrorContainer
                                            .withOpacity(1),
                                        fontSize: 20.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text(
                                    "Check your app's UI from the below demo screens of your app.",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.blueGray400,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        SizedBox(height: 5.v),
                        Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1))
                      ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.fillWhiteA,
                              child: Column(children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapHomeScreenContainer(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Home Screen - Container",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapWarningsignsOne(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "warning signs One",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSelfCare(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Self Care",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSafetyplan(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("safety plan",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSelfcaremystrategieschoose(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "self care - my strategies (choose)",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSelfcareresources(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "self care - resources",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapSelfcaregratitudejournal(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "self care - gratitude journal",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context,'/mood_tracker_screen.dart');
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text("Mood tracker",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapContactaProfessional(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "Contact a Professional",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapDocumentabuseTwo(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "document abuse Two",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapDocumentabuseaddanewrecord(context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "document abuse - add a new record",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapDocumentabuseaddsupportingevidenceTabContainer(
                                          context);
                                    },
                                    child: Container(
                                        decoration: AppDecoration.fillWhiteA,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      "document abuse - add supporting evidence - Tab Container",
                                                      textAlign:
                                                      TextAlign.center,
                                                      style: TextStyle(
                                                          color: theme
                                                              .colorScheme
                                                              .onErrorContainer
                                                              .withOpacity(1),
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ])))
                              ]))))
                ]))));
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreenContainerScreen.
  onTapHomeScreenContainer(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }

  /// Navigates to the warningSignsOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the warningSignsOneScreen.
  onTapWarningsignsOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.warningSignsOneScreen);
  }

  /// Navigates to the selfCareScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the selfCareScreen.
  onTapSelfCare(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selfCareScreen);
  }

  /// Navigates to the safetyPlanScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the safetyPlanScreen.
  onTapSafetyplan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.safetyPlanScreen);
  }

  /// Navigates to the selfCareMyStrategiesChooseScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the selfCareMyStrategiesChooseScreen.
  onTapSelfcaremystrategieschoose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selfCareMyStrategiesChooseScreen);
  }

  /// Navigates to the selfCareResourcesScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the selfCareResourcesScreen.
  onTapSelfcareresources(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selfCareResourcesScreen);
  }

  /// Navigates to the selfCareGratitudeJournalScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the selfCareGratitudeJournalScreen.
  onTapSelfcaregratitudejournal(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selfCareGratitudeJournalScreen);
  }

  /// Navigates to the moodTrackerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the moodTrackerScreen.
  onTapMoodtracker(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.moodTrackerScreen);
  }

  /// Navigates to the contactAProfessionalScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the contactAProfessionalScreen.
  onTapContactaProfessional(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactAProfessionalScreen);
  }

  /// Navigates to the documentAbuseTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the documentAbuseTwoScreen.
  onTapDocumentabuseTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.documentAbuseTwoScreen);
  }

  /// Navigates to the documentAbuseAddANewRecordScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the documentAbuseAddANewRecordScreen.
  onTapDocumentabuseaddanewrecord(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.documentAbuseAddANewRecordScreen);
  }

  /// Navigates to the documentAbuseAddSupportingEvidenceTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the documentAbuseAddSupportingEvidenceTabContainerScreen.
  onTapDocumentabuseaddsupportingevidenceTabContainer(BuildContext context) {
    Navigator.pushNamed(context,
        AppRoutes.documentAbuseAddSupportingEvidenceTabContainerScreen);
  }
}
