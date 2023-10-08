import 'package:flutter/material.dart';
import 'package:test_app/core/app_export.dart';
import 'package:test_app/widgets/custom_elevated_button.dart';
import 'package:test_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class DocumentAbuseAddSupportingEvidenceOnePage extends StatefulWidget {
  const DocumentAbuseAddSupportingEvidenceOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  DocumentAbuseAddSupportingEvidenceOnePageState createState() =>
      DocumentAbuseAddSupportingEvidenceOnePageState();
}

class DocumentAbuseAddSupportingEvidenceOnePageState
    extends State<DocumentAbuseAddSupportingEvidenceOnePage>
    with
        AutomaticKeepAliveClientMixin<
            DocumentAbuseAddSupportingEvidenceOnePage> {
  TextEditingController descriptionpromController = TextEditingController();

  TextEditingController conditiononeController = TextEditingController();

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray20001,
        resizeToAvoidBottomInset: false,
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
                                  imagePath: ImageConstant.imgPexelskarolina,
                                  height: 171.v,
                                  width: 137.h,
                                  radius: BorderRadius.circular(
                                    8.h,
                                  ),
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
                        SizedBox(height: 21.v),
                        Text(
                          "Provide description (optional)",
                          style:
                              CustomTextStyles.titleMediumOnPrimaryContainer_1,
                        ),
                        CustomTextFormField(
                          controller: descriptionpromController,
                          margin: EdgeInsets.only(
                            top: 9.v,
                            right: 24.h,
                          ),
                          hintText: "Please add a description",
                          maxLines: 3,
                        ),
                        SizedBox(height: 21.v),
                        Text(
                          "Provide injury details (if applicable)",
                          style:
                              CustomTextStyles.titleMediumOnPrimaryContainer_1,
                        ),
                        CustomTextFormField(
                          controller: conditiononeController,
                          margin: EdgeInsets.only(
                            top: 9.v,
                            right: 24.h,
                          ),
                          hintText: "Bruising, cuts, etc.",
                          textInputAction: TextInputAction.done,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 27.v,
                          ),
                        ),
                        CustomElevatedButton(
                          text: "Done",
                          margin: EdgeInsets.only(
                            top: 32.v,
                            right: 24.h,
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
