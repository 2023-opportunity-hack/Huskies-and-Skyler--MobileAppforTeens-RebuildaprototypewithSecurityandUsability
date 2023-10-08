import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/presentation/document_abuse_add_supporting_evidence_one_page/document_abuse_add_supporting_evidence_one_page.dart';

class DocumentAbuseAddSupportingEvidenceTabContainerScreen
    extends StatefulWidget {
  const DocumentAbuseAddSupportingEvidenceTabContainerScreen({Key? key})
      : super(key: key);

  @override
  DocumentAbuseAddSupportingEvidenceTabContainerScreenState createState() =>
      DocumentAbuseAddSupportingEvidenceTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class DocumentAbuseAddSupportingEvidenceTabContainerScreenState
    extends State<DocumentAbuseAddSupportingEvidenceTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray20001,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: 47.v,
                          width: double.maxFinite,
                          decoration:
                              BoxDecoration(color: appTheme.gray20001))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 7.h, vertical: 11.v),
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
                                    left: 58.h, top: 7.v, bottom: 3.v),
                                child: Text("Add supporting evidence",
                                    style: CustomTextStyles
                                        .titleMediumOnPrimaryContainer))
                          ]))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 25.v),
                          child: Text("Add audio or video evidence",
                              style: CustomTextStyles
                                  .titleSmallOnPrimaryContainer))),
                  SizedBox(height: 12.v),
                  Container(
                      height: 48.v,
                      width: 342.h,
                      decoration: BoxDecoration(
                          color: appTheme.whiteA700,
                          borderRadius: BorderRadius.circular(24.h),
                          border:
                              Border.all(color: appTheme.gray300, width: 1.h),
                          boxShadow: [
                            BoxShadow(
                                color: theme.colorScheme.onErrorContainer,
                                spreadRadius: 2.h,
                                blurRadius: 2.h,
                                offset: Offset(0, 2))
                          ]),
                      child: TabBar(
                          controller: tabviewController,
                          labelPadding: EdgeInsets.zero,
                          labelColor: appTheme.whiteA700,
                          labelStyle: TextStyle(
                              fontSize: 14.fSize,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600),
                          unselectedLabelColor:
                              theme.colorScheme.errorContainer,
                          unselectedLabelStyle: TextStyle(
                              fontSize: 14.fSize,
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600),
                          indicatorPadding: EdgeInsets.all(4.0.h),
                          indicator: BoxDecoration(
                              color: theme.colorScheme.primary,
                              borderRadius: BorderRadius.circular(20.h)),
                          tabs: [
                            Tab(child: Text("Images")),
                            Tab(child: Text("Video")),
                            Tab(child: Text("Audio"))
                          ])),
                  SizedBox(
                      height: 639.v,
                      child:
                          TabBarView(controller: tabviewController, children: [
                        DocumentAbuseAddSupportingEvidenceOnePage(),
                        DocumentAbuseAddSupportingEvidenceOnePage(),
                        DocumentAbuseAddSupportingEvidenceOnePage()
                      ]))
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
