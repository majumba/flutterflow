// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_prompt_object_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TemplatePromptObjectStruct> _$templatePromptObjectStructSerializer =
    new _$TemplatePromptObjectStructSerializer();

class _$TemplatePromptObjectStructSerializer
    implements StructuredSerializer<TemplatePromptObjectStruct> {
  @override
  final Iterable<Type> types = const [
    TemplatePromptObjectStruct,
    _$TemplatePromptObjectStruct
  ];
  @override
  final String wireName = 'TemplatePromptObjectStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, TemplatePromptObjectStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.promptOrder;
    if (value != null) {
      result
        ..add('promptOrder')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.promptText;
    if (value != null) {
      result
        ..add('promptText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.promptTag;
    if (value != null) {
      result
        ..add('promptTag')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.promptPerson;
    if (value != null) {
      result
        ..add('promptPerson')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  TemplatePromptObjectStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TemplatePromptObjectStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'promptOrder':
          result.promptOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'promptText':
          result.promptText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'promptTag':
          result.promptTag.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'promptPerson':
          result.promptPerson.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$TemplatePromptObjectStruct extends TemplatePromptObjectStruct {
  @override
  final int? promptOrder;
  @override
  final String? promptText;
  @override
  final BuiltList<String>? promptTag;
  @override
  final BuiltList<String>? promptPerson;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$TemplatePromptObjectStruct(
          [void Function(TemplatePromptObjectStructBuilder)? updates]) =>
      (new TemplatePromptObjectStructBuilder()..update(updates))._build();

  _$TemplatePromptObjectStruct._(
      {this.promptOrder,
      this.promptText,
      this.promptTag,
      this.promptPerson,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'TemplatePromptObjectStruct', 'firestoreUtilData');
  }

  @override
  TemplatePromptObjectStruct rebuild(
          void Function(TemplatePromptObjectStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplatePromptObjectStructBuilder toBuilder() =>
      new TemplatePromptObjectStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplatePromptObjectStruct &&
        promptOrder == other.promptOrder &&
        promptText == other.promptText &&
        promptTag == other.promptTag &&
        promptPerson == other.promptPerson &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, promptOrder.hashCode), promptText.hashCode),
                promptTag.hashCode),
            promptPerson.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TemplatePromptObjectStruct')
          ..add('promptOrder', promptOrder)
          ..add('promptText', promptText)
          ..add('promptTag', promptTag)
          ..add('promptPerson', promptPerson)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class TemplatePromptObjectStructBuilder
    implements
        Builder<TemplatePromptObjectStruct, TemplatePromptObjectStructBuilder> {
  _$TemplatePromptObjectStruct? _$v;

  int? _promptOrder;
  int? get promptOrder => _$this._promptOrder;
  set promptOrder(int? promptOrder) => _$this._promptOrder = promptOrder;

  String? _promptText;
  String? get promptText => _$this._promptText;
  set promptText(String? promptText) => _$this._promptText = promptText;

  ListBuilder<String>? _promptTag;
  ListBuilder<String> get promptTag =>
      _$this._promptTag ??= new ListBuilder<String>();
  set promptTag(ListBuilder<String>? promptTag) =>
      _$this._promptTag = promptTag;

  ListBuilder<String>? _promptPerson;
  ListBuilder<String> get promptPerson =>
      _$this._promptPerson ??= new ListBuilder<String>();
  set promptPerson(ListBuilder<String>? promptPerson) =>
      _$this._promptPerson = promptPerson;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  TemplatePromptObjectStructBuilder() {
    TemplatePromptObjectStruct._initializeBuilder(this);
  }

  TemplatePromptObjectStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _promptOrder = $v.promptOrder;
      _promptText = $v.promptText;
      _promptTag = $v.promptTag?.toBuilder();
      _promptPerson = $v.promptPerson?.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplatePromptObjectStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TemplatePromptObjectStruct;
  }

  @override
  void update(void Function(TemplatePromptObjectStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplatePromptObjectStruct build() => _build();

  _$TemplatePromptObjectStruct _build() {
    _$TemplatePromptObjectStruct _$result;
    try {
      _$result = _$v ??
          new _$TemplatePromptObjectStruct._(
              promptOrder: promptOrder,
              promptText: promptText,
              promptTag: _promptTag?.build(),
              promptPerson: _promptPerson?.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'TemplatePromptObjectStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'promptTag';
        _promptTag?.build();
        _$failedField = 'promptPerson';
        _promptPerson?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TemplatePromptObjectStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
