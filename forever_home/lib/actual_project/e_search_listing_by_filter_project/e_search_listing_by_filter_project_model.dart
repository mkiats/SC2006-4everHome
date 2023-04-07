import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';

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
