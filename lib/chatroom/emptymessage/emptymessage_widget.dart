import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'emptymessage_model.dart';
export 'emptymessage_model.dart';

class EmptymessageWidget extends StatefulWidget {
  const EmptymessageWidget({Key? key}) : super(key: key);

  @override
  _EmptymessageWidgetState createState() => _EmptymessageWidgetState();
}

class _EmptymessageWidgetState extends State<EmptymessageWidget> {
  late EmptymessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptymessageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300.0,
          height: 200.0,
          child: Stack(
            children: [
              Lottie.network(
                'https://lottie.host/e6072113-4595-485e-96a4-7cd8fbcfbbb5/YYNdmRtyEK.json',
                width: 300.0,
                height: 200.0,
                fit: BoxFit.cover,
                animate: true,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'هنوز پیامی برای ایشون ارسال نکردی...',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'vazir',
                      color: FlutterFlowTheme.of(context).error,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'گویا پیامی به این شخص هنوز ارسال نکردی و گفتگویی بین شما وجود نداره، اگر بخوای میتونی توی کادر پایین اولین پیامت رو بنویسی و براش ارسال کنی!',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'vazir',
                        color: Color(0xD0000000),
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
