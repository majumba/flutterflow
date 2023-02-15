import '../backend/backend.dart';
import '../components/project_edit_preview_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'project_view_model.dart';
export 'project_view_model.dart';

class ProjectViewWidget extends StatefulWidget {
  const ProjectViewWidget({
    Key? key,
    this.projectReceiveProjectView,
  }) : super(key: key);

  final DocumentReference? projectReceiveProjectView;

  @override
  _ProjectViewWidgetState createState() => _ProjectViewWidgetState();
}

class _ProjectViewWidgetState extends State<ProjectViewWidget> {
  late ProjectViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProjectViewModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 44, 0, 0),
      child: StreamBuilder<ProjectsRecord>(
        stream: ProjectsRecord.getDocument(widget.projectReceiveProjectView!),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50,
                height: 50,
                child: CircularProgressIndicator(
                  color: FlutterFlowTheme.of(context).primaryColor,
                ),
              ),
            );
          }
          final checkoutBottomSheet2ProjectsRecord = snapshot.data!;
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x25090F13),
                  offset: Offset(0, 2),
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 60,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4F8),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                          child: FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30,
                            borderWidth: 1,
                            buttonSize: 44,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Color(0xFF57636C),
                              size: 24,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                checkoutBottomSheet2ProjectsRecord.projectName!,
                                style: FlutterFlowTheme.of(context)
                                    .title3
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF14181B),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                child: Text(
                                  '${checkoutBottomSheet2ProjectsRecord.projectPromptObject!.toList().length.toString()} questions',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText2
                                      .override(
                                        fontFamily: 'Urbanist',
                                        color: Color(0xFF57636C),
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 24,
                    thickness: 2,
                    color: Color(0xFFF1F4F8),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: 300,
                        child: custom_widgets.LivePreview(
                          width: double.infinity,
                          height: 300,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0, 0.65),
                      child: Container(
                        width: double.infinity,
                        height: 140,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Builder(
                          builder: (context) {
                            final projectPrompt =
                                checkoutBottomSheet2ProjectsRecord
                                    .projectPromptObject!
                                    .toList();
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              scrollDirection: Axis.horizontal,
                              itemCount: projectPrompt.length,
                              itemBuilder: (context, projectPromptIndex) {
                                final projectPromptItem =
                                    projectPrompt[projectPromptIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 16, 0),
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
                                            child: Text(
                                              projectPromptItem.promptText!,
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: FFButtonWidget(
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: ProjectEditPreviewWidget(),
                                );
                              },
                            ).then((value) => setState(() {}));

                            Navigator.pop(context);
                          },
                          text: 'Edit',
                          options: FFButtonOptions(
                            width: 130,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            textStyle: FlutterFlowTheme.of(context)
                                .subtitle2
                                .override(
                                  fontFamily: 'Urbanist',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                ),
                            borderSide: BorderSide(
                              color: Color(0xFF18223A),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Record',
                            options: FFButtonOptions(
                              width: 130,
                              height: 40,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Urbanist',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Color(0xFF18223A),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
