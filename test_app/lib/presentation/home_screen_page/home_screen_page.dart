import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/widgets/app_bar/appbar_image.dart';
import 'package:test_app/widgets/app_bar/custom_app_bar.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                title: Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: Row(children: [
                      AppbarImage(
                          imagePath: ImageConstant.imgImage16,
                          margin: EdgeInsets.only(bottom: 5.v)),
                      AppbarImage(
                          imagePath: ImageConstant.imgImage3,
                          margin: EdgeInsets.only(left: 9.h, top: 18.v))
                    ]))),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          Divider(
                              color: theme.colorScheme.onErrorContainer
                                  .withOpacity(1),
                              indent: 5.h,
                              endIndent: 10.h),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 11.h, top: 22.v, right: 2.h),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: 112.h,
                                        margin: EdgeInsets.only(top: 3.v),
                                        child: Text(
                                            "How are you feeling today?",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodySmall)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage5,
                                        height: 32.v,
                                        width: 201.h,
                                        margin: EdgeInsets.only(
                                            left: 31.h, bottom: 4.v))
                                  ])),
                          SizedBox(height: 80.v),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 235.v,
                                    width: 241.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 24.h,
                                                      vertical: 11.v),
                                                  decoration: AppDecoration
                                                      .outlinePurple
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgCut,
                                                            height: 60.v,
                                                            width: 64.h),
                                                        SizedBox(height: 13.v),
                                                        Text("Self Care",
                                                            style: CustomTextStyles
                                                                .titleMediumOnErrorContainer),
                                                        SizedBox(height: 2.v)
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapWarningsigns(context);
                                                  },
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 3.h,
                                                              vertical: 5.v),
                                                      decoration: AppDecoration
                                                          .outlinePurple
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgWarning,
                                                                height: 69.v,
                                                                width: 63.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 21
                                                                            .h)),
                                                            Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left:
                                                                            1.h,
                                                                        top: 12
                                                                            .v,
                                                                        bottom: 6
                                                                            .v),
                                                                child: Text(
                                                                    "Warning Signs",
                                                                    style: CustomTextStyles
                                                                        .titleMediumOnErrorContainer))
                                                          ])))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.only(
                                                      left: 1.h),
                                                  shape: RoundedRectangleBorder(
                                                      side: BorderSide(
                                                          color: appTheme
                                                              .purple800,
                                                          width: 1.h),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder8),
                                                  child: Container(
                                                      height: 116.v,
                                                      width: 119.h,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 11.h,
                                                              vertical: 7.v),
                                                      decoration: AppDecoration
                                                          .outlinePurple
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Container(
                                                                    width: 95.h,
                                                                    margin: EdgeInsets.only(
                                                                        bottom: 4
                                                                            .v),
                                                                    child: Text(
                                                                        "Contact Professional",
                                                                        maxLines:
                                                                            2,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: CustomTextStyles
                                                                            .titleMediumOnErrorContainer))),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgComputer,
                                                                height: 67.v,
                                                                width: 63.h,
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter)
                                                          ])))),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 28.h,
                                                      vertical: 7.v),
                                                  decoration: AppDecoration
                                                      .outlinePurple
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgInfo,
                                                            height: 68.v,
                                                            width: 64.h),
                                                        SizedBox(height: 11.v),
                                                        Text("Map",
                                                            style: CustomTextStyles
                                                                .titleMediumOnErrorContainer),
                                                        SizedBox(height: 2.v)
                                                      ])))
                                        ])),
                                SizedBox(
                                    height: 235.v,
                                    width: 117.h,
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: GestureDetector(
                                                  onTap: () {
                                                    onTapSafetyplan(context);
                                                  },
                                                  child: Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 12.h,
                                                              vertical: 10.v),
                                                      decoration: AppDecoration
                                                          .outlinePurple
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFile,
                                                                height: 59.v,
                                                                width: 61.h,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        right: 12
                                                                            .h)),
                                                            SizedBox(
                                                                height: 15.v),
                                                            Text("Safety Plan",
                                                                style: CustomTextStyles
                                                                    .titleMediumOnErrorContainer)
                                                          ])))),
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16.h,
                                                      vertical: 5.v),
                                                  decoration: AppDecoration
                                                      .outlinePurple
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder8),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        SizedBox(height: 2.v),
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgE1421,
                                                            height: 69.v,
                                                            width: 61.h),
                                                        SizedBox(
                                                            width: 81.h,
                                                            child: Text(
                                                                "Document Abuse",
                                                                maxLines: 2,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: CustomTextStyles
                                                                    .titleMediumOnErrorContainer))
                                                      ])))
                                        ]))
                              ])
                        ]))))));
  }

  /// Navigates to the warningSignsOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the warningSignsOneScreen.
  onTapWarningsigns(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.warningSignsOneScreen);
  }

  /// Navigates to the safetyPlanScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the safetyPlanScreen.
  onTapSafetyplan(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.safetyPlanScreen);
  }
}
