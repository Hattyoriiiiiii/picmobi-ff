import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_confirm_page_model.dart';
export 'add_confirm_page_model.dart';

class AddConfirmPageWidget extends StatefulWidget {
  const AddConfirmPageWidget({Key? key}) : super(key: key);

  @override
  _AddConfirmPageWidgetState createState() => _AddConfirmPageWidgetState();
}

class _AddConfirmPageWidgetState extends State<AddConfirmPageWidget> {
  late AddConfirmPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddConfirmPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primary,
        automaticallyImplyLeading: false,
        title: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            'Registered!',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: StreamBuilder<List<ShoppingcartRecord>>(
            stream: queryShoppingcartRecord(
              queryBuilder: (shoppingcartRecord) =>
                  shoppingcartRecord.orderBy('created_at', descending: true),
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
              List<ShoppingcartRecord> columnShoppingcartRecordList =
                  snapshot.data!;
              final columnShoppingcartRecord =
                  columnShoppingcartRecordList.isNotEmpty
                      ? columnShoppingcartRecordList.first
                      : null;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Image.network(
                        FFAppState().camerastate,
                        width: double.infinity,
                        height: 300.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              60.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Product:',
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            FFAppState().buyname,
                            'Recognizing...',
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Number:',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Text(
                        FFAppState().buycount.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Shopname:',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                      Text(
                        FFAppState().buyplace,
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final shoppingcartCreateData =
                            createShoppingcartRecordData(
                          name: FFAppState().buyname,
                          amount: FFAppState().buycount,
                          shopname: FFAppState().buyplace,
                          camera: FFAppState().camerastate,
                          createdAt: getCurrentTimestamp,
                          createdBy: currentUserReference,
                          price: '値段確認中',
                        );
                        await ShoppingcartRecord.collection
                            .doc()
                            .set(shoppingcartCreateData);

                        context.pushNamed('HomePage');
                      },
                      text: 'Continue your shopping',
                      options: FFButtonOptions(
                        width: 350.0,
                        height: 100.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontSize: 24.0,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      final shoppingcartCreateData =
                          createShoppingcartRecordData(
                        name: FFAppState().buyname,
                        amount: FFAppState().buycount,
                        shopname: FFAppState().buyplace,
                        camera: FFAppState().camerastate,
                        createdAt: getCurrentTimestamp,
                        createdBy: currentUserReference,
                        price: '値段確認中',
                      );
                      await ShoppingcartRecord.collection
                          .doc()
                          .set(shoppingcartCreateData);

                      context.pushNamed('Shopcartnew');
                    },
                    text: 'Go to shopping cart',
                    options: FFButtonOptions(
                      width: 350.0,
                      height: 100.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFEF393C),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontSize: 24.0,
                              ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
