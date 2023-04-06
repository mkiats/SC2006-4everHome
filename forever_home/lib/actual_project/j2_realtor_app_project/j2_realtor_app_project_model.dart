import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class J2RealtorAppProjectModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String? selectedRealtorAgent;

  bool realtorFullList = true;

  bool confirmRealtorAgent = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchField widget.
  TextEditingController? searchFieldController;
  String? Function(BuildContext, String?)? searchFieldControllerValidator;
  List<RealtorAgentRecord> simpleSearchResults1 = [];
  List<RealtorAgentRecord> simpleSearchResults2 = [];
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
