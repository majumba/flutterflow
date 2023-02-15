import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'project_prompt_object_struct.g.dart';

abstract class ProjectPromptObjectStruct
    implements
        Built<ProjectPromptObjectStruct, ProjectPromptObjectStructBuilder> {
  static Serializer<ProjectPromptObjectStruct> get serializer =>
      _$projectPromptObjectStructSerializer;

  int? get promptOrder;

  String? get promptText;

  String? get promptVideo;

  String? get promptImage;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ProjectPromptObjectStructBuilder builder) =>
      builder
        ..promptOrder = 0
        ..promptText = ''
        ..promptVideo = ''
        ..promptImage = ''
        ..firestoreUtilData = FirestoreUtilData();

  ProjectPromptObjectStruct._();
  factory ProjectPromptObjectStruct(
          [void Function(ProjectPromptObjectStructBuilder) updates]) =
      _$ProjectPromptObjectStruct;
}

ProjectPromptObjectStruct createProjectPromptObjectStruct({
  int? promptOrder,
  String? promptText,
  String? promptVideo,
  String? promptImage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProjectPromptObjectStruct(
      (p) => p
        ..promptOrder = promptOrder
        ..promptText = promptText
        ..promptVideo = promptVideo
        ..promptImage = promptImage
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ProjectPromptObjectStruct? updateProjectPromptObjectStruct(
  ProjectPromptObjectStruct? projectPromptObject, {
  bool clearUnsetFields = true,
}) =>
    projectPromptObject != null
        ? (projectPromptObject.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addProjectPromptObjectStructData(
  Map<String, dynamic> firestoreData,
  ProjectPromptObjectStruct? projectPromptObject,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (projectPromptObject == null) {
    return;
  }
  if (projectPromptObject.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue &&
      projectPromptObject.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final projectPromptObjectData =
      getProjectPromptObjectFirestoreData(projectPromptObject, forFieldValue);
  final nestedData =
      projectPromptObjectData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = projectPromptObject.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getProjectPromptObjectFirestoreData(
  ProjectPromptObjectStruct? projectPromptObject, [
  bool forFieldValue = false,
]) {
  if (projectPromptObject == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      ProjectPromptObjectStruct.serializer, projectPromptObject);

  // Add any Firestore field values
  projectPromptObject.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProjectPromptObjectListFirestoreData(
  List<ProjectPromptObjectStruct>? projectPromptObjects,
) =>
    projectPromptObjects
        ?.map((p) => getProjectPromptObjectFirestoreData(p, true))
        .toList() ??
    [];
