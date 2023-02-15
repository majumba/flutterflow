import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'projects_record.g.dart';

abstract class ProjectsRecord
    implements Built<ProjectsRecord, ProjectsRecordBuilder> {
  static Serializer<ProjectsRecord> get serializer =>
      _$projectsRecordSerializer;

  String? get projectName;

  DocumentReference? get createdBy;

  String? get createdDate;

  BuiltList<ProjectPromptObjectStruct>? get projectPromptObject;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProjectsRecordBuilder builder) => builder
    ..projectName = ''
    ..createdDate = ''
    ..projectPromptObject = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProjectsRecord._();
  factory ProjectsRecord([void Function(ProjectsRecordBuilder) updates]) =
      _$ProjectsRecord;

  static ProjectsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProjectsRecordData({
  String? projectName,
  DocumentReference? createdBy,
  String? createdDate,
}) {
  final firestoreData = serializers.toFirestore(
    ProjectsRecord.serializer,
    ProjectsRecord(
      (p) => p
        ..projectName = projectName
        ..createdBy = createdBy
        ..createdDate = createdDate
        ..projectPromptObject = null,
    ),
  );

  return firestoreData;
}
