import '/actual_project/k1_id_assistance_project/k1_id_assistance_project_widget.dart';
import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/realtor_card/realtor_card_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class J2RealtorAppProjectModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? selectedRealtorAgent;

  bool realtorFullList = true;

  bool confirmRealtorAgent = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchField widget.
  TextEditingController? searchFieldController;
  String? Function(BuildContext, String?)? searchFieldControllerValidator;
  List<RealtorAgentRecord> simpleSearchResults = [];
  // Stores action output result for [Bottom Sheet - realtorCard] action in Realtor widget.
  RealtorAgentRecord? realtorSelectedID;
  // Stores action output result for [Bottom Sheet - realtorCard] action in Realtor widget.
  RealtorAgentRecord? realtorSelectedIDCopy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    searchFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
