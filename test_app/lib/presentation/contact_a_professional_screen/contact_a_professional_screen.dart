import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:test_app/widgets/app_bar/appbar_image_1.dart';
import 'package:test_app/widgets/app_bar/appbar_title.dart';
import 'package:test_app/widgets/app_bar/custom_app_bar.dart';
import 'package:test_app/widgets/custom_bottom_bar.dart';
import 'package:test_app/widgets/custom_checkbox_button.dart';
import 'package:test_app/widgets/custom_drop_down.dart';
import 'package:test_app/widgets/custom_elevated_button.dart';
import 'package:test_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ContactAProfessionalScreen extends StatelessWidget {
  ContactAProfessionalScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  TextEditingController messageController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  bool callLabel = false;

  bool textLabel = false;

  bool emailLabel = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 51.h,
                leading: AppbarImage1(
                    imagePath: ImageConstant.imgImage15,
                    margin: EdgeInsets.only(left: 18.h, top: 8.v, bottom: 8.v),
                    onTap: () {
                      onTapImagefifteen(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Contact a Professional")),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 25.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 18.h, right: 18.h, bottom: 5.v),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: 306.h,
                                            margin: EdgeInsets.only(
                                                left: 6.h, right: 40.h),
                                            child: Text(
                                                "The dropdown menu provides a list of national hotlines you can text or call for information",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        CustomDropDown(
                                            icon: Container(
                                                margin:
                                                    EdgeInsets.only(left: 30.h),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown)),
                                            margin: EdgeInsets.only(
                                                left: 6.h,
                                                top: 5.v,
                                                right: 5.h),
                                            hintText: "Please select",
                                            items: dropdownItemList,
                                            contentPadding: EdgeInsets.only(
                                                left: 17.h,
                                                top: 13.v,
                                                bottom: 13.v),
                                            onChanged: (value) {}),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 6.h, top: 38.v),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Type your message here",
                                                      style: theme.textTheme
                                                          .titleSmall),
                                                  Text("160/160 remaining",
                                                      style: CustomTextStyles
                                                          .titleSmallGray50002)
                                                ])),
                                        CustomTextFormField(
                                            controller: messageController,
                                            margin: EdgeInsets.only(
                                                left: 6.h,
                                                top: 7.v,
                                                right: 5.h)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 6.h, top: 41.v),
                                            child: Text("Your name",
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        CustomTextFormField(
                                            controller: nameController,
                                            margin: EdgeInsets.only(
                                                left: 6.h,
                                                top: 8.v,
                                                right: 5.h),
                                            hintText: "First and last name",
                                            hintStyle: CustomTextStyles
                                                .bodyLargePlusJakartaSansGray50001,
                                            textInputAction:
                                                TextInputAction.done),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 6.h, top: 43.v),
                                            child: Text("Your phone number",
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        Container(
                                            margin: EdgeInsets.only(
                                                left: 6.h, top: 6.v),
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 16.h,
                                                vertical: 13.v),
                                            decoration: AppDecoration
                                                .outlinePrimary
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Text("+1",
                                                style: CustomTextStyles
                                                    .titleMediumGray50001)),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 6.h, top: 42.v),
                                            child: Text(
                                                "Choose how you want to be contacted",
                                                style: theme
                                                    .textTheme.titleSmall)),
                                        CustomCheckboxButton(
                                            text: "Call",
                                            value: callLabel,
                                            margin: EdgeInsets.only(
                                                left: 6.h, top: 6.v),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 2.v),
                                            textStyle:
                                                theme.textTheme.titleSmall,
                                            onChange: (value) {
                                              callLabel = value;
                                            }),
                                        CustomCheckboxButton(
                                            text: "Text",
                                            value: textLabel,
                                            margin: EdgeInsets.only(
                                                left: 6.h, top: 12.v),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 2.v),
                                            textStyle:
                                                theme.textTheme.titleSmall,
                                            onChange: (value) {
                                              textLabel = value;
                                            }),
                                        CustomCheckboxButton(
                                            text: "Email",
                                            value: emailLabel,
                                            margin: EdgeInsets.only(
                                                left: 6.h, top: 12.v),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 2.v),
                                            textStyle:
                                                theme.textTheme.titleSmall,
                                            onChange: (value) {
                                              emailLabel = value;
                                            }),
                                        CustomElevatedButton(
                                            text: "Submit",
                                            margin: EdgeInsets.only(
                                                top: 26.v, right: 11.h),
                                            rightIcon: Container(
                                                margin:
                                                    EdgeInsets.only(left: 26.h),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowright)),
                                            onTap: () {
                                              onTapSubmit(context);
                                            })
                                      ]))))
                    ]))),
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

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreenContainerScreen.
  onTapImagefifteen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreenContainerScreen.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
