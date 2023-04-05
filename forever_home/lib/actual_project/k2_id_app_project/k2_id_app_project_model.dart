import '/actual_project/l_summary_project/l_summary_project_widget.dart';
import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/i_dcard/i_dcard_widget.dart';
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

class K2IdAppProjectModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool idFullList = true;

  String? selectedIDAgent;

  bool confirmInteriorDesigner = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchField widget.
  TextEditingController? searchFieldController;
  String? Function(BuildContext, String?)? searchFieldControllerValidator;
  List<InteriorDesignerRecord> simpleSearchResults1 = [];
  List<InteriorDesignerRecord> simpleSearchResults2 = [];
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
