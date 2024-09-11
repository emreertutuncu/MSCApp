// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductStruct extends BaseStruct {
  ProductStruct({
    int? dplId,
    bool? isMasterColor,
    bool? isCustomerColor,
    String? catalogName,
    String? dplNo,
    String? dplProductName,
    String? colorCode,
    int? productCatid,
    int? productId,
    String? productName,
    double? quantity,
    String? recordCompanyId,
    String? recordPar,
    double? price,
    String? tdsFile,
    String? msdsFile,
  })  : _dplId = dplId,
        _isMasterColor = isMasterColor,
        _isCustomerColor = isCustomerColor,
        _catalogName = catalogName,
        _dplNo = dplNo,
        _dplProductName = dplProductName,
        _colorCode = colorCode,
        _productCatid = productCatid,
        _productId = productId,
        _productName = productName,
        _quantity = quantity,
        _recordCompanyId = recordCompanyId,
        _recordPar = recordPar,
        _price = price,
        _tdsFile = tdsFile,
        _msdsFile = msdsFile;

  // "DPL_ID" field.
  int? _dplId;
  int get dplId => _dplId ?? 0;
  set dplId(int? val) => _dplId = val;

  void incrementDplId(int amount) => dplId = dplId + amount;

  bool hasDplId() => _dplId != null;

  // "IS_MASTER_COLOR" field.
  bool? _isMasterColor;
  bool get isMasterColor => _isMasterColor ?? true;
  set isMasterColor(bool? val) => _isMasterColor = val;

  bool hasIsMasterColor() => _isMasterColor != null;

  // "IS_CUSTOMER_COLOR" field.
  bool? _isCustomerColor;
  bool get isCustomerColor => _isCustomerColor ?? false;
  set isCustomerColor(bool? val) => _isCustomerColor = val;

  bool hasIsCustomerColor() => _isCustomerColor != null;

  // "CATALOG_NAME" field.
  String? _catalogName;
  String get catalogName => _catalogName ?? '';
  set catalogName(String? val) => _catalogName = val;

  bool hasCatalogName() => _catalogName != null;

  // "DPL_NO" field.
  String? _dplNo;
  String get dplNo => _dplNo ?? '';
  set dplNo(String? val) => _dplNo = val;

  bool hasDplNo() => _dplNo != null;

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

  // "PRODUCT_CATID" field.
  int? _productCatid;
  int get productCatid => _productCatid ?? 0;
  set productCatid(int? val) => _productCatid = val;

  void incrementProductCatid(int amount) =>
      productCatid = productCatid + amount;

  bool hasProductCatid() => _productCatid != null;

  // "PRODUCT_ID" field.
  int? _productId;
  int get productId => _productId ?? 0;
  set productId(int? val) => _productId = val;

  void incrementProductId(int amount) => productId = productId + amount;

  bool hasProductId() => _productId != null;

  // "PRODUCT_NAME" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "QUANTITY" field.
  double? _quantity;
  double get quantity => _quantity ?? 0.0;
  set quantity(double? val) => _quantity = val;

  void incrementQuantity(double amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "RECORD_COMPANY_ID" field.
  String? _recordCompanyId;
  String get recordCompanyId => _recordCompanyId ?? '';
  set recordCompanyId(String? val) => _recordCompanyId = val;

  bool hasRecordCompanyId() => _recordCompanyId != null;

  // "RECORD_PAR" field.
  String? _recordPar;
  String get recordPar => _recordPar ?? '';
  set recordPar(String? val) => _recordPar = val;

  bool hasRecordPar() => _recordPar != null;

  // "PRICE" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

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

  static ProductStruct fromMap(Map<String, dynamic> data) => ProductStruct(
        dplId: castToType<int>(data['DPL_ID']),
        isMasterColor: data['IS_MASTER_COLOR'] as bool?,
        isCustomerColor: data['IS_CUSTOMER_COLOR'] as bool?,
        catalogName: data['CATALOG_NAME'] as String?,
        dplNo: data['DPL_NO'] as String?,
        dplProductName: data['DPL_PRODUCT_NAME'] as String?,
        colorCode: data['COLOR_CODE'] as String?,
        productCatid: castToType<int>(data['PRODUCT_CATID']),
        productId: castToType<int>(data['PRODUCT_ID']),
        productName: data['PRODUCT_NAME'] as String?,
        quantity: castToType<double>(data['QUANTITY']),
        recordCompanyId: data['RECORD_COMPANY_ID'] as String?,
        recordPar: data['RECORD_PAR'] as String?,
        price: castToType<double>(data['PRICE']),
        tdsFile: data['TDS_FILE'] as String?,
        msdsFile: data['MSDS_FILE'] as String?,
      );

  static ProductStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'DPL_ID': _dplId,
        'IS_MASTER_COLOR': _isMasterColor,
        'IS_CUSTOMER_COLOR': _isCustomerColor,
        'CATALOG_NAME': _catalogName,
        'DPL_NO': _dplNo,
        'DPL_PRODUCT_NAME': _dplProductName,
        'COLOR_CODE': _colorCode,
        'PRODUCT_CATID': _productCatid,
        'PRODUCT_ID': _productId,
        'PRODUCT_NAME': _productName,
        'QUANTITY': _quantity,
        'RECORD_COMPANY_ID': _recordCompanyId,
        'RECORD_PAR': _recordPar,
        'PRICE': _price,
        'TDS_FILE': _tdsFile,
        'MSDS_FILE': _msdsFile,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'DPL_ID': serializeParam(
          _dplId,
          ParamType.int,
        ),
        'IS_MASTER_COLOR': serializeParam(
          _isMasterColor,
          ParamType.bool,
        ),
        'IS_CUSTOMER_COLOR': serializeParam(
          _isCustomerColor,
          ParamType.bool,
        ),
        'CATALOG_NAME': serializeParam(
          _catalogName,
          ParamType.String,
        ),
        'DPL_NO': serializeParam(
          _dplNo,
          ParamType.String,
        ),
        'DPL_PRODUCT_NAME': serializeParam(
          _dplProductName,
          ParamType.String,
        ),
        'COLOR_CODE': serializeParam(
          _colorCode,
          ParamType.String,
        ),
        'PRODUCT_CATID': serializeParam(
          _productCatid,
          ParamType.int,
        ),
        'PRODUCT_ID': serializeParam(
          _productId,
          ParamType.int,
        ),
        'PRODUCT_NAME': serializeParam(
          _productName,
          ParamType.String,
        ),
        'QUANTITY': serializeParam(
          _quantity,
          ParamType.double,
        ),
        'RECORD_COMPANY_ID': serializeParam(
          _recordCompanyId,
          ParamType.String,
        ),
        'RECORD_PAR': serializeParam(
          _recordPar,
          ParamType.String,
        ),
        'PRICE': serializeParam(
          _price,
          ParamType.double,
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

  static ProductStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductStruct(
        dplId: deserializeParam(
          data['DPL_ID'],
          ParamType.int,
          false,
        ),
        isMasterColor: deserializeParam(
          data['IS_MASTER_COLOR'],
          ParamType.bool,
          false,
        ),
        isCustomerColor: deserializeParam(
          data['IS_CUSTOMER_COLOR'],
          ParamType.bool,
          false,
        ),
        catalogName: deserializeParam(
          data['CATALOG_NAME'],
          ParamType.String,
          false,
        ),
        dplNo: deserializeParam(
          data['DPL_NO'],
          ParamType.String,
          false,
        ),
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
        productCatid: deserializeParam(
          data['PRODUCT_CATID'],
          ParamType.int,
          false,
        ),
        productId: deserializeParam(
          data['PRODUCT_ID'],
          ParamType.int,
          false,
        ),
        productName: deserializeParam(
          data['PRODUCT_NAME'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['QUANTITY'],
          ParamType.double,
          false,
        ),
        recordCompanyId: deserializeParam(
          data['RECORD_COMPANY_ID'],
          ParamType.String,
          false,
        ),
        recordPar: deserializeParam(
          data['RECORD_PAR'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['PRICE'],
          ParamType.double,
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
  String toString() => 'ProductStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductStruct &&
        dplId == other.dplId &&
        isMasterColor == other.isMasterColor &&
        isCustomerColor == other.isCustomerColor &&
        catalogName == other.catalogName &&
        dplNo == other.dplNo &&
        dplProductName == other.dplProductName &&
        colorCode == other.colorCode &&
        productCatid == other.productCatid &&
        productId == other.productId &&
        productName == other.productName &&
        quantity == other.quantity &&
        recordCompanyId == other.recordCompanyId &&
        recordPar == other.recordPar &&
        price == other.price &&
        tdsFile == other.tdsFile &&
        msdsFile == other.msdsFile;
  }

  @override
  int get hashCode => const ListEquality().hash([
        dplId,
        isMasterColor,
        isCustomerColor,
        catalogName,
        dplNo,
        dplProductName,
        colorCode,
        productCatid,
        productId,
        productName,
        quantity,
        recordCompanyId,
        recordPar,
        price,
        tdsFile,
        msdsFile
      ]);
}

ProductStruct createProductStruct({
  int? dplId,
  bool? isMasterColor,
  bool? isCustomerColor,
  String? catalogName,
  String? dplNo,
  String? dplProductName,
  String? colorCode,
  int? productCatid,
  int? productId,
  String? productName,
  double? quantity,
  String? recordCompanyId,
  String? recordPar,
  double? price,
  String? tdsFile,
  String? msdsFile,
}) =>
    ProductStruct(
      dplId: dplId,
      isMasterColor: isMasterColor,
      isCustomerColor: isCustomerColor,
      catalogName: catalogName,
      dplNo: dplNo,
      dplProductName: dplProductName,
      colorCode: colorCode,
      productCatid: productCatid,
      productId: productId,
      productName: productName,
      quantity: quantity,
      recordCompanyId: recordCompanyId,
      recordPar: recordPar,
      price: price,
      tdsFile: tdsFile,
      msdsFile: msdsFile,
    );
