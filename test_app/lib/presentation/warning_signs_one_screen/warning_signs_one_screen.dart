import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class WarningSignsOneScreen extends StatelessWidget {
  WarningSignsOneScreen({Key? key}) : super(key: key);

  List<String> dropdownItemList = ["HELLO"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList3 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList4 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList5 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList6 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList7 = ["Item One", "Item Two", "Item Three"];

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
                          EdgeInsets.symmetric(horizontal: 24.h, vertical: 5.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleft,
                            height: 12.v,
                            width: 6.h,
                            margin: EdgeInsets.symmetric(vertical: 15.v),
                            onTap: () {
                              onTapImgArrowleftone(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(left: 83.h, top: 11.v),
                            child: Text("Warning Signs",
                                style: CustomTextStyles
                                    .headlineSmallOnPrimaryContainer))
                      ])),
                  Container(
                      width: 337.h,
                      margin:
                          EdgeInsets.only(left: 24.h, top: 33.v, right: 28.h),
                      child: Text(
                          "It is not always obvious when someone you care about has been affected by sexual violence.  Learning the warning signs for children, teens, and college-age adults can help you learn when to act.   ",
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.titleSmall)),
                  CustomDropDown(
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowdown)),
                      margin:
                          EdgeInsets.only(left: 24.h, top: 41.v, right: 24.h),
                      hintText: "What is domestic violence?",
                      items: dropdownItemList,
                      contentPadding:
                          EdgeInsets.only(left: 17.h, top: 13.v, bottom: 13.v),
                      onChanged: (value) {}),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 45.v),
                          child: Text("Types of abuse",
                              style: CustomTextStyles
                                  .titleSmallOnPrimaryContainer))),
                  SizedBox(height: 6.v),
                  Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      color: appTheme.whiteA700,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: theme.colorScheme.primary, width: 1.h),
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Container(
                          height: 336.v,
                          width: 342.h,
                          decoration: AppDecoration.outlinePrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomDropDown(
                                width: 325.h,
                                icon: Container(
                                    margin: EdgeInsets.only(left: 30.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                hintText: "Emotional abuse",
                                alignment: Alignment.topCenter,
                                items: dropdownItemList1,
                                onChanged: (value) {}),
                            CustomDropDown(
                                width: 325.h,
                                icon: Container(
                                    margin: EdgeInsets.only(left: 30.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                margin: EdgeInsets.only(top: 48.v),
                                hintText: "Gaslighting",
                                alignment: Alignment.topCenter,
                                items: dropdownItemList2,
                                onChanged: (value) {}),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 95.v),
                                    child: SizedBox(
                                        width: 338.h, child: Divider()))),
                            CustomDropDown(
                                width: 325.h,
                                icon: Container(
                                    margin: EdgeInsets.only(left: 30.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                margin: EdgeInsets.only(top: 96.v),
                                hintText: "Reproductive coersion",
                                alignment: Alignment.topCenter,
                                items: dropdownItemList3,
                                onChanged: (value) {}),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 143.v),
                                    child: SizedBox(
                                        width: 338.h, child: Divider()))),
                            CustomDropDown(
                                width: 325.h,
                                icon: Container(
                                    margin: EdgeInsets.only(left: 30.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                hintText: "Physical abuse",
                                alignment: Alignment.center,
                                items: dropdownItemList4,
                                onChanged: (value) {}),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 143.v),
                                    child: SizedBox(
                                        width: 338.h, child: Divider()))),
                            CustomDropDown(
                                width: 325.h,
                                icon: Container(
                                    margin: EdgeInsets.only(left: 30.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                margin: EdgeInsets.only(bottom: 96.v),
                                hintText: "Sexual abuse",
                                alignment: Alignment.bottomCenter,
                                items: dropdownItemList5,
                                onChanged: (value) {}),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 95.v),
                                    child: SizedBox(
                                        width: 338.h, child: Divider()))),
                            CustomDropDown(
                                width: 325.h,
                                icon: Container(
                                    margin: EdgeInsets.only(left: 30.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                margin: EdgeInsets.only(bottom: 48.v),
                                hintText: "Economic abuse",
                                alignment: Alignment.bottomCenter,
                                items: dropdownItemList6,
                                onChanged: (value) {}),
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(bottom: 47.v),
                                    child: SizedBox(
                                        width: 338.h, child: Divider()))),
                            CustomDropDown(
                                width: 325.h,
                                icon: Container(
                                    margin: EdgeInsets.only(left: 30.h),
                                    child: CustomImageView(
                                        svgPath: ImageConstant.imgArrowdown)),
                                hintText: "Technological-assisted abuse",
                                alignment: Alignment.bottomCenter,
                                items: dropdownItemList7,
                                onChanged: (value) {}),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 47.v),
                                    child: SizedBox(
                                        width: 338.h, child: Divider())))
                          ]))),
                  SizedBox(height: 5.v)
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
