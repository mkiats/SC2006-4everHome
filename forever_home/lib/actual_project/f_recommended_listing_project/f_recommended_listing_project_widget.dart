import '/actual_project/g_select_listing_project/g_select_listing_project_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'f_recommended_listing_project_model.dart';
export 'f_recommended_listing_project_model.dart';

class FRecommendedListingProjectWidget extends StatefulWidget {
  const FRecommendedListingProjectWidget({
    Key? key,
    String? listingType,
    this.region,
    double? propertyPrice,
  })  : this.listingType = listingType ?? '4BR',
        this.propertyPrice = propertyPrice ?? 2000000.0,
        super(key: key);

  final String listingType;
  final List<String>? region;
  final double propertyPrice;

  @override
  _FRecommendedListingProjectWidgetState createState() =>
      _FRecommendedListingProjectWidgetState();
}

class _FRecommendedListingProjectWidgetState
    extends State<FRecommendedListingProjectWidget> {
  late FRecommendedListingProjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FRecommendedListingProjectModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.searchListing = false;
      });
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<ListingRecord>>(
      stream: queryListingRecord(
        queryBuilder: (listingRecord) => listingRecord
            .where('listingType', isEqualTo: widget.listingType)
            .whereIn('region', widget.region)
            .where('propertyPrice', isLessThanOrEqualTo: widget.propertyPrice)
            .where('listingAvailble', isEqualTo: true),
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
        List<ListingRecord> fRecommendedListingProjectListingRecordList =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          backgroundColor: FlutterFlowTheme.of(context).gunmetal,
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
                      fontWeight: FontWeight.w500,
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (_model.searchListing ?? true)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: StreamBuilder<List<ListingRecord>>(
                          stream: queryListingRecord(
                            queryBuilder: (listingRecord) =>
                                listingRecord.where('listingLocation.latlong',
                                    isEqualTo: _model
                                        .recommendedListingGoogleMapsCenter
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
                            List<ListingRecord>
                                displayListingListingRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
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
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        child: Image.network(
                                          displayListingListingRecord!
                                              .listingImg!,
                                          width: 120.0,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Text(
                                                displayListingListingRecord
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
                                    Align(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 10.0, 0.0),
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
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).lineGray,
                            ),
                          ),
                          child: FlutterFlowGoogleMap(
                            controller:
                                _model.recommendedListingGoogleMapsController,
                            onCameraIdle: (latLng) => _model
                                .recommendedListingGoogleMapsCenter = latLng,
                            initialLocation:
                                _model.recommendedListingGoogleMapsCenter ??=
                                    fRecommendedListingProjectListingRecordList
                                        .first.listingLocation.latlong!,
                            markers: fRecommendedListingProjectListingRecordList
                                .map((e) => e.listingLocation.latlong)
                                .withoutNulls
                                .toList()
                                .map(
                                  (marker) => FlutterFlowMarker(
                                    marker.serialize(),
                                    marker,
                                    () async {
                                      await _model
                                          .recommendedListingGoogleMapsController
                                          .future
                                          .then(
                                        (c) => c.animateCamera(
                                          CameraUpdate.newLatLng(_model
                                              .recommendedListingGoogleMapsCenter!
                                              .toGoogleMaps()),
                                        ),
                                      );
                                      setState(() {
                                        FFAppState().searchedListing = _model
                                            .recommendedListingGoogleMapsCenter;
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
            ],
          ),
        );
      },
    );
  }
}
