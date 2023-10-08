import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:test_app/widgets/custom_bottom_bar.dart';
import 'package:test_app/widgets/custom_elevated_button.dart';
import 'package:test_app/widgets/custom_outlined_button.dart';
import 'package:test_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SelfCareGratitudeJournalScreen extends StatelessWidget {
  SelfCareGratitudeJournalScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  TextEditingController groupFortySevenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                padding: EdgeInsets.only(top: 6.v, right: 57.h),
                                child: Text("Gratitude Journal",
                                    style: theme.textTheme.headlineSmall))
                          ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 27.v),
                          child: Text("Today I am grateful for...",
                              style: theme.textTheme.titleMedium))),
                  CustomTextFormField(
                      controller: groupFortySevenController,
                      margin:
                          EdgeInsets.only(left: 24.h, top: 9.v, right: 24.h),
                      hintText:
                          "Try to list three things that went well today and why you are grateful for them.",
                      textInputAction: TextInputAction.done,
                      maxLines: 8,
                      borderDecoration:
                          TextFormFieldStyleHelper.outlinePrimary),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 29.v),
                          child: Text("Or, choose a journal prompt  below",
                              style: theme.textTheme.titleMedium))),
                  Container(
                      margin:
                          EdgeInsets.only(left: 24.h, top: 9.v, right: 24.h),
                      padding: EdgeInsets.all(8.h),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 7.h, top: 7.v, bottom: 4.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                    child: SizedBox(
                                                        width: 263.h,
                                                        child: Text(
                                                            "List 10 things that you are grateful for in your life right now",
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: CustomTextStyles
                                                                .titleSmallPurple800))),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgVector3,
                                                    height: 4.v,
                                                    width: 8.h,
                                                    margin: EdgeInsets.only(
                                                        left: 35.h,
                                                        top: 7.v,
                                                        bottom: 27.v))
                                              ]),
                                          Container(
                                              width: 263.h,
                                              margin: EdgeInsets.only(
                                                  top: 5.v, right: 43.h),
                                              child: Text(
                                                  "What talent or skill do you have that you are grateful for?",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .titleSmallPrimaryContainer)),
                                          Container(
                                              width: 263.h,
                                              margin: EdgeInsets.only(
                                                  top: 5.v, right: 43.h),
                                              child: Text(
                                                  "Write about a book, movie, or song that has inspired you",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .titleSmallGray700)),
                                          Container(
                                              width: 241.h,
                                              margin: EdgeInsets.only(
                                                  top: 5.v, right: 64.h),
                                              child: Text(
                                                  "List three things that you are looking forward to in the future",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .titleSmallGray700))
                                        ]))),
                            Container(
                                height: 180.v,
                                width: 4.h,
                                margin: EdgeInsets.only(left: 8.h),
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                              height: 180.v,
                                              child: VerticalDivider(
                                                  width: 4.h,
                                                  thickness: 4.v,
                                                  color: appTheme.gray50002
                                                      .withOpacity(0.2)))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: SizedBox(
                                              height: 70.v,
                                              child: VerticalDivider(
                                                  width: 4.h,
                                                  thickness: 4.v,
                                                  color: appTheme.gray50002)))
                                    ]))
                          ])),
                  CustomElevatedButton(
                      text: "Save Journal Entry",
                      margin:
                          EdgeInsets.only(left: 24.h, top: 40.v, right: 24.h),
                      onTap: () {
                        onTapSavejournal(context);
                      }),
                  CustomOutlinedButton(
                      text: "View previous entries ",
                      margin:
                          EdgeInsets.only(left: 24.h, top: 40.v, right: 24.h))
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

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreenContainerScreen.
  onTapSavejournal(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
