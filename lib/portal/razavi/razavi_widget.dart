import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'razavi_model.dart';
export 'razavi_model.dart';

class RazaviWidget extends StatefulWidget {
  const RazaviWidget({Key? key}) : super(key: key);

  @override
  _RazaviWidgetState createState() => _RazaviWidgetState();
}

class _RazaviWidgetState extends State<RazaviWidget> {
  late RazaviModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RazaviModel());
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
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).grayLight,
            size: 32.0,
          ),
        ),
        title: Text(
          'پخش زنده مشهد الرضا',
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: 'iranyekan',
                fontWeight: FontWeight.w900,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: FlutterFlowWebView(
        content: 'https://vid.rkmahd.com/samen',
        bypass: true,
        width: MediaQuery.sizeOf(context).width * 1.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        verticalScroll: true,
        horizontalScroll: false,
      ),
    );
  }
}
