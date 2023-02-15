// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProjectsRecord> _$projectsRecordSerializer =
    new _$ProjectsRecordSerializer();

class _$ProjectsRecordSerializer
    implements StructuredSerializer<ProjectsRecord> {
  @override
  final Iterable<Type> types = const [ProjectsRecord, _$ProjectsRecord];
  @override
  final String wireName = 'ProjectsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProjectsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.projectName;
    if (value != null) {
      result
        ..add('projectName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('createdBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdDate;
    if (value != null) {
      result
        ..add('createdDate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.projectPromptObject;
    if (value != null) {
      result
        ..add('projectPromptObject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(ProjectPromptObjectStruct)])));
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
  ProjectsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProjectsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'projectName':
          result.projectName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'createdBy':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'createdDate':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'projectPromptObject':
          result.projectPromptObject.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ProjectPromptObjectStruct)
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

class _$ProjectsRecord extends ProjectsRecord {
  @override
  final String? projectName;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final String? createdDate;
  @override
  final BuiltList<ProjectPromptObjectStruct>? projectPromptObject;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProjectsRecord([void Function(ProjectsRecordBuilder)? updates]) =>
      (new ProjectsRecordBuilder()..update(updates))._build();

  _$ProjectsRecord._(
      {this.projectName,
      this.createdBy,
      this.createdDate,
      this.projectPromptObject,
      this.ffRef})
      : super._();

  @override
  ProjectsRecord rebuild(void Function(ProjectsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectsRecordBuilder toBuilder() =>
      new ProjectsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProjectsRecord &&
        projectName == other.projectName &&
        createdBy == other.createdBy &&
        createdDate == other.createdDate &&
        projectPromptObject == other.projectPromptObject &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, projectName.hashCode), createdBy.hashCode),
                createdDate.hashCode),
            projectPromptObject.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProjectsRecord')
          ..add('projectName', projectName)
          ..add('createdBy', createdBy)
          ..add('createdDate', createdDate)
          ..add('projectPromptObject', projectPromptObject)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProjectsRecordBuilder
    implements Builder<ProjectsRecord, ProjectsRecordBuilder> {
  _$ProjectsRecord? _$v;

  String? _projectName;
  String? get projectName => _$this._projectName;
  set projectName(String? projectName) => _$this._projectName = projectName;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  String? _createdDate;
  String? get createdDate => _$this._createdDate;
  set createdDate(String? createdDate) => _$this._createdDate = createdDate;

  ListBuilder<ProjectPromptObjectStruct>? _projectPromptObject;
  ListBuilder<ProjectPromptObjectStruct> get projectPromptObject =>
      _$this._projectPromptObject ??=
          new ListBuilder<ProjectPromptObjectStruct>();
  set projectPromptObject(
          ListBuilder<ProjectPromptObjectStruct>? projectPromptObject) =>
      _$this._projectPromptObject = projectPromptObject;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProjectsRecordBuilder() {
    ProjectsRecord._initializeBuilder(this);
  }

  ProjectsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _projectName = $v.projectName;
      _createdBy = $v.createdBy;
      _createdDate = $v.createdDate;
      _projectPromptObject = $v.projectPromptObject?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProjectsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProjectsRecord;
  }

  @override
  void update(void Function(ProjectsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProjectsRecord build() => _build();

  _$ProjectsRecord _build() {
    _$ProjectsRecord _$result;
    try {
      _$result = _$v ??
          new _$ProjectsRecord._(
              projectName: projectName,
              createdBy: createdBy,
              createdDate: createdDate,
              projectPromptObject: _projectPromptObject?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'projectPromptObject';
        _projectPromptObject?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProjectsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
