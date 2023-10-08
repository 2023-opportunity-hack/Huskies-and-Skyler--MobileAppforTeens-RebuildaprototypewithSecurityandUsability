import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:test_app/widgets/app_bar/appbar_image_1.dart';
import 'package:test_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:test_app/widgets/app_bar/custom_app_bar.dart';
import 'package:test_app/widgets/custom_bottom_bar.dart';
import 'package:test_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SelfCareScreen extends StatelessWidget {
  SelfCareScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 58.h,
                leading: AppbarImage1(
                    svgPath: ImageConstant.imgArrowleftErrorcontainer,
                    margin:
                        EdgeInsets.only(left: 50.h, top: 19.v, bottom: 21.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "Self Care")),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 30.h, top: 113.v, right: 30.h),
                child: Column(children: [
                  SizedBox(
                      height: 150.v,
                      width: 323.h,
                      child: Stack(alignment: Alignment.centerRight, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: () {
                                  onTapColumnclockone(context);
                                },
                                child: Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 32.h, vertical: 25.v),
                                    decoration: AppDecoration.outlinePrimary1
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder75),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgClock,
                                              height: 39.v,
                                              width: 41.h),
                                          SizedBox(height: 14.v),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: SizedBox(
                                                  width: 75.h,
                                                  child: Text(
                                                      "Gratitude Journal",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .titleMediumPrimary_1))),
                                          SizedBox(height: 3.v)
                                        ])))),
                        CustomOutlinedButton(
                            height: 150.v,
                            width: 150.h,
                            text: "Mood Tracker",
                            buttonStyle: CustomButtonStyles.outlinePrimary,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumPrimary_1,
                            onTap: () {
                              onTapMoodtracker(context);
                            },
                            alignment: Alignment.centerRight),
                        CustomImageView(
                            svgPath: ImageConstant.imgLine,
                            height: 43.v,
                            width: 209.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 25.v)),
                        Align(
                            alignment: Alignment.topRight,
                            child: Container(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                margin: EdgeInsets.only(top: 28.v, right: 55.h),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          svgPath:
                                              ImageConstant.imgColorYellow500,
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          alignment: Alignment.center),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgSignal,
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          alignment: Alignment.center)
                                    ])))
                      ])),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 27.v, right: 7.h, bottom: 5.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: GestureDetector(
                                    onTap: () {
                                      onTapColumncropone(context);
                                    },
                                    child: Container(
                                        margin: EdgeInsets.only(right: 11.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 21.h, vertical: 42.v),
                                        decoration: AppDecoration
                                            .outlinePrimary1
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder75),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                  height: 32.adaptSize,
                                                  width: 32.adaptSize,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCrop,
                                                            height:
                                                                32.adaptSize,
                                                            width: 32.adaptSize,
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCar,
                                                            height:
                                                                32.adaptSize,
                                                            width: 32.adaptSize,
                                                            alignment: Alignment
                                                                .center)
                                                      ])),
                                              SizedBox(height: 11.v),
                                              Text("My Strategies",
                                                  style: CustomTextStyles
                                                      .titleMediumPrimary_1)
                                            ])))),
                            Expanded(
                                child: GestureDetector(
                                    onTap: () {
                                      onTapColumntrashone(context);
                                    },
                                    child: Container(
                                        margin: EdgeInsets.only(left: 11.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 34.h, vertical: 32.v),
                                        decoration: AppDecoration
                                            .outlinePrimary1
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder75),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                  height: 43.v,
                                                  width: 37.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgTrash,
                                                            height: 43.v,
                                                            width: 31.h,
                                                            alignment: Alignment
                                                                .center),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgBag,
                                                            height: 42.v,
                                                            width: 37.h,
                                                            alignment: Alignment
                                                                .center)
                                                      ])),
                                              SizedBox(height: 9.v),
                                              Text("Resources",
                                                  style: CustomTextStyles
                                                      .titleMediumPrimary_1),
                                              SizedBox(height: 12.v)
                                            ]))))
                          ]))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Image6:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Image18:
        return "/";
      case BottomBarEnum.Image17:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the selfCareGratitudeJournalScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the selfCareGratitudeJournalScreen.
  onTapColumnclockone(BuildContext context) {
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

  /// Navigates to the selfCareMyStrategiesChooseScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the selfCareMyStrategiesChooseScreen.
  onTapColumncropone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selfCareMyStrategiesChooseScreen);
  }

  /// Navigates to the selfCareResourcesScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the selfCareResourcesScreen.
  onTapColumntrashone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selfCareResourcesScreen);
  }
}
