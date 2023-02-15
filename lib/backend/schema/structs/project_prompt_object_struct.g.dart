// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_prompt_object_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectPromptObjectStruct> _$projectPromptObjectStructSerializer =
    new _$ProjectPromptObjectStructSerializer();

class _$ProjectPromptObjectStructSerializer
    implements StructuredSerializer<ProjectPromptObjectStruct> {
  @override
  final Iterable<Type> types = const [
    ProjectPromptObjectStruct,
    _$ProjectPromptObjectStruct
  ];
  @override
  final String wireName = 'ProjectPromptObjectStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProjectPromptObjectStruct object,
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
    value = object.promptVideo;
    if (value != null) {
      result
        ..add('promptVideo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.promptImage;
    if (value != null) {
      result
        ..add('promptImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProjectPromptObjectStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectPromptObjectStructBuilder();

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
        case 'promptVideo':
          result.promptVideo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'promptImage':
          result.promptImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ProjectPromptObjectStruct extends ProjectPromptObjectStruct {
  @override
  final int? promptOrder;
  @override
  final String? promptText;
  @override
  final String? promptVideo;
  @override
  final String? promptImage;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ProjectPromptObjectStruct(
          [void Function(ProjectPromptObjectStructBuilder)? updates]) =>
      (new ProjectPromptObjectStructBuilder()..update(updates))._build();

  _$ProjectPromptObjectStruct._(
      {this.promptOrder,
      this.promptText,
      this.promptVideo,
      this.promptImage,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ProjectPromptObjectStruct', 'firestoreUtilData');
  }

  @override
  ProjectPromptObjectStruct rebuild(
          void Function(ProjectPromptObjectStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectPromptObjectStructBuilder toBuilder() =>
      new ProjectPromptObjectStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectPromptObjectStruct &&
        promptOrder == other.promptOrder &&
        promptText == other.promptText &&
        promptVideo == other.promptVideo &&
        promptImage == other.promptImage &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, promptOrder.hashCode), promptText.hashCode),
                promptVideo.hashCode),
            promptImage.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectPromptObjectStruct')
          ..add('promptOrder', promptOrder)
          ..add('promptText', promptText)
          ..add('promptVideo', promptVideo)
          ..add('promptImage', promptImage)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ProjectPromptObjectStructBuilder
    implements
        Builder<ProjectPromptObjectStruct, ProjectPromptObjectStructBuilder> {
  _$ProjectPromptObjectStruct? _$v;

  int? _promptOrder;
  int? get promptOrder => _$this._promptOrder;
  set promptOrder(int? promptOrder) => _$this._promptOrder = promptOrder;

  String? _promptText;
  String? get promptText => _$this._promptText;
  set promptText(String? promptText) => _$this._promptText = promptText;

  String? _promptVideo;
  String? get promptVideo => _$this._promptVideo;
  set promptVideo(String? promptVideo) => _$this._promptVideo = promptVideo;

  String? _promptImage;
  String? get promptImage => _$this._promptImage;
  set promptImage(String? promptImage) => _$this._promptImage = promptImage;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ProjectPromptObjectStructBuilder() {
    ProjectPromptObjectStruct._initializeBuilder(this);
  }

  ProjectPromptObjectStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _promptOrder = $v.promptOrder;
      _promptText = $v.promptText;
      _promptVideo = $v.promptVideo;
      _promptImage = $v.promptImage;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectPromptObjectStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectPromptObjectStruct;
  }

  @override
  void update(void Function(ProjectPromptObjectStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectPromptObjectStruct build() => _build();

  _$ProjectPromptObjectStruct _build() {
    final _$result = _$v ??
        new _$ProjectPromptObjectStruct._(
            promptOrder: promptOrder,
            promptText: promptText,
            promptVideo: promptVideo,
            promptImage: promptImage,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'ProjectPromptObjectStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
