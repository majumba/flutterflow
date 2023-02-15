import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'template_prompt_object_struct.g.dart';

abstract class TemplatePromptObjectStruct
    implements
        Built<TemplatePromptObjectStruct, TemplatePromptObjectStructBuilder> {
  static Serializer<TemplatePromptObjectStruct> get serializer =>
      _$templatePromptObjectStructSerializer;

  int? get promptOrder;

  String? get promptText;

  BuiltList<String>? get promptTag;

  BuiltList<String>? get promptPerson;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(TemplatePromptObjectStructBuilder builder) =>
      builder
        ..promptOrder = 0
        ..promptText = ''
        ..promptTag = ListBuilder()
        ..promptPerson = ListBuilder()
        ..firestoreUtilData = FirestoreUtilData();

  TemplatePromptObjectStruct._();
  factory TemplatePromptObjectStruct(
          [void Function(TemplatePromptObjectStructBuilder) updates]) =
      _$TemplatePromptObjectStruct;
}

TemplatePromptObjectStruct createTemplatePromptObjectStruct({
  int? promptOrder,
  String? promptText,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TemplatePromptObjectStruct(
      (t) => t
        ..promptOrder = promptOrder
        ..promptText = promptText
        ..promptTag = null
        ..promptPerson = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

TemplatePromptObjectStruct? updateTemplatePromptObjectStruct(
  TemplatePromptObjectStruct? templatePromptObject, {
  bool clearUnsetFields = true,
}) =>
    templatePromptObject != null
        ? (templatePromptObject.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addTemplatePromptObjectStructData(
  Map<String, dynamic> firestoreData,
  TemplatePromptObjectStruct? templatePromptObject,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (templatePromptObject == null) {
    return;
  }
  if (templatePromptObject.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue &&
      templatePromptObject.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final templatePromptObjectData =
      getTemplatePromptObjectFirestoreData(templatePromptObject, forFieldValue);
  final nestedData =
      templatePromptObjectData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = templatePromptObject.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getTemplatePromptObjectFirestoreData(
  TemplatePromptObjectStruct? templatePromptObject, [
  bool forFieldValue = false,
]) {
  if (templatePromptObject == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      TemplatePromptObjectStruct.serializer, templatePromptObject);

  // Add any Firestore field values
  templatePromptObject.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTemplatePromptObjectListFirestoreData(
  List<TemplatePromptObjectStruct>? templatePromptObjects,
) =>
    templatePromptObjects
        ?.map((t) => getTemplatePromptObjectFirestoreData(t, true))
        .toList() ??
    [];
