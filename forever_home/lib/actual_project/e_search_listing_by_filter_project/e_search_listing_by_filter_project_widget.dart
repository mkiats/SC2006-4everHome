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
import 'e_search_listing_by_filter_project_model.dart';
export 'e_search_listing_by_filter_project_model.dart';

class ESearchListingByFilterProjectWidget extends StatefulWidget {
  const ESearchListingByFilterProjectWidget({Key? key}) : super(key: key);

  @override
  _ESearchListingByFilterProjectWidgetState createState() =>
      _ESearchListingByFilterProjectWidgetState();
}

class _ESearchListingByFilterProjectWidgetState
    extends State<ESearchListingByFilterProjectWidget> {
  late ESearchListingByFilterProjectModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ESearchListingByFilterProjectModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.regionSelected = false;
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.93,
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 10.0),
                      child: Container(
                        width: double.infinity,
                        height: 215.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                              spreadRadius: 2.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).tertiary,
                            width: 2.5,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'Region:',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .dark600,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                            ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                StreamBuilder<List<ListingRecord>>(
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
                                        regionCheckboxGroupListingRecordList =
                                        snapshot.data!;
                                    return FlutterFlowCheckboxGroup(
                                      options: functions
                                          .uniqueStr(
                                              regionCheckboxGroupListingRecordList
                                                  .map((e) => e.region)
                                                  .withoutNulls
                                                  .toList())
                                          .toList(),
                                      onChanged: (val) async {
                                        setState(() => _model
                                            .regionCheckboxGroupValues = val);
                                        if (_model.regionCheckboxGroupValues
                                                ?.length ==
                                            0) {
                                          setState(() {
                                            _model.regionSelected = false;
                                          });
                                        } else {
                                          setState(() {
                                            _model.regionSelected = true;
                                          });
                                        }
                                      },
                                      controller: _model
                                              .regionCheckboxGroupController ??=
                                          FormFieldController<List<String>>(
                                        functions.uniqueStr(
                                            regionCheckboxGroupListingRecordList
                                                .map((e) => e.region)
                                                .withoutNulls
                                                .toList()),
                                      ),
                                      activeColor:
                                          FlutterFlowTheme.of(context).cultured,
                                      checkColor: Colors.white,
                                      checkboxBorderColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      initialized:
                                          _model.regionCheckboxGroupValues !=
                                              null,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                              spreadRadius: 2.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).tertiary,
                            width: 2.5,
                          ),
                        ),
                        child: StreamBuilder<List<ListingRecord>>(
                          stream: queryListingRecord(),
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
                                listingTypeDropdownListingRecordList =
                                snapshot.data!;
                            return FlutterFlowDropDown<String>(
                              controller:
                                  _model.listingTypeDropdownController ??=
                                      FormFieldController<String>(null),
                              options: functions
                                  .uniqueStr(
                                      listingTypeDropdownListingRecordList
                                          .map((e) => e.listingType)
                                          .withoutNulls
                                          .toList())
                                  .toList(),
                              onChanged: (val) => setState(
                                  () => _model.listingTypeDropdownValue = val),
                              width: 180.0,
                              height: 50.0,
                              searchHintTextStyle: GoogleFonts.getFont(
                                'Urbanist',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Urbanist',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                              hintText: 'Please select listing type...',
                              searchHintText: '',
                              fillColor: FlutterFlowTheme.of(context).primary,
                              elevation: 2.0,
                              borderColor:
                                  FlutterFlowTheme.of(context).tertiary,
                              borderWidth: 0.0,
                              borderRadius: 20.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              hidesUnderline: true,
                              isSearchable: false,
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 10.0),
                      child: Container(
                        width: double.infinity,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                              spreadRadius: 2.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).tertiary,
                            width: 2.0,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Text(
                                    'MaxPrice (\$SGD)',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Urbanist',
                                          color: FlutterFlowTheme.of(context)
                                              .dark600,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: Slider(
                                      activeColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      inactiveColor:
                                          FlutterFlowTheme.of(context).grayIcon,
                                      min: 500000.0,
                                      max: 2000000.0,
                                      value: _model.maxPriceSliderValue ??=
                                          2000000.0,
                                      label:
                                          _model.maxPriceSliderValue.toString(),
                                      divisions: 150,
                                      onChanged: (newValue) {
                                        newValue = double.parse(
                                            newValue.toStringAsFixed(0));
                                        setState(() => _model
                                            .maxPriceSliderValue = newValue);
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          60.0, 20.0, 60.0, 20.0),
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(0.0, 2.0),
                              spreadRadius: 1.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                        ),
                        child: FFButtonWidget(
                          onPressed: () async {
                            if (_model.regionSelected) {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      FRecommendedListingProjectWidget(
                                    region: _model.regionCheckboxGroupValues
                                        ?.toList(),
                                    propertyPrice: _model.maxPriceSliderValue,
                                    listingType:
                                        _model.listingTypeDropdownValue,
                                  ),
                                ),
                              );
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('No Region Selected'),
                                    content: Text(
                                        'Please select one or more regions....'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Ok'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          text: 'Filter Listing',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).cultured,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Urbanist',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                ),
                            elevation: 2.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).tertiary,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
