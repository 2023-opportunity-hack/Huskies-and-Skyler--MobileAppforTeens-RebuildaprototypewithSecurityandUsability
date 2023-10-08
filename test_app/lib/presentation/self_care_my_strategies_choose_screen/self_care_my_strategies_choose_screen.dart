import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/presentation/home_screen_page/home_screen_page.dart';
import 'package:test_app/widgets/custom_bottom_bar.dart';
import 'package:test_app/widgets/custom_checkbox_button.dart';
import 'package:test_app/widgets/custom_drop_down.dart';
import 'package:test_app/widgets/custom_elevated_button.dart';
import 'package:test_app/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SelfCareMyStrategiesChooseScreen extends StatelessWidget {
  SelfCareMyStrategiesChooseScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  bool listenToFavorit = false;

  bool goForWalk = false;

  bool countToTenSlowl = false;

  bool listenToAudiobo = false;

  bool callFriend = false;

  bool practiceYogaOrM = false;

  bool doodleDrawOrPai = false;

  bool putOnMusicAndDa = false;

  bool playWithOrWalkP = false;

  bool writeInJournal = false;

  bool playVideoGame = false;

  bool cookOrBake = false;

  bool makeScrapbook = false;

  bool makePlaylistOfF = false;

  bool doPuzzle = false;

  bool watchFunnyVideo = false;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Container(
                              height: 47.v,
                              width: double.maxFinite,
                              decoration:
                                  BoxDecoration(color: appTheme.whiteA700)),
                          Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24.h, vertical: 8.v),
                              decoration: AppDecoration.fillWhiteA,
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowleftErrorcontainer,
                                    height: 12.v,
                                    width: 6.h,
                                    margin:
                                        EdgeInsets.symmetric(vertical: 12.v),
                                    onTap: () {
                                      onTapImgArrowleftone(context);
                                    }),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 84.h, top: 5.v),
                                    child: Text("My Strategies",
                                        style: theme.textTheme.headlineSmall))
                              ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 305.h,
                                  margin: EdgeInsets.only(
                                      left: 24.h, top: 25.v, right: 60.h),
                                  child: Text(
                                      "Choose strategies that help you when you are feeling stressed or anxious. ",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.titleSmall))),
                          CustomDropDown(
                              icon: Container(
                                  margin: EdgeInsets.only(left: 30.h),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgArrowdown)),
                              margin: EdgeInsets.only(
                                  left: 24.h, top: 5.v, right: 24.h),
                              hintText: "Please select all that help",
                              items: dropdownItemList,
                              contentPadding: EdgeInsets.only(
                                  left: 17.h, top: 11.v, bottom: 11.v),
                              onChanged: (value) {}),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 24.h, top: 4.v, right: 24.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.h, vertical: 12.v),
                              decoration: AppDecoration.outlinePrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomCheckboxButton(
                                        text: "Listen to your favorite artist",
                                        value: listenToFavorit,
                                        margin: EdgeInsets.only(
                                            left: 14.h, right: 71.h),
                                        onChange: (value) {
                                          listenToFavorit = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Go for a walk",
                                        value: goForWalk,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 23.v),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        textStyle:
                                            CustomTextStyles.titleMediumPrimary,
                                        onChange: (value) {
                                          goForWalk = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Count to 10 slowly",
                                        value: countToTenSlowl,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 24.v),
                                        onChange: (value) {
                                          countToTenSlowl = value;
                                        }),
                                    Align(
                                        alignment: Alignment.center,
                                        child: CustomCheckboxButton(
                                            alignment: Alignment.center,
                                            text:
                                                "Listen to an audiobook or podcast",
                                            value: listenToAudiobo,
                                            margin: EdgeInsets.only(
                                                left: 14.h,
                                                top: 23.v,
                                                right: 19.h),
                                            onChange: (value) {
                                              listenToAudiobo = value;
                                            })),
                                    CustomCheckboxButton(
                                        text: "Call a friend",
                                        value: callFriend,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 23.v),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        onChange: (value) {
                                          callFriend = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Practice yoga or meditation",
                                        value: practiceYogaOrM,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 24.v, right: 68.h),
                                        onChange: (value) {
                                          practiceYogaOrM = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Doodle, draw, or paint",
                                        value: doodleDrawOrPai,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 23.v),
                                        onChange: (value) {
                                          doodleDrawOrPai = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Put on some music and dance",
                                        value: putOnMusicAndDa,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 23.v, right: 54.h),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        onChange: (value) {
                                          putOnMusicAndDa = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Play with or walk a pet",
                                        value: playWithOrWalkP,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 24.v),
                                        onChange: (value) {
                                          playWithOrWalkP = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Write in a journal",
                                        value: writeInJournal,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 23.v),
                                        onChange: (value) {
                                          writeInJournal = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Play a video game",
                                        value: playVideoGame,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 23.v),
                                        onChange: (value) {
                                          playVideoGame = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Cook or bake",
                                        value: cookOrBake,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 23.v),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 1.v),
                                        onChange: (value) {
                                          cookOrBake = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Make a scrapbook",
                                        value: makeScrapbook,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 24.v),
                                        onChange: (value) {
                                          makeScrapbook = value;
                                        }),
                                    CustomCheckboxButton(
                                        text:
                                            "Make a playlist of your favorite songs",
                                        value: makePlaylistOfF,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 23.v),
                                        onChange: (value) {
                                          makePlaylistOfF = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Do a puzzle",
                                        value: doPuzzle,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 23.v),
                                        onChange: (value) {
                                          doPuzzle = value;
                                        }),
                                    CustomCheckboxButton(
                                        text: "Watch funny videos",
                                        value: watchFunnyVideo,
                                        margin: EdgeInsets.only(
                                            left: 14.h, top: 23.v),
                                        onChange: (value) {
                                          watchFunnyVideo = value;
                                        })
                                  ])),
                          CustomElevatedButton(
                              text: "Save My Strategies",
                              margin: EdgeInsets.only(
                                  left: 23.h, top: 4.v, right: 24.h),
                              onTap: () {
                                onTapSavemy(context);
                              }),
                          CustomOutlinedButton(
                              text: "View My Strategies ",
                              margin: EdgeInsets.only(
                                  left: 27.h, top: 4.v, right: 21.h),
                              onTap: () {
                                onTapViewmy(context);
                              })
                        ])))),
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
  onTapSavemy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }

  /// Navigates to the homeScreenContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the homeScreenContainerScreen.
  onTapViewmy(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
