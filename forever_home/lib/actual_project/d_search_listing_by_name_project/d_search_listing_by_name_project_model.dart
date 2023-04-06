import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

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
