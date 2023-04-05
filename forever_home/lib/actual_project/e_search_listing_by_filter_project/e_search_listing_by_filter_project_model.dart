import '/actual_project/f_recommended_listing_project/f_recommended_listing_project_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ESearchListingByFilterProjectModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool regionSelected = true;

  ///  State fields for stateful widgets in this page.

  // State field(s) for RegionCheckboxGroup widget.
  List<String>? regionCheckboxGroupValues;
  FormFieldController<List<String>>? regionCheckboxGroupController;
  // State field(s) for ListingTypeDropdown widget.
  String? listingTypeDropdownValue;
  FormFieldController<String>? listingTypeDropdownController;
  // State field(s) for MaxPriceSlider widget.
  double? maxPriceSliderValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
