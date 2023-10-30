import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'calendario_page_widget.dart' show CalendarioPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalendarioPageModel extends FlutterFlowModel<CalendarioPageWidget> {
  ///  Local state fields for this page.

  List<DateTime> listaHoras = [];
  void addToListaHoras(DateTime item) => listaHoras.add(item);
  void removeFromListaHoras(DateTime item) => listaHoras.remove(item);
  void removeAtIndexFromListaHoras(int index) => listaHoras.removeAt(index);
  void insertAtIndexInListaHoras(int index, DateTime item) =>
      listaHoras.insert(index, item);
  void updateListaHorasAtIndex(int index, Function(DateTime) updateFn) =>
      listaHoras[index] = updateFn(listaHoras[index]);

  DateTime? iData;

  int? contador;

  DateTime? dataSelecionada;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
