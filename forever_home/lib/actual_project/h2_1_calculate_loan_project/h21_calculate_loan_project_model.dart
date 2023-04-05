import '/actual_project/h2_2_loan_estimate_project/h22_loan_estimate_project_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class H21CalculateLoanProjectModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageH2_1-userDownPaymentInput widget.
  TextEditingController? pageH21UserDownPaymentInputController;
  String? Function(BuildContext, String?)?
      pageH21UserDownPaymentInputControllerValidator;
  // State field(s) for PageH2_1-userInterestInput widget.
  TextEditingController? pageH21UserInterestInputController;
  String? Function(BuildContext, String?)?
      pageH21UserInterestInputControllerValidator;
  // State field(s) for PageH2_1-userTenureInput widget.
  TextEditingController? pageH21UserTenureInputController;
  String? Function(BuildContext, String?)?
      pageH21UserTenureInputControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    pageH21UserDownPaymentInputController?.dispose();
    pageH21UserInterestInputController?.dispose();
    pageH21UserTenureInputController?.dispose();
  }

  /// Additional helper methods are added here.

}
