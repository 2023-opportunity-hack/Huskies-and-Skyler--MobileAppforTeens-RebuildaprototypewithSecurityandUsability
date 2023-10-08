import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:test_app/widgets/app_bar/appbar_title.dart';
import 'package:test_app/widgets/app_bar/custom_app_bar.dart';
import 'package:test_app/widgets/custom_bottom_bar.dart';
import 'package:test_app/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class MoodTrackerScreen extends StatelessWidget {
  MoodTrackerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                leadingWidth: 43.h,
                leading: Container(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    margin:
                        EdgeInsets.only(left: 11.h, top: 12.v, bottom: 12.v),
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleftErrorcontainer,
                          height: 12.v,
                          width: 6.h,
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.fromLTRB(17.h, 10.v, 9.h, 10.v),
                          onTap: () {
                            onTapImgArrowleftone(context);
                          }),
                      CustomIconButton(
                          height: 32.adaptSize,
                          width: 32.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          alignment: Alignment.center,
                          onTap: () {
                            onTapBtnArrowleftthree(context);
                          },
                          child: CustomImageView(
                              svgPath:
                                  ImageConstant.imgArrowleftErrorcontainer))
                    ])),
                centerTitle: true,
                title: AppbarTitle(text: "Mood Tracker")),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 44.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("How are you feeling today?",
                              style: CustomTextStyles
                                  .titleLargeInterOnErrorContainer)),
                      SizedBox(height: 7.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage5,
                          height: 41.v,
                          width: 268.h,
                          alignment: Alignment.center),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 1.h, top: 32.v, right: 20.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Highlights",
                                    style: CustomTextStyles
                                        .titleLargeInterOnErrorContainer),
                                Padding(
                                    padding: EdgeInsets.only(bottom: 3.v),
                                    child: Text("This week",
                                        style: theme.textTheme.bodyLarge))
                              ])),
                      Container(
                          margin: EdgeInsets.only(top: 8.v, right: 4.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.h, vertical: 10.v),
                          decoration: AppDecoration.outlinePrimary3.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgImage7,
                              height: 173.v,
                              width: 321.h)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: EdgeInsets.only(top: 6.v, right: 11.h),
                              child: Text("Calendar",
                                  style: theme.textTheme.bodyLarge))),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.only(
                              left: 1.h, top: 16.v, bottom: 5.v),
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: theme.colorScheme.primary, width: 1.h),
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Container(
                              height: 185.v,
                              width: 341.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 7.h, vertical: 4.v),
                              decoration: AppDecoration.outlinePrimary3
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage8,
                                        height: 176.v,
                                        width: 321.h,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 26.v, right: 3.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage9,
                                                      height: 34.v,
                                                      width: 24.h),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage10,
                                                      height: 27.v,
                                                      width: 25.h,
                                                      margin: EdgeInsets.only(
                                                          left: 19.h,
                                                          top: 3.v,
                                                          bottom: 4.v)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage12,
                                                      height: 30.v,
                                                      width: 26.h,
                                                      margin: EdgeInsets.only(
                                                          left: 30.h,
                                                          bottom: 4.v)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgImage11,
                                                      height: 28.adaptSize,
                                                      width: 28.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 19.h,
                                                          bottom: 6.v))
                                                ])))
                                  ])))
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
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapBtnArrowleftthree(BuildContext context) {
    Navigator.pop(context);
  }
}
