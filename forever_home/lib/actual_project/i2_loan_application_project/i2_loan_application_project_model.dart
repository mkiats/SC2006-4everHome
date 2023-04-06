import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';

class I2LoanApplicationProjectModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  LoanStruct? loan;

  String? loanAgentID;

  ///  State fields for stateful widgets in this page.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonController;
  // State field(s) for LoanAmount widget.
  TextEditingController? loanAmountController;
  String? Function(BuildContext, String?)? loanAmountControllerValidator;
  // State field(s) for MortgageTerm widget.
  TextEditingController? mortgageTermController;
  String? Function(BuildContext, String?)? mortgageTermControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in ConfirmButton widget.
  LoanRecord? loanOutput;
  // Stores action output result for [Backend Call - Create Document] action in ConfirmButton widget.
  LoanApplicationRecord? loanApplicationOutput;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    loanAmountController?.dispose();
    mortgageTermController?.dispose();
  }

  /// Additional helper methods are added here.

  String? get radioButtonValue => radioButtonController?.value;
}
