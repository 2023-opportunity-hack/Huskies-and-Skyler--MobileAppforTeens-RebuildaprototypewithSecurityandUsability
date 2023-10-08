import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/widgets/custom_drop_down.dart';
import 'package:test_app/widgets/custom_elevated_button.dart';
import 'package:test_app/widgets/custom_switch.dart';
import 'package:test_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DocumentAbuseAddANewRecordScreen extends StatelessWidget {
  DocumentAbuseAddANewRecordScreen({Key? key}) : super(key: key);

  TextEditingController groupFortyOneController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray20001,
            resizeToAvoidBottomInset: false,
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
                            svgPath: ImageConstant.imgArrowleft,
                            height: 12.v,
                            width: 6.h,
                            onTap: () {
                              onTapImgArrowleftone(context);
                            }),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 89.h, top: 5.v, bottom: 5.v),
                            child: Text("Add a new record",
                                style: CustomTextStyles
                                    .titleMediumOnPrimaryContainer))
                      ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 27.v),
                          child: Text("What happened?",
                              style: theme.textTheme.titleMedium))),
                  CustomTextFormField(
                      controller: groupFortyOneController,
                      margin:
                          EdgeInsets.only(left: 24.h, top: 9.v, right: 24.h),
                      hintText:
                          "Type what happened here.  Provide as much detail as possible",
                      textInputAction: TextInputAction.done,
                      maxLines: 8,
                      borderDecoration:
                          TextFormFieldStyleHelper.outlinePrimary),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 29.v),
                          child: Text("When did it happen?",
                              style: CustomTextStyles
                                  .titleMediumOnPrimaryContainer_1))),
                  Container(
                      margin:
                          EdgeInsets.only(left: 24.h, top: 9.v, right: 24.h),
                      padding: EdgeInsets.all(16.h),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  child: Text("Year of event",
                                      style: CustomTextStyles
                                          .titleMediumOnPrimaryContainer_1)),
                              CustomDropDown(
                                  width: 65.h,
                                  icon: SizedBox(
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdropdownblack24dp1)),
                                  hintText: "2023",
                                  items: dropdownItemList,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 1.v),
                                  onChanged: (value) {})
                            ]),
                        SizedBox(height: 32.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  child: Text("Month of event",
                                      style: CustomTextStyles
                                          .titleMediumOnPrimaryContainer_1)),
                              CustomDropDown(
                                  width: 59.h,
                                  icon: SizedBox(
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdropdownblack24dp1)),
                                  hintText: "June",
                                  items: dropdownItemList1,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 1.v),
                                  onChanged: (value) {})
                            ]),
                        SizedBox(height: 32.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 3.v),
                                  child: Text("Day of event",
                                      style: CustomTextStyles
                                          .titleMediumOnPrimaryContainer_1)),
                              CustomDropDown(
                                  width: 40.h,
                                  icon: SizedBox(
                                      child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgArrowdropdownblack24dp1)),
                                  hintText: "21",
                                  items: dropdownItemList2,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 1.v),
                                  onChanged: (value) {})
                            ]),
                        SizedBox(height: 31.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 7.v, bottom: 3.v),
                                  child: Text("Time (optional)",
                                      style: CustomTextStyles
                                          .titleMediumOnPrimaryContainer_1)),
                              CustomSwitch(
                                  value: isSelectedSwitch,
                                  onChange: (value) {
                                    isSelectedSwitch = value;
                                  })
                            ]),
                        SizedBox(height: 32.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(vertical: 1.v),
                                  child: Text("Time of event",
                                      style: CustomTextStyles
                                          .titleMediumOnPrimaryContainer_1)),
                              CustomImageView(
                                  svgPath: ImageConstant.imgPlay,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)
                            ])
                      ])),
                  CustomElevatedButton(
                      text: "Add supporting evidence",
                      margin: EdgeInsets.fromLTRB(24.h, 40.v, 24.h, 5.v),
                      rightIcon: Container(
                          margin: EdgeInsets.only(left: 10.h),
                          child:
                              CustomImageView(svgPath: ImageConstant.imgPlus)),
                      onTap: () {
                        onTapAddsupporting(context);
                      })
                ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the documentAbuseAddSupportingEvidenceTabContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the documentAbuseAddSupportingEvidenceTabContainerScreen.
  onTapAddsupporting(BuildContext context) {
    Navigator.pushNamed(context,
        AppRoutes.documentAbuseAddSupportingEvidenceTabContainerScreen);
  }
}
