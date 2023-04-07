import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

class K2IdAppProjectModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool idFullList = true;

  String? selectedIDAgent;

  bool confirmInteriorDesigner = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchField widget.
  TextEditingController? searchFieldController;
  String? Function(BuildContext, String?)? searchFieldControllerValidator;
  List<InteriorDesignerRecord> simpleSearchResults = [];
  // Stores action output result for [Bottom Sheet - IDcard] action in ID widget.
  InteriorDesignerRecord? interiorDesignerSelectedID;
  // Stores action output result for [Bottom Sheet - IDcard] action in ID widget.
  InteriorDesignerRecord? interiorDesignerSelectedIDCopy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    searchFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
