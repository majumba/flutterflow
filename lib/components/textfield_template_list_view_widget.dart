import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'textfield_template_list_view_model.dart';
export 'textfield_template_list_view_model.dart';

class TextfieldTemplateListViewWidget extends StatefulWidget {
  const TextfieldTemplateListViewWidget({
    Key? key,
    this.promptEditPath,
  }) : super(key: key);

  final String? promptEditPath;

  @override
  _TextfieldTemplateListViewWidgetState createState() =>
      _TextfieldTemplateListViewWidgetState();
}

class _TextfieldTemplateListViewWidgetState
    extends State<TextfieldTemplateListViewWidget> {
  late TextfieldTemplateListViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TextfieldTemplateListViewModel());

    _model.textController = TextEditingController(text: widget.promptEditPath);
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFFF5F7FB),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          controller: _model.textController,
          onFieldSubmitted: (_) async {
            setState(() {
              _model.projectPromptPreview = _model.projectPreview;
            });
          },
          obscureText: false,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
            contentPadding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 24),
          ),
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Urbanist',
                letterSpacing: 0.2,
                fontWeight: FontWeight.bold,
                lineHeight: 1.6,
              ),
          maxLines: 4,
          minLines: 1,
          validator: _model.textControllerValidator.asValidator(context),
        ),
      ),
    );
  }
}
