import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/widgets/custom_elevated_button.dart';
import 'package:test_app/widgets/custom_outlined_button.dart';

class DocumentAbuseTwoScreen extends StatelessWidget {
  const DocumentAbuseTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray20001,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      height: 47.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.gray20001)),
                  Container(
                      width: double.maxFinite,
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.h, vertical: 11.v),
                      decoration: AppDecoration.fillGray,
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleftErrorcontainer,
                            height: 12.v,
                            width: 6.h,
                            onTap: () {
                              onTapImgArrowleftone(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 89.h, top: 5.v, bottom: 5.v),
                            child: Text("Document Abuse",
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainer))
                      ])),
                  SizedBox(height: 30.v),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      color: appTheme.whiteA700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Container(
                          height: 124.v,
                          width: 136.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 26.h, vertical: 8.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    width: 81.h,
                                    margin: EdgeInsets.only(bottom: 3.v),
                                    child: Text("Document Abuse",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .titleMediumOnPrimaryContainer_1))),
                            CustomImageView(
                                svgPath: ImageConstant.imgE1421Onerrorcontainer,
                                height: 72.adaptSize,
                                width: 72.adaptSize,
                                alignment: Alignment.topCenter)
                          ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 327.h,
                          margin: EdgeInsets.only(
                              left: 24.h, top: 19.v, right: 38.h),
                          child: Text(
                              "Select Add a New Record to document a new abuse incident or select View Records to see previous incidents. ",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .titleMediumOnPrimaryContainer_1))),
                  CustomElevatedButton(
                      text: "Add new record",
                      margin:
                          EdgeInsets.only(left: 24.h, top: 57.v, right: 24.h),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgPlus))),
                  CustomOutlinedButton(
                      text: "View (6) records ",
                      margin: EdgeInsets.fromLTRB(24.h, 40.v, 24.h, 5.v),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgFolder)))
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
