import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class H31CalculateLoanProjectModel extends FlutterFlowModel {
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
