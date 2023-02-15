import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/project_view_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'my_projects_model.dart';
export 'my_projects_model.dart';

class MyProjectsWidget extends StatefulWidget {
  const MyProjectsWidget({Key? key}) : super(key: key);

  @override
  _MyProjectsWidgetState createState() => _MyProjectsWidgetState();
}

class _MyProjectsWidgetState extends State<MyProjectsWidget> {
  late MyProjectsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyProjectsModel());
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: Color(0xFF18223A),
        elevation: 8,
        child: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.add,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed('explore');
          },
        ),
      ),
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
                'My Projects',
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: PagedListView<DocumentSnapshot<Object?>?,
                              ProjectsRecord>(
                            pagingController: () {
                              final Query<Object?> Function(Query<Object?>)
                                  queryBuilder = (projectsRecord) =>
                                      projectsRecord.where('createdBy',
                                          isEqualTo: currentUserReference);
                              if (_model.pagingController != null) {
                                final query =
                                    queryBuilder(ProjectsRecord.collection);
                                if (query != _model.pagingQuery) {
                                  // The query has changed
                                  _model.pagingQuery = query;
                                  _model.streamSubscriptions
                                      .forEach((s) => s?.cancel());
                                  _model.streamSubscriptions.clear();
                                  _model.pagingController!.refresh();
                                }
                                return _model.pagingController!;
                              }

                              _model.pagingController =
                                  PagingController(firstPageKey: null);
                              _model.pagingQuery =
                                  queryBuilder(ProjectsRecord.collection);
                              _model.pagingController!
                                  .addPageRequestListener((nextPageMarker) {
                                queryProjectsRecordPage(
                                  queryBuilder: (projectsRecord) =>
                                      projectsRecord.where('createdBy',
                                          isEqualTo: currentUserReference),
                                  nextPageMarker: nextPageMarker,
                                  pageSize: 25,
                                  isStream: true,
                                ).then((page) {
                                  _model.pagingController!.appendPage(
                                    page.data,
                                    page.nextPageMarker,
                                  );
                                  final streamSubscription =
                                      page.dataStream?.listen((data) {
                                    data.forEach((item) {
                                      final itemIndexes = _model
                                          .pagingController!.itemList!
                                          .asMap()
                                          .map((k, v) =>
                                              MapEntry(v.reference.id, k));
                                      final index =
                                          itemIndexes[item.reference.id];
                                      final items =
                                          _model.pagingController!.itemList!;
                                      if (index != null) {
                                        items.replaceRange(
                                            index, index + 1, [item]);
                                        _model.pagingController!.itemList = {
                                          for (var item in items)
                                            item.reference: item
                                        }.values.toList();
                                      }
                                    });
                                    setState(() {});
                                  });
                                  _model.streamSubscriptions
                                      .add(streamSubscription);
                                });
                              });
                              return _model.pagingController!;
                            }(),
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            builderDelegate:
                                PagedChildBuilderDelegate<ProjectsRecord>(
                              // Customize what your widget looks like when it's loading the first page.
                              firstPageProgressIndicatorBuilder: (_) => Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              ),

                              itemBuilder: (context, _, listViewIndex) {
                                final listViewProjectsRecord = _model
                                    .pagingController!.itemList![listViewIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 3),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 0, 0, 24),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 20),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  listViewProjectsRecord
                                                      .projectName!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Urbanist',
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        lineHeight: 1.384,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 12, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      await listViewProjectsRecord
                                                          .reference
                                                          .delete();
                                                    },
                                                    child: Icon(
                                                      Icons.delete_outline,
                                                      color: Colors.black,
                                                      size: 24,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 16, 0),
                                                child: CircularPercentIndicator(
                                                  percent: 0.5,
                                                  radius: 30,
                                                  lineWidth: 12,
                                                  animation: true,
                                                  progressColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryColor,
                                                  backgroundColor:
                                                      Color(0xFFF1F4F8),
                                                  center: Text(
                                                    '10%',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Urbanist',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                          fontSize: 14,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: InkWell(
                                                  onTap: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      context: context,
                                                      builder: (context) {
                                                        return Padding(
                                                          padding:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .viewInsets,
                                                          child:
                                                              ProjectViewWidget(
                                                            projectReceiveProjectView:
                                                                listViewProjectsRecord
                                                                    .reference,
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: Container(
                                                    width: double.infinity,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final projectPromptObject =
                                                            listViewProjectsRecord
                                                                .projectPromptObject!
                                                                .toList();
                                                        return ListView.builder(
                                                          padding:
                                                              EdgeInsets.zero,
                                                          shrinkWrap: true,
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemCount:
                                                              projectPromptObject
                                                                  .length,
                                                          itemBuilder: (context,
                                                              projectPromptObjectIndex) {
                                                            final projectPromptObjectItem =
                                                                projectPromptObject[
                                                                    projectPromptObjectIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          16,
                                                                          0),
                                                              child: Container(
                                                                width: 183,
                                                                height: 100,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFF5F7FB),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24,
                                                                          24,
                                                                          24,
                                                                          24),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          projectPromptObjectItem
                                                                              .promptText!,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText1
                                                                              .override(
                                                                                fontFamily: 'Urbanist',
                                                                                fontSize: 14,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
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
        ),
      ),
    );
  }
}
