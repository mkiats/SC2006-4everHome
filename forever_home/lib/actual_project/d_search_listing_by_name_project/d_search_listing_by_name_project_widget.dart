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
import 'd_search_listing_by_name_project_model.dart';
export 'd_search_listing_by_name_project_model.dart';

class DSearchListingByNameProjectWidget extends StatefulWidget {
  const DSearchListingByNameProjectWidget({Key? key}) : super(key: key);

  @override
  _DSearchListingByNameProjectWidgetState createState() =>
      _DSearchListingByNameProjectWidgetState();
}

class _DSearchListingByNameProjectWidgetState
    extends State<DSearchListingByNameProjectWidget> {
  late DSearchListingByNameProjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DSearchListingByNameProjectModel());

    _model.searchNameTextBoxController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primary,
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(MediaQuery.of(context).size.height * 0.07),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Find your 4everhome',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Urbanist',
                  color: Color(0xFF0A0000),
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.93,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
            ),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(30.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).lineGray,
                          ),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    4.0, 0.0, 4.0, 0.0),
                                child: TextFormField(
                                  controller:
                                      _model.searchNameTextBoxController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Address, city, state...',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    filled: true,
                                    fillColor:
                                        FlutterFlowTheme.of(context).secondary,
                                    prefixIcon: Icon(
                                      Icons.search_sharp,
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                  validator: _model
                                      .searchNameTextBoxControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 8.0, 0.0),
                              child: StreamBuilder<List<ListingRecord>>(
                                stream: queryListingRecord(
                                  queryBuilder: (listingRecord) =>
                                      listingRecord.where('listingAvailble',
                                          isEqualTo: true),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                    );
                                  }
                                  List<ListingRecord>
                                      searchListingByNameButtonListingRecordList =
                                      snapshot.data!;
                                  return FFButtonWidget(
                                    onPressed: () async {
                                      setState(() {
                                        _model.simpleSearchResults = TextSearch(
                                          searchListingByNameButtonListingRecordList
                                              .map(
                                                (record) => TextSearchItem(
                                                    record, [
                                                  record.region!,
                                                  record.listingName!
                                                ]),
                                              )
                                              .toList(),
                                        )
                                            .search(_model
                                                .searchNameTextBoxController
                                                .text)
                                            .map((r) => r.object)
                                            .take(10)
                                            .toList();
                                      });
                                      setState(() {
                                        _model.searchListing = false;
                                      });
                                    },
                                    text: 'Search',
                                    options: FFButtonOptions(
                                      width: 100.0,
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).cultured,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (valueOrDefault<bool>(
                    _model.searchListing,
                    false,
                  ))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                      child: StreamBuilder<List<ListingRecord>>(
                        stream: queryListingRecord(
                          queryBuilder: (listingRecord) => listingRecord.where(
                              'listingLocation.latlong',
                              isEqualTo: _model
                                  .searchListingByNameGoogleMapsCenter
                                  ?.toGeoPoint()),
                          singleRecord: true,
                        ),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            );
                          }
                          List<ListingRecord> displayListingListingRecordList =
                              snapshot.data!;
                          final displayListingListingRecord =
                              displayListingListingRecordList.isNotEmpty
                                  ? displayListingListingRecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.18,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(0.0, 2.0),
                                  spreadRadius: 1.0,
                                )
                              ],
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).lineGray,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image.network(
                                        displayListingListingRecord!
                                            .listingImg!,
                                        width: 120.0,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.15,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Text(
                                                displayListingListingRecord!
                                                    .listingName!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontSize: 16.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child: Text(
                                                displayListingListingRecord!
                                                    .region!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontSize: 16.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    GSelectListingProjectWidget(
                                                  latlongToDisplay:
                                                      displayListingListingRecord!
                                                          .listingLocation
                                                          .latlong,
                                                ),
                                              ),
                                            );
                                          },
                                          text: '+',
                                          options: FFButtonOptions(
                                            width: 40.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .cultured,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Urbanist',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                    ),
                                            elevation: 2.0,
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.75,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).lineGray,
                          ),
                        ),
                        child: FlutterFlowGoogleMap(
                          controller:
                              _model.searchListingByNameGoogleMapsController,
                          onCameraIdle: (latLng) => _model
                              .searchListingByNameGoogleMapsCenter = latLng,
                          initialLocation:
                              _model.searchListingByNameGoogleMapsCenter ??=
                                  FFAppState().searchedListing!,
                          markers: _model.simpleSearchResults
                              .map((e) => e.listingLocation.latlong)
                              .withoutNulls
                              .toList()
                              .map(
                                (marker) => FlutterFlowMarker(
                                  marker.serialize(),
                                  marker,
                                  () async {
                                    await _model
                                        .searchListingByNameGoogleMapsController
                                        .future
                                        .then(
                                      (c) => c.animateCamera(
                                        CameraUpdate.newLatLng(_model
                                            .searchListingByNameGoogleMapsCenter!
                                            .toGoogleMaps()),
                                      ),
                                    );
                                    setState(() {
                                      FFAppState().searchedListing = _model
                                          .searchListingByNameGoogleMapsCenter;
                                    });
                                    setState(() {
                                      _model.searchListing = true;
                                    });
                                  },
                                ),
                              )
                              .toList(),
                          markerColor: GoogleMarkerColor.violet,
                          mapType: MapType.normal,
                          style: GoogleMapStyle.standard,
                          initialZoom: 11.0,
                          allowInteraction: true,
                          allowZoom: true,
                          showZoomControls: true,
                          showLocation: false,
                          showCompass: false,
                          showMapToolbar: false,
                          showTraffic: false,
                          centerMapOnMarkerTap: true,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
