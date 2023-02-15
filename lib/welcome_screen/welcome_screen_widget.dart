import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'welcome_screen_model.dart';
export 'welcome_screen_model.dart';

class WelcomeScreenWidget extends StatefulWidget {
  const WelcomeScreenWidget({Key? key}) : super(key: key);

  @override
  _WelcomeScreenWidgetState createState() => _WelcomeScreenWidgetState();
}

class _WelcomeScreenWidgetState extends State<WelcomeScreenWidget> {
  late WelcomeScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeScreenModel());
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                  child: Text(
                    'Hello to Tribute 👋',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title3,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 32),
                  child: Text(
                    'Capture your family’s most treasured memories.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Urbanist',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 36),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                        child: FFButtonWidget(
                          onPressed: () async {
                            GoRouter.of(context).prepareAuthEvent();
                            final user = await signInWithGoogle(context);
                            if (user == null) {
                              return;
                            }

                            context.goNamedAuth('account', mounted);
                          },
                          text: 'Continue with Google',
                          icon: FaIcon(
                            FontAwesomeIcons.google,
                          ),
                          options: FFButtonOptions(
                            width: 382,
                            height: 60,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Urbanist',
                                      color: Color(0xFF212121),
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      fontWeight: FontWeight.bold,
                                    ),
                            borderSide: BorderSide(
                              color: Color(0xFFEEEEEE),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed('sign-up');
                          },
                          text: 'Get Started',
                          options: FFButtonOptions(
                            width: 382,
                            height: 58,
                            color: Color(0xFF18223A),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Urbanist',
                                      color: Colors.white,
                                      fontSize: 16,
                                      letterSpacing: 0.2,
                                      fontWeight: FontWeight.bold,
                                    ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('sign-in');
                        },
                        text: 'I Already Have an Account',
                        options: FFButtonOptions(
                          width: 382,
                          height: 58,
                          color: Color(0xFFE8E9EB),
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Urbanist',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                fontSize: 16,
                                letterSpacing: 0.2,
                                fontWeight: FontWeight.bold,
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
