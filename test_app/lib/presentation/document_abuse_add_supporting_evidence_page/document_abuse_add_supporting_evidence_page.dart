import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class DocumentAbuseAddSupportingEvidencePage extends StatefulWidget {
  const DocumentAbuseAddSupportingEvidencePage({Key? key})
      : super(
          key: key,
        );

  @override
  DocumentAbuseAddSupportingEvidencePageState createState() =>
      DocumentAbuseAddSupportingEvidencePageState();
}

class DocumentAbuseAddSupportingEvidencePageState
    extends State<DocumentAbuseAddSupportingEvidencePage>
    with AutomaticKeepAliveClientMixin<DocumentAbuseAddSupportingEvidencePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray20001,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 29.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Images",
                          style:
                              CustomTextStyles.titleMediumOnPrimaryContainer_1,
                        ),
                        SizedBox(height: 9.v),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: IntrinsicWidth(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgGroup102,
                                  height: 102.v,
                                  width: 72.h,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgGroup102,
                                  height: 102.v,
                                  width: 72.h,
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgGroup102,
                                  height: 102.v,
                                  width: 72.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomElevatedButton(
                          text: "Add supporting evidence",
                          margin: EdgeInsets.only(
                            top: 60.v,
                            right: 24.h,
                          ),
                          rightIcon: Container(
                            margin: EdgeInsets.only(left: 10.h),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgPlus,
                            ),
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
    );
  }
}
