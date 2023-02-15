import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'templates_record.g.dart';

abstract class TemplatesRecord
    implements Built<TemplatesRecord, TemplatesRecordBuilder> {
  static Serializer<TemplatesRecord> get serializer =>
      _$templatesRecordSerializer;

  String? get templateName;

  BuiltList<String>? get tempateTag;

  BuiltList<String>? get templatePerson;

  BuiltList<TemplatePromptObjectStruct>? get templatePromptObject;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TemplatesRecordBuilder builder) => builder
    ..templateName = ''
    ..tempateTag = ListBuilder()
    ..templatePerson = ListBuilder()
    ..templatePromptObject = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('templates');

  static Stream<TemplatesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TemplatesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TemplatesRecord._();
  factory TemplatesRecord([void Function(TemplatesRecordBuilder) updates]) =
      _$TemplatesRecord;

  static TemplatesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTemplatesRecordData({
  String? templateName,
}) {
  final firestoreData = serializers.toFirestore(
    TemplatesRecord.serializer,
    TemplatesRecord(
      (t) => t
        ..templateName = templateName
        ..tempateTag = null
        ..templatePerson = null
        ..templatePromptObject = null,
    ),
  );

  return firestoreData;
}
