import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:test_app/widgets/custom_bottom_bar.dart';

class SafetyPlanScreen extends StatelessWidget {
  SafetyPlanScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SizedBox(
              height: mediaQueryData.size.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 47.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.h,
                            vertical: 8.v,
                          ),
                          decoration: AppDecoration.fillWhiteA,
                          child: Row(
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgIconchevron,
                                height: 32.adaptSize,
                                width: 32.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 2.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 91.h,
                                  top: 5.v,
                                ),
                                child: Text(
                                  "Safety Plan",
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 22.h,
                        top: 124.v,
                        right: 28.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 332.h,
                            margin: EdgeInsets.only(right: 7.h),
                            child: Text(
                              "The safety plan is a set of actions that can help lower your risk of getting hurt by your partner.  It includes information specific to you and your life that will increase your safety at school, home, and other places that you go on a daily basis.  All the categories below are optional, so feel free to fill out the ones that are most relevant.  ",
                              maxLines: 7,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              top: 29.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: appTheme.gray20001,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: theme.colorScheme.primary,
                                      width: 1.h,
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder49,
                                  ),
                                  child: Container(
                                    height: 99.adaptSize,
                                    width: 99.adaptSize,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 36.h,
                                      vertical: 26.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlinePrimary1.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder49,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgColor,
                                          height: 17.v,
                                          width: 25.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgMobile,
                                          height: 17.v,
                                          width: 25.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 99.adaptSize,
                                  width: 99.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray20001,
                                    borderRadius: BorderRadius.circular(
                                      49.h,
                                    ),
                                    border: Border.all(
                                      color: theme.colorScheme.primary,
                                      width: 1.h,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 99.adaptSize,
                                  width: 99.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray20001,
                                    borderRadius: BorderRadius.circular(
                                      49.h,
                                    ),
                                    border: Border.all(
                                      color: theme.colorScheme.primary,
                                      width: 1.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 3.h,
                              top: 27.v,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 99.adaptSize,
                                  width: 99.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray20001,
                                    borderRadius: BorderRadius.circular(
                                      49.h,
                                    ),
                                    border: Border.all(
                                      color: theme.colorScheme.primary,
                                      width: 1.h,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 99.adaptSize,
                                  width: 99.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray20001,
                                    borderRadius: BorderRadius.circular(
                                      49.h,
                                    ),
                                    border: Border.all(
                                      color: theme.colorScheme.primary,
                                      width: 1.h,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 99.adaptSize,
                                  width: 99.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.gray20001,
                                    borderRadius: BorderRadius.circular(
                                      49.h,
                                    ),
                                    border: Border.all(
                                      color: theme.colorScheme.primary,
                                      width: 1.h,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: mediaQueryData.size.height,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Text(
                                "",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles
                                    .titleMediumOnErrorContainerBold,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 57.h,
                                right: 48.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 7.h),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Basic",
                                          style: CustomTextStyles
                                              .titleMediumPrimary,
                                        ),
                                        Spacer(
                                          flex: 50,
                                        ),
                                        Text(
                                          "School",
                                          style: CustomTextStyles
                                              .titleMediumPrimary,
                                        ),
                                        Spacer(
                                          flex: 50,
                                        ),
                                        Text(
                                          "Tech",
                                          style: CustomTextStyles
                                              .titleMediumPrimary,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 66.v,
                                      right: 11.h,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgSettings,
                                          height: 36.adaptSize,
                                          width: 36.adaptSize,
                                        ),
                                        Spacer(
                                          flex: 50,
                                        ),
                                        CustomImageView(
                                          svgPath: ImageConstant.imgUser,
                                          height: 36.adaptSize,
                                          width: 36.adaptSize,
                                        ),
                                        Spacer(
                                          flex: 50,
                                        ),
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgInfoYellow500,
                                          height: 36.adaptSize,
                                          width: 36.adaptSize,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 4.h,
                                      top: 1.v,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Job",
                                          style: CustomTextStyles
                                              .titleMediumPrimary_1,
                                        ),
                                        Spacer(
                                          flex: 50,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 2.v),
                                          child: Text(
                                            "Children",
                                            style: CustomTextStyles
                                                .titleMediumPrimary_1,
                                          ),
                                        ),
                                        Spacer(
                                          flex: 50,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 2.v),
                                          child: Text(
                                            "Partner",
                                            style: CustomTextStyles
                                                .titleMediumPrimary_1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgCamera,
                            height: 22.v,
                            width: 28.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 303.v),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgHome,
                            height: 22.v,
                            width: 28.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 303.v),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgContrast,
                            height: 27.v,
                            width: 22.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 303.v,
                              right: 64.h,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgTelevision,
                            height: 27.v,
                            width: 22.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 303.v,
                              right: 64.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

      ),
    );
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
}
