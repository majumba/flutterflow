// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'templates_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TemplatesRecord> _$templatesRecordSerializer =
    new _$TemplatesRecordSerializer();

class _$TemplatesRecordSerializer
    implements StructuredSerializer<TemplatesRecord> {
  @override
  final Iterable<Type> types = const [TemplatesRecord, _$TemplatesRecord];
  @override
  final String wireName = 'TemplatesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TemplatesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.templateName;
    if (value != null) {
      result
        ..add('templateName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tempateTag;
    if (value != null) {
      result
        ..add('tempateTag')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.templatePerson;
    if (value != null) {
      result
        ..add('templatePerson')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.templatePromptObject;
    if (value != null) {
      result
        ..add('templatePromptObject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(TemplatePromptObjectStruct)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  TemplatesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TemplatesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'templateName':
          result.templateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tempateTag':
          result.tempateTag.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'templatePerson':
          result.templatePerson.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'templatePromptObject':
          result.templatePromptObject.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(TemplatePromptObjectStruct)
              ]))! as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$TemplatesRecord extends TemplatesRecord {
  @override
  final String? templateName;
  @override
  final BuiltList<String>? tempateTag;
  @override
  final BuiltList<String>? templatePerson;
  @override
  final BuiltList<TemplatePromptObjectStruct>? templatePromptObject;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TemplatesRecord([void Function(TemplatesRecordBuilder)? updates]) =>
      (new TemplatesRecordBuilder()..update(updates))._build();

  _$TemplatesRecord._(
      {this.templateName,
      this.tempateTag,
      this.templatePerson,
      this.templatePromptObject,
      this.ffRef})
      : super._();

  @override
  TemplatesRecord rebuild(void Function(TemplatesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplatesRecordBuilder toBuilder() =>
      new TemplatesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplatesRecord &&
        templateName == other.templateName &&
        tempateTag == other.tempateTag &&
        templatePerson == other.templatePerson &&
        templatePromptObject == other.templatePromptObject &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, templateName.hashCode), tempateTag.hashCode),
                templatePerson.hashCode),
            templatePromptObject.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemplatesRecord')
          ..add('templateName', templateName)
          ..add('tempateTag', tempateTag)
          ..add('templatePerson', templatePerson)
          ..add('templatePromptObject', templatePromptObject)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TemplatesRecordBuilder
    implements Builder<TemplatesRecord, TemplatesRecordBuilder> {
  _$TemplatesRecord? _$v;

  String? _templateName;
  String? get templateName => _$this._templateName;
  set templateName(String? templateName) => _$this._templateName = templateName;

  ListBuilder<String>? _tempateTag;
  ListBuilder<String> get tempateTag =>
      _$this._tempateTag ??= new ListBuilder<String>();
  set tempateTag(ListBuilder<String>? tempateTag) =>
      _$this._tempateTag = tempateTag;

  ListBuilder<String>? _templatePerson;
  ListBuilder<String> get templatePerson =>
      _$this._templatePerson ??= new ListBuilder<String>();
  set templatePerson(ListBuilder<String>? templatePerson) =>
      _$this._templatePerson = templatePerson;

  ListBuilder<TemplatePromptObjectStruct>? _templatePromptObject;
  ListBuilder<TemplatePromptObjectStruct> get templatePromptObject =>
      _$this._templatePromptObject ??=
          new ListBuilder<TemplatePromptObjectStruct>();
  set templatePromptObject(
          ListBuilder<TemplatePromptObjectStruct>? templatePromptObject) =>
      _$this._templatePromptObject = templatePromptObject;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TemplatesRecordBuilder() {
    TemplatesRecord._initializeBuilder(this);
  }

  TemplatesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _templateName = $v.templateName;
      _tempateTag = $v.tempateTag?.toBuilder();
      _templatePerson = $v.templatePerson?.toBuilder();
      _templatePromptObject = $v.templatePromptObject?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplatesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TemplatesRecord;
  }

  @override
  void update(void Function(TemplatesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplatesRecord build() => _build();

  _$TemplatesRecord _build() {
    _$TemplatesRecord _$result;
    try {
      _$result = _$v ??
          new _$TemplatesRecord._(
              templateName: templateName,
              tempateTag: _tempateTag?.build(),
              templatePerson: _templatePerson?.build(),
              templatePromptObject: _templatePromptObject?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tempateTag';
        _tempateTag?.build();
        _$failedField = 'templatePerson';
        _templatePerson?.build();
        _$failedField = 'templatePromptObject';
        _templatePromptObject?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TemplatesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
