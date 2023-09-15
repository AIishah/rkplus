import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'aimine_model.dart';
export 'aimine_model.dart';

class AimineWidget extends StatefulWidget {
  const AimineWidget({Key? key}) : super(key: key);

  @override
  _AimineWidgetState createState() => _AimineWidgetState();
}

class _AimineWidgetState extends State<AimineWidget> {
  late AimineModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AimineModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: false,
              floating: false,
              backgroundColor: Color(0xFF454654),
              automaticallyImplyLeading: false,
              leading: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  fillColor: Color(0x001A1F24),
                  icon: Icon(
                    Icons.chevron_left_outlined,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('homePage1');
                  },
                ),
              ),
              title: Text(
                'هوش مصنوعی رنگین کمان',
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'iranyekan',
                      fontSize: 20.0,
                      fontWeight: FontWeight.w900,
                      useGoogleFonts: false,
                    ),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: FlutterFlowWebView(
                  content: 'https://rkmahd.com/artificialintelligence',
                  bypass: false,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.95,
                  verticalScroll: true,
                  horizontalScroll: false,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
