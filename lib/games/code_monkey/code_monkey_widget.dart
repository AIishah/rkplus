import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'code_monkey_model.dart';
export 'code_monkey_model.dart';

class CodeMonkeyWidget extends StatefulWidget {
  const CodeMonkeyWidget({Key? key}) : super(key: key);

  @override
  _CodeMonkeyWidgetState createState() => _CodeMonkeyWidgetState();
}

class _CodeMonkeyWidgetState extends State<CodeMonkeyWidget> {
  late CodeMonkeyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodeMonkeyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: FlutterFlowWebView(
        content: 'https://plays.org/game/code-monkey/',
        bypass: true,
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        verticalScroll: false,
        horizontalScroll: false,
      ),
    );
  }
}
