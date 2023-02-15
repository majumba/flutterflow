import '../backend/backend.dart';
import '../components/template_edit_preview_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'explore_model.dart';
export 'explore_model.dart';

class ExploreWidget extends StatefulWidget {
  const ExploreWidget({Key? key}) : super(key: key);

  @override
  _ExploreWidgetState createState() => _ExploreWidgetState();
}

class _ExploreWidgetState extends State<ExploreWidget> {
  late ExploreModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExploreModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: NestedScrollView(
        headerSliverBuilder: (context, _) => [
          SliverAppBar(
            pinned: true,
            floating: false,
            backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
              child: Text(
                'Explore',
                style: FlutterFlowTheme.of(context).title2,
              ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0,
          )
        ],
        body: Builder(
          builder: (context) {
            return SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Recommended For You',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Urbanist',
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1.384,
                                  ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(1, -1),
                                child: Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: StreamBuilder<List<TemplatesRecord>>(
                          stream: queryTemplatesRecord(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            List<TemplatesRecord> listViewTemplatesRecordList =
                                snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              itemCount: listViewTemplatesRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewTemplatesRecord =
                                    listViewTemplatesRecordList[listViewIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 16, 0),
                                  child: InkWell(
                                    onTap: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: TemplateEditPreviewWidget(),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    },
                                    child: Container(
                                      width: 300,
                                      height: 140,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF5F7FB),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24, 24, 24, 24),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(-1, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 8),
                                                child: Text(
                                                  listViewTemplatesRecord
                                                      .templateName!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        lineHeight: 1.32,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
