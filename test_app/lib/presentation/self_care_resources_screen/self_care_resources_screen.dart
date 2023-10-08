import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:test_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SelfCareResourcesScreen extends StatelessWidget {
  SelfCareResourcesScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      height: 47.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.whiteA700)),
                  Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 24.h, vertical: 8.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                                svgPath:
                                    ImageConstant.imgArrowleftErrorcontainer,
                                height: 12.v,
                                width: 6.h,
                                margin: EdgeInsets.symmetric(vertical: 12.v),
                                onTap: () {
                                  onTapImgArrowleftone(context);
                                }),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 6.v, right: 101.h),
                                child: Text("Resources",
                                    style: theme.textTheme.headlineSmall))
                          ])),
                  Container(
                      width: 338.h,
                      margin:
                          EdgeInsets.only(left: 24.h, top: 25.v, right: 27.h),
                      child: Text(
                          "These videos may be helpful for additional support and strategies in maintaining your mental health. ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall)),
                  Container(
                      margin:
                          EdgeInsets.only(left: 24.h, top: 25.v, right: 24.h),
                      decoration: AppDecoration.outlinePrimary2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgScreenshot20230926,
                          height: 240.v,
                          width: 342.h,
                          radius: BorderRadius.circular(8.h))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 7.v),
                          child: Text("Mental Health Minute video",
                              style: theme.textTheme.titleSmall))),
                  Container(
                      margin:
                          EdgeInsets.only(left: 24.h, top: 28.v, right: 24.h),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgScreenshot20230926240x342,
                          height: 240.v,
                          width: 342.h,
                          radius: BorderRadius.circular(8.h))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 24.h, top: 9.v, bottom: 6.v),
                          child: Text("Belly Breathing exercises",
                              style: theme.textTheme.titleSmall)))
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
}
