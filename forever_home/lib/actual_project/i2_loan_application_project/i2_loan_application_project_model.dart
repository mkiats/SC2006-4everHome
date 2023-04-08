import '/actual_project/j1_realtor_assistance_project/j1_realtor_assistance_project_widget.dart';
import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
