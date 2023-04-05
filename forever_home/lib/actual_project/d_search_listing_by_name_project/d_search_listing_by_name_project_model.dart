import '/actual_project/g_select_listing_project/g_select_listing_project_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class DSearchListingByNameProjectModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  bool? searchListing;

  ///  State fields for stateful widgets in this page.

  // State field(s) for SearchNameTextBox widget.
  TextEditingController? searchNameTextBoxController;
  String? Function(BuildContext, String?)? searchNameTextBoxControllerValidator;
  List<ListingRecord> simpleSearchResults = [];
  // State field(s) for searchListingByNameGoogleMap widget.
  LatLng? searchListingByNameGoogleMapsCenter;
  final searchListingByNameGoogleMapsController =
      Completer<GoogleMapController>();

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    searchNameTextBoxController?.dispose();
  }

  /// Additional helper methods are added here.

}
