// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductHeaderStruct extends BaseStruct {
  ProductHeaderStruct({
    String? dplProductName,
    String? colorCode,
    String? tdsFile,
    String? msdsFile,
  })  : _dplProductName = dplProductName,
        _colorCode = colorCode,
        _tdsFile = tdsFile,
        _msdsFile = msdsFile;

  // "DPL_PRODUCT_NAME" field.
  String? _dplProductName;
  String get dplProductName => _dplProductName ?? '';
  set dplProductName(String? val) => _dplProductName = val;

  bool hasDplProductName() => _dplProductName != null;

  // "COLOR_CODE" field.
  String? _colorCode;
  String get colorCode => _colorCode ?? '';
  set colorCode(String? val) => _colorCode = val;

  bool hasColorCode() => _colorCode != null;

  // "TDS_FILE" field.
  String? _tdsFile;
  String get tdsFile => _tdsFile ?? '';
  set tdsFile(String? val) => _tdsFile = val;

  bool hasTdsFile() => _tdsFile != null;

  // "MSDS_FILE" field.
  String? _msdsFile;
  String get msdsFile => _msdsFile ?? '';
  set msdsFile(String? val) => _msdsFile = val;

  bool hasMsdsFile() => _msdsFile != null;

  static ProductHeaderStruct fromMap(Map<String, dynamic> data) =>
      ProductHeaderStruct(
        dplProductName: data['DPL_PRODUCT_NAME'] as String?,
        colorCode: data['COLOR_CODE'] as String?,
        tdsFile: data['TDS_FILE'] as String?,
        msdsFile: data['MSDS_FILE'] as String?,
      );

  static ProductHeaderStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductHeaderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'DPL_PRODUCT_NAME': _dplProductName,
        'COLOR_CODE': _colorCode,
        'TDS_FILE': _tdsFile,
        'MSDS_FILE': _msdsFile,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'DPL_PRODUCT_NAME': serializeParam(
          _dplProductName,
          ParamType.String,
        ),
        'COLOR_CODE': serializeParam(
          _colorCode,
          ParamType.String,
        ),
        'TDS_FILE': serializeParam(
          _tdsFile,
          ParamType.String,
        ),
        'MSDS_FILE': serializeParam(
          _msdsFile,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProductHeaderStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductHeaderStruct(
        dplProductName: deserializeParam(
          data['DPL_PRODUCT_NAME'],
          ParamType.String,
          false,
        ),
        colorCode: deserializeParam(
          data['COLOR_CODE'],
          ParamType.String,
          false,
        ),
        tdsFile: deserializeParam(
          data['TDS_FILE'],
          ParamType.String,
          false,
        ),
        msdsFile: deserializeParam(
          data['MSDS_FILE'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProductHeaderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductHeaderStruct &&
        dplProductName == other.dplProductName &&
        colorCode == other.colorCode &&
        tdsFile == other.tdsFile &&
        msdsFile == other.msdsFile;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([dplProductName, colorCode, tdsFile, msdsFile]);
}

ProductHeaderStruct createProductHeaderStruct({
  String? dplProductName,
  String? colorCode,
  String? tdsFile,
  String? msdsFile,
}) =>
    ProductHeaderStruct(
      dplProductName: dplProductName,
      colorCode: colorCode,
      tdsFile: tdsFile,
      msdsFile: msdsFile,
    );
