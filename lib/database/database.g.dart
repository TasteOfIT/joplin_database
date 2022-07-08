// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Folder extends DataClass implements Insertable<Folder> {
  final String? id;
  final String title;
  final int createdTime;
  final int updatedTime;
  final int userCreatedTime;
  final int userUpdatedTime;
  final String encryptionCipherText;
  final int encryptionApplied;
  final String parentId;
  final int isShared;
  final String shareId;
  final String masterKeyId;
  final String icon;
  Folder(
      {this.id,
      required this.title,
      required this.createdTime,
      required this.updatedTime,
      required this.userCreatedTime,
      required this.userUpdatedTime,
      required this.encryptionCipherText,
      required this.encryptionApplied,
      required this.parentId,
      required this.isShared,
      required this.shareId,
      required this.masterKeyId,
      required this.icon});
  factory Folder.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Folder(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
      userCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_created_time'])!,
      userUpdatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_updated_time'])!,
      encryptionCipherText: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_cipher_text'])!,
      encryptionApplied: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_applied'])!,
      parentId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}parent_id'])!,
      isShared: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_shared'])!,
      shareId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}share_id'])!,
      masterKeyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}master_key_id'])!,
      icon: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}icon'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['title'] = Variable<String>(title);
    map['created_time'] = Variable<int>(createdTime);
    map['updated_time'] = Variable<int>(updatedTime);
    map['user_created_time'] = Variable<int>(userCreatedTime);
    map['user_updated_time'] = Variable<int>(userUpdatedTime);
    map['encryption_cipher_text'] = Variable<String>(encryptionCipherText);
    map['encryption_applied'] = Variable<int>(encryptionApplied);
    map['parent_id'] = Variable<String>(parentId);
    map['is_shared'] = Variable<int>(isShared);
    map['share_id'] = Variable<String>(shareId);
    map['master_key_id'] = Variable<String>(masterKeyId);
    map['icon'] = Variable<String>(icon);
    return map;
  }

  FoldersCompanion toCompanion(bool nullToAbsent) {
    return FoldersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title: Value(title),
      createdTime: Value(createdTime),
      updatedTime: Value(updatedTime),
      userCreatedTime: Value(userCreatedTime),
      userUpdatedTime: Value(userUpdatedTime),
      encryptionCipherText: Value(encryptionCipherText),
      encryptionApplied: Value(encryptionApplied),
      parentId: Value(parentId),
      isShared: Value(isShared),
      shareId: Value(shareId),
      masterKeyId: Value(masterKeyId),
      icon: Value(icon),
    );
  }

  factory Folder.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Folder(
      id: serializer.fromJson<String?>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      createdTime: serializer.fromJson<int>(json['created_time']),
      updatedTime: serializer.fromJson<int>(json['updated_time']),
      userCreatedTime: serializer.fromJson<int>(json['user_created_time']),
      userUpdatedTime: serializer.fromJson<int>(json['user_updated_time']),
      encryptionCipherText:
          serializer.fromJson<String>(json['encryption_cipher_text']),
      encryptionApplied: serializer.fromJson<int>(json['encryption_applied']),
      parentId: serializer.fromJson<String>(json['parent_id']),
      isShared: serializer.fromJson<int>(json['is_shared']),
      shareId: serializer.fromJson<String>(json['share_id']),
      masterKeyId: serializer.fromJson<String>(json['master_key_id']),
      icon: serializer.fromJson<String>(json['icon']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'title': serializer.toJson<String>(title),
      'created_time': serializer.toJson<int>(createdTime),
      'updated_time': serializer.toJson<int>(updatedTime),
      'user_created_time': serializer.toJson<int>(userCreatedTime),
      'user_updated_time': serializer.toJson<int>(userUpdatedTime),
      'encryption_cipher_text': serializer.toJson<String>(encryptionCipherText),
      'encryption_applied': serializer.toJson<int>(encryptionApplied),
      'parent_id': serializer.toJson<String>(parentId),
      'is_shared': serializer.toJson<int>(isShared),
      'share_id': serializer.toJson<String>(shareId),
      'master_key_id': serializer.toJson<String>(masterKeyId),
      'icon': serializer.toJson<String>(icon),
    };
  }

  Folder copyWith(
          {String? id,
          String? title,
          int? createdTime,
          int? updatedTime,
          int? userCreatedTime,
          int? userUpdatedTime,
          String? encryptionCipherText,
          int? encryptionApplied,
          String? parentId,
          int? isShared,
          String? shareId,
          String? masterKeyId,
          String? icon}) =>
      Folder(
        id: id ?? this.id,
        title: title ?? this.title,
        createdTime: createdTime ?? this.createdTime,
        updatedTime: updatedTime ?? this.updatedTime,
        userCreatedTime: userCreatedTime ?? this.userCreatedTime,
        userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
        encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
        encryptionApplied: encryptionApplied ?? this.encryptionApplied,
        parentId: parentId ?? this.parentId,
        isShared: isShared ?? this.isShared,
        shareId: shareId ?? this.shareId,
        masterKeyId: masterKeyId ?? this.masterKeyId,
        icon: icon ?? this.icon,
      );
  @override
  String toString() {
    return (StringBuffer('Folder(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('parentId: $parentId, ')
          ..write('isShared: $isShared, ')
          ..write('shareId: $shareId, ')
          ..write('masterKeyId: $masterKeyId, ')
          ..write('icon: $icon')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      createdTime,
      updatedTime,
      userCreatedTime,
      userUpdatedTime,
      encryptionCipherText,
      encryptionApplied,
      parentId,
      isShared,
      shareId,
      masterKeyId,
      icon);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Folder &&
          other.id == this.id &&
          other.title == this.title &&
          other.createdTime == this.createdTime &&
          other.updatedTime == this.updatedTime &&
          other.userCreatedTime == this.userCreatedTime &&
          other.userUpdatedTime == this.userUpdatedTime &&
          other.encryptionCipherText == this.encryptionCipherText &&
          other.encryptionApplied == this.encryptionApplied &&
          other.parentId == this.parentId &&
          other.isShared == this.isShared &&
          other.shareId == this.shareId &&
          other.masterKeyId == this.masterKeyId &&
          other.icon == this.icon);
}

class FoldersCompanion extends UpdateCompanion<Folder> {
  final Value<String?> id;
  final Value<String> title;
  final Value<int> createdTime;
  final Value<int> updatedTime;
  final Value<int> userCreatedTime;
  final Value<int> userUpdatedTime;
  final Value<String> encryptionCipherText;
  final Value<int> encryptionApplied;
  final Value<String> parentId;
  final Value<int> isShared;
  final Value<String> shareId;
  final Value<String> masterKeyId;
  final Value<String> icon;
  const FoldersCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.updatedTime = const Value.absent(),
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.parentId = const Value.absent(),
    this.isShared = const Value.absent(),
    this.shareId = const Value.absent(),
    this.masterKeyId = const Value.absent(),
    this.icon = const Value.absent(),
  });
  FoldersCompanion.insert({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    required int createdTime,
    required int updatedTime,
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.parentId = const Value.absent(),
    this.isShared = const Value.absent(),
    this.shareId = const Value.absent(),
    this.masterKeyId = const Value.absent(),
    this.icon = const Value.absent(),
  })  : createdTime = Value(createdTime),
        updatedTime = Value(updatedTime);
  static Insertable<Folder> custom({
    Expression<String?>? id,
    Expression<String>? title,
    Expression<int>? createdTime,
    Expression<int>? updatedTime,
    Expression<int>? userCreatedTime,
    Expression<int>? userUpdatedTime,
    Expression<String>? encryptionCipherText,
    Expression<int>? encryptionApplied,
    Expression<String>? parentId,
    Expression<int>? isShared,
    Expression<String>? shareId,
    Expression<String>? masterKeyId,
    Expression<String>? icon,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (createdTime != null) 'created_time': createdTime,
      if (updatedTime != null) 'updated_time': updatedTime,
      if (userCreatedTime != null) 'user_created_time': userCreatedTime,
      if (userUpdatedTime != null) 'user_updated_time': userUpdatedTime,
      if (encryptionCipherText != null)
        'encryption_cipher_text': encryptionCipherText,
      if (encryptionApplied != null) 'encryption_applied': encryptionApplied,
      if (parentId != null) 'parent_id': parentId,
      if (isShared != null) 'is_shared': isShared,
      if (shareId != null) 'share_id': shareId,
      if (masterKeyId != null) 'master_key_id': masterKeyId,
      if (icon != null) 'icon': icon,
    });
  }

  FoldersCompanion copyWith(
      {Value<String?>? id,
      Value<String>? title,
      Value<int>? createdTime,
      Value<int>? updatedTime,
      Value<int>? userCreatedTime,
      Value<int>? userUpdatedTime,
      Value<String>? encryptionCipherText,
      Value<int>? encryptionApplied,
      Value<String>? parentId,
      Value<int>? isShared,
      Value<String>? shareId,
      Value<String>? masterKeyId,
      Value<String>? icon}) {
    return FoldersCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      createdTime: createdTime ?? this.createdTime,
      updatedTime: updatedTime ?? this.updatedTime,
      userCreatedTime: userCreatedTime ?? this.userCreatedTime,
      userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
      encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
      encryptionApplied: encryptionApplied ?? this.encryptionApplied,
      parentId: parentId ?? this.parentId,
      isShared: isShared ?? this.isShared,
      shareId: shareId ?? this.shareId,
      masterKeyId: masterKeyId ?? this.masterKeyId,
      icon: icon ?? this.icon,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<int>(updatedTime.value);
    }
    if (userCreatedTime.present) {
      map['user_created_time'] = Variable<int>(userCreatedTime.value);
    }
    if (userUpdatedTime.present) {
      map['user_updated_time'] = Variable<int>(userUpdatedTime.value);
    }
    if (encryptionCipherText.present) {
      map['encryption_cipher_text'] =
          Variable<String>(encryptionCipherText.value);
    }
    if (encryptionApplied.present) {
      map['encryption_applied'] = Variable<int>(encryptionApplied.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (isShared.present) {
      map['is_shared'] = Variable<int>(isShared.value);
    }
    if (shareId.present) {
      map['share_id'] = Variable<String>(shareId.value);
    }
    if (masterKeyId.present) {
      map['master_key_id'] = Variable<String>(masterKeyId.value);
    }
    if (icon.present) {
      map['icon'] = Variable<String>(icon.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FoldersCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('parentId: $parentId, ')
          ..write('isShared: $isShared, ')
          ..write('shareId: $shareId, ')
          ..write('masterKeyId: $masterKeyId, ')
          ..write('icon: $icon')
          ..write(')'))
        .toString();
  }
}

class Folders extends Table with TableInfo<Folders, Folder> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Folders(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _userCreatedTimeMeta =
      const VerificationMeta('userCreatedTime');
  late final GeneratedColumn<int?> userCreatedTime = GeneratedColumn<int?>(
      'user_created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _userUpdatedTimeMeta =
      const VerificationMeta('userUpdatedTime');
  late final GeneratedColumn<int?> userUpdatedTime = GeneratedColumn<int?>(
      'user_updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _encryptionCipherTextMeta =
      const VerificationMeta('encryptionCipherText');
  late final GeneratedColumn<String?> encryptionCipherText =
      GeneratedColumn<String?>('encryption_cipher_text', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _encryptionAppliedMeta =
      const VerificationMeta('encryptionApplied');
  late final GeneratedColumn<int?> encryptionApplied = GeneratedColumn<int?>(
      'encryption_applied', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  late final GeneratedColumn<String?> parentId = GeneratedColumn<String?>(
      'parent_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _isSharedMeta = const VerificationMeta('isShared');
  late final GeneratedColumn<int?> isShared = GeneratedColumn<int?>(
      'is_shared', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _shareIdMeta = const VerificationMeta('shareId');
  late final GeneratedColumn<String?> shareId = GeneratedColumn<String?>(
      'share_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _masterKeyIdMeta =
      const VerificationMeta('masterKeyId');
  late final GeneratedColumn<String?> masterKeyId = GeneratedColumn<String?>(
      'master_key_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _iconMeta = const VerificationMeta('icon');
  late final GeneratedColumn<String?> icon = GeneratedColumn<String?>(
      'icon', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        createdTime,
        updatedTime,
        userCreatedTime,
        userUpdatedTime,
        encryptionCipherText,
        encryptionApplied,
        parentId,
        isShared,
        shareId,
        masterKeyId,
        icon
      ];
  @override
  String get aliasedName => _alias ?? 'folders';
  @override
  String get actualTableName => 'folders';
  @override
  VerificationContext validateIntegrity(Insertable<Folder> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    if (data.containsKey('user_created_time')) {
      context.handle(
          _userCreatedTimeMeta,
          userCreatedTime.isAcceptableOrUnknown(
              data['user_created_time']!, _userCreatedTimeMeta));
    }
    if (data.containsKey('user_updated_time')) {
      context.handle(
          _userUpdatedTimeMeta,
          userUpdatedTime.isAcceptableOrUnknown(
              data['user_updated_time']!, _userUpdatedTimeMeta));
    }
    if (data.containsKey('encryption_cipher_text')) {
      context.handle(
          _encryptionCipherTextMeta,
          encryptionCipherText.isAcceptableOrUnknown(
              data['encryption_cipher_text']!, _encryptionCipherTextMeta));
    }
    if (data.containsKey('encryption_applied')) {
      context.handle(
          _encryptionAppliedMeta,
          encryptionApplied.isAcceptableOrUnknown(
              data['encryption_applied']!, _encryptionAppliedMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    }
    if (data.containsKey('is_shared')) {
      context.handle(_isSharedMeta,
          isShared.isAcceptableOrUnknown(data['is_shared']!, _isSharedMeta));
    }
    if (data.containsKey('share_id')) {
      context.handle(_shareIdMeta,
          shareId.isAcceptableOrUnknown(data['share_id']!, _shareIdMeta));
    }
    if (data.containsKey('master_key_id')) {
      context.handle(
          _masterKeyIdMeta,
          masterKeyId.isAcceptableOrUnknown(
              data['master_key_id']!, _masterKeyIdMeta));
    }
    if (data.containsKey('icon')) {
      context.handle(
          _iconMeta, icon.isAcceptableOrUnknown(data['icon']!, _iconMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Folder map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Folder.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Folders createAlias(String alias) {
    return Folders(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Tag extends DataClass implements Insertable<Tag> {
  final String? id;
  final String title;
  final int createdTime;
  final int updatedTime;
  final int userCreatedTime;
  final int userUpdatedTime;
  final String encryptionCipherText;
  final int encryptionApplied;
  final int isShared;
  final String parentId;
  Tag(
      {this.id,
      required this.title,
      required this.createdTime,
      required this.updatedTime,
      required this.userCreatedTime,
      required this.userUpdatedTime,
      required this.encryptionCipherText,
      required this.encryptionApplied,
      required this.isShared,
      required this.parentId});
  factory Tag.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Tag(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
      userCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_created_time'])!,
      userUpdatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_updated_time'])!,
      encryptionCipherText: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_cipher_text'])!,
      encryptionApplied: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_applied'])!,
      isShared: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_shared'])!,
      parentId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}parent_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['title'] = Variable<String>(title);
    map['created_time'] = Variable<int>(createdTime);
    map['updated_time'] = Variable<int>(updatedTime);
    map['user_created_time'] = Variable<int>(userCreatedTime);
    map['user_updated_time'] = Variable<int>(userUpdatedTime);
    map['encryption_cipher_text'] = Variable<String>(encryptionCipherText);
    map['encryption_applied'] = Variable<int>(encryptionApplied);
    map['is_shared'] = Variable<int>(isShared);
    map['parent_id'] = Variable<String>(parentId);
    return map;
  }

  TagsCompanion toCompanion(bool nullToAbsent) {
    return TagsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title: Value(title),
      createdTime: Value(createdTime),
      updatedTime: Value(updatedTime),
      userCreatedTime: Value(userCreatedTime),
      userUpdatedTime: Value(userUpdatedTime),
      encryptionCipherText: Value(encryptionCipherText),
      encryptionApplied: Value(encryptionApplied),
      isShared: Value(isShared),
      parentId: Value(parentId),
    );
  }

  factory Tag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Tag(
      id: serializer.fromJson<String?>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      createdTime: serializer.fromJson<int>(json['created_time']),
      updatedTime: serializer.fromJson<int>(json['updated_time']),
      userCreatedTime: serializer.fromJson<int>(json['user_created_time']),
      userUpdatedTime: serializer.fromJson<int>(json['user_updated_time']),
      encryptionCipherText:
          serializer.fromJson<String>(json['encryption_cipher_text']),
      encryptionApplied: serializer.fromJson<int>(json['encryption_applied']),
      isShared: serializer.fromJson<int>(json['is_shared']),
      parentId: serializer.fromJson<String>(json['parent_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'title': serializer.toJson<String>(title),
      'created_time': serializer.toJson<int>(createdTime),
      'updated_time': serializer.toJson<int>(updatedTime),
      'user_created_time': serializer.toJson<int>(userCreatedTime),
      'user_updated_time': serializer.toJson<int>(userUpdatedTime),
      'encryption_cipher_text': serializer.toJson<String>(encryptionCipherText),
      'encryption_applied': serializer.toJson<int>(encryptionApplied),
      'is_shared': serializer.toJson<int>(isShared),
      'parent_id': serializer.toJson<String>(parentId),
    };
  }

  Tag copyWith(
          {String? id,
          String? title,
          int? createdTime,
          int? updatedTime,
          int? userCreatedTime,
          int? userUpdatedTime,
          String? encryptionCipherText,
          int? encryptionApplied,
          int? isShared,
          String? parentId}) =>
      Tag(
        id: id ?? this.id,
        title: title ?? this.title,
        createdTime: createdTime ?? this.createdTime,
        updatedTime: updatedTime ?? this.updatedTime,
        userCreatedTime: userCreatedTime ?? this.userCreatedTime,
        userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
        encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
        encryptionApplied: encryptionApplied ?? this.encryptionApplied,
        isShared: isShared ?? this.isShared,
        parentId: parentId ?? this.parentId,
      );
  @override
  String toString() {
    return (StringBuffer('Tag(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('isShared: $isShared, ')
          ..write('parentId: $parentId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      createdTime,
      updatedTime,
      userCreatedTime,
      userUpdatedTime,
      encryptionCipherText,
      encryptionApplied,
      isShared,
      parentId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Tag &&
          other.id == this.id &&
          other.title == this.title &&
          other.createdTime == this.createdTime &&
          other.updatedTime == this.updatedTime &&
          other.userCreatedTime == this.userCreatedTime &&
          other.userUpdatedTime == this.userUpdatedTime &&
          other.encryptionCipherText == this.encryptionCipherText &&
          other.encryptionApplied == this.encryptionApplied &&
          other.isShared == this.isShared &&
          other.parentId == this.parentId);
}

class TagsCompanion extends UpdateCompanion<Tag> {
  final Value<String?> id;
  final Value<String> title;
  final Value<int> createdTime;
  final Value<int> updatedTime;
  final Value<int> userCreatedTime;
  final Value<int> userUpdatedTime;
  final Value<String> encryptionCipherText;
  final Value<int> encryptionApplied;
  final Value<int> isShared;
  final Value<String> parentId;
  const TagsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.updatedTime = const Value.absent(),
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.isShared = const Value.absent(),
    this.parentId = const Value.absent(),
  });
  TagsCompanion.insert({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    required int createdTime,
    required int updatedTime,
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.isShared = const Value.absent(),
    this.parentId = const Value.absent(),
  })  : createdTime = Value(createdTime),
        updatedTime = Value(updatedTime);
  static Insertable<Tag> custom({
    Expression<String?>? id,
    Expression<String>? title,
    Expression<int>? createdTime,
    Expression<int>? updatedTime,
    Expression<int>? userCreatedTime,
    Expression<int>? userUpdatedTime,
    Expression<String>? encryptionCipherText,
    Expression<int>? encryptionApplied,
    Expression<int>? isShared,
    Expression<String>? parentId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (createdTime != null) 'created_time': createdTime,
      if (updatedTime != null) 'updated_time': updatedTime,
      if (userCreatedTime != null) 'user_created_time': userCreatedTime,
      if (userUpdatedTime != null) 'user_updated_time': userUpdatedTime,
      if (encryptionCipherText != null)
        'encryption_cipher_text': encryptionCipherText,
      if (encryptionApplied != null) 'encryption_applied': encryptionApplied,
      if (isShared != null) 'is_shared': isShared,
      if (parentId != null) 'parent_id': parentId,
    });
  }

  TagsCompanion copyWith(
      {Value<String?>? id,
      Value<String>? title,
      Value<int>? createdTime,
      Value<int>? updatedTime,
      Value<int>? userCreatedTime,
      Value<int>? userUpdatedTime,
      Value<String>? encryptionCipherText,
      Value<int>? encryptionApplied,
      Value<int>? isShared,
      Value<String>? parentId}) {
    return TagsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      createdTime: createdTime ?? this.createdTime,
      updatedTime: updatedTime ?? this.updatedTime,
      userCreatedTime: userCreatedTime ?? this.userCreatedTime,
      userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
      encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
      encryptionApplied: encryptionApplied ?? this.encryptionApplied,
      isShared: isShared ?? this.isShared,
      parentId: parentId ?? this.parentId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<int>(updatedTime.value);
    }
    if (userCreatedTime.present) {
      map['user_created_time'] = Variable<int>(userCreatedTime.value);
    }
    if (userUpdatedTime.present) {
      map['user_updated_time'] = Variable<int>(userUpdatedTime.value);
    }
    if (encryptionCipherText.present) {
      map['encryption_cipher_text'] =
          Variable<String>(encryptionCipherText.value);
    }
    if (encryptionApplied.present) {
      map['encryption_applied'] = Variable<int>(encryptionApplied.value);
    }
    if (isShared.present) {
      map['is_shared'] = Variable<int>(isShared.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TagsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('isShared: $isShared, ')
          ..write('parentId: $parentId')
          ..write(')'))
        .toString();
  }
}

class Tags extends Table with TableInfo<Tags, Tag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Tags(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _userCreatedTimeMeta =
      const VerificationMeta('userCreatedTime');
  late final GeneratedColumn<int?> userCreatedTime = GeneratedColumn<int?>(
      'user_created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _userUpdatedTimeMeta =
      const VerificationMeta('userUpdatedTime');
  late final GeneratedColumn<int?> userUpdatedTime = GeneratedColumn<int?>(
      'user_updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _encryptionCipherTextMeta =
      const VerificationMeta('encryptionCipherText');
  late final GeneratedColumn<String?> encryptionCipherText =
      GeneratedColumn<String?>('encryption_cipher_text', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _encryptionAppliedMeta =
      const VerificationMeta('encryptionApplied');
  late final GeneratedColumn<int?> encryptionApplied = GeneratedColumn<int?>(
      'encryption_applied', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _isSharedMeta = const VerificationMeta('isShared');
  late final GeneratedColumn<int?> isShared = GeneratedColumn<int?>(
      'is_shared', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  late final GeneratedColumn<String?> parentId = GeneratedColumn<String?>(
      'parent_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        createdTime,
        updatedTime,
        userCreatedTime,
        userUpdatedTime,
        encryptionCipherText,
        encryptionApplied,
        isShared,
        parentId
      ];
  @override
  String get aliasedName => _alias ?? 'tags';
  @override
  String get actualTableName => 'tags';
  @override
  VerificationContext validateIntegrity(Insertable<Tag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    if (data.containsKey('user_created_time')) {
      context.handle(
          _userCreatedTimeMeta,
          userCreatedTime.isAcceptableOrUnknown(
              data['user_created_time']!, _userCreatedTimeMeta));
    }
    if (data.containsKey('user_updated_time')) {
      context.handle(
          _userUpdatedTimeMeta,
          userUpdatedTime.isAcceptableOrUnknown(
              data['user_updated_time']!, _userUpdatedTimeMeta));
    }
    if (data.containsKey('encryption_cipher_text')) {
      context.handle(
          _encryptionCipherTextMeta,
          encryptionCipherText.isAcceptableOrUnknown(
              data['encryption_cipher_text']!, _encryptionCipherTextMeta));
    }
    if (data.containsKey('encryption_applied')) {
      context.handle(
          _encryptionAppliedMeta,
          encryptionApplied.isAcceptableOrUnknown(
              data['encryption_applied']!, _encryptionAppliedMeta));
    }
    if (data.containsKey('is_shared')) {
      context.handle(_isSharedMeta,
          isShared.isAcceptableOrUnknown(data['is_shared']!, _isSharedMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Tag map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Tag.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Tags createAlias(String alias) {
    return Tags(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class NoteTag extends DataClass implements Insertable<NoteTag> {
  final String? id;
  final String noteId;
  final String tagId;
  final int createdTime;
  final int updatedTime;
  final int userCreatedTime;
  final int userUpdatedTime;
  final String encryptionCipherText;
  final int encryptionApplied;
  final int isShared;
  NoteTag(
      {this.id,
      required this.noteId,
      required this.tagId,
      required this.createdTime,
      required this.updatedTime,
      required this.userCreatedTime,
      required this.userUpdatedTime,
      required this.encryptionCipherText,
      required this.encryptionApplied,
      required this.isShared});
  factory NoteTag.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return NoteTag(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      noteId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}note_id'])!,
      tagId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tag_id'])!,
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
      userCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_created_time'])!,
      userUpdatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_updated_time'])!,
      encryptionCipherText: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_cipher_text'])!,
      encryptionApplied: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_applied'])!,
      isShared: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_shared'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['note_id'] = Variable<String>(noteId);
    map['tag_id'] = Variable<String>(tagId);
    map['created_time'] = Variable<int>(createdTime);
    map['updated_time'] = Variable<int>(updatedTime);
    map['user_created_time'] = Variable<int>(userCreatedTime);
    map['user_updated_time'] = Variable<int>(userUpdatedTime);
    map['encryption_cipher_text'] = Variable<String>(encryptionCipherText);
    map['encryption_applied'] = Variable<int>(encryptionApplied);
    map['is_shared'] = Variable<int>(isShared);
    return map;
  }

  NoteTagsCompanion toCompanion(bool nullToAbsent) {
    return NoteTagsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      noteId: Value(noteId),
      tagId: Value(tagId),
      createdTime: Value(createdTime),
      updatedTime: Value(updatedTime),
      userCreatedTime: Value(userCreatedTime),
      userUpdatedTime: Value(userUpdatedTime),
      encryptionCipherText: Value(encryptionCipherText),
      encryptionApplied: Value(encryptionApplied),
      isShared: Value(isShared),
    );
  }

  factory NoteTag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NoteTag(
      id: serializer.fromJson<String?>(json['id']),
      noteId: serializer.fromJson<String>(json['note_id']),
      tagId: serializer.fromJson<String>(json['tag_id']),
      createdTime: serializer.fromJson<int>(json['created_time']),
      updatedTime: serializer.fromJson<int>(json['updated_time']),
      userCreatedTime: serializer.fromJson<int>(json['user_created_time']),
      userUpdatedTime: serializer.fromJson<int>(json['user_updated_time']),
      encryptionCipherText:
          serializer.fromJson<String>(json['encryption_cipher_text']),
      encryptionApplied: serializer.fromJson<int>(json['encryption_applied']),
      isShared: serializer.fromJson<int>(json['is_shared']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'note_id': serializer.toJson<String>(noteId),
      'tag_id': serializer.toJson<String>(tagId),
      'created_time': serializer.toJson<int>(createdTime),
      'updated_time': serializer.toJson<int>(updatedTime),
      'user_created_time': serializer.toJson<int>(userCreatedTime),
      'user_updated_time': serializer.toJson<int>(userUpdatedTime),
      'encryption_cipher_text': serializer.toJson<String>(encryptionCipherText),
      'encryption_applied': serializer.toJson<int>(encryptionApplied),
      'is_shared': serializer.toJson<int>(isShared),
    };
  }

  NoteTag copyWith(
          {String? id,
          String? noteId,
          String? tagId,
          int? createdTime,
          int? updatedTime,
          int? userCreatedTime,
          int? userUpdatedTime,
          String? encryptionCipherText,
          int? encryptionApplied,
          int? isShared}) =>
      NoteTag(
        id: id ?? this.id,
        noteId: noteId ?? this.noteId,
        tagId: tagId ?? this.tagId,
        createdTime: createdTime ?? this.createdTime,
        updatedTime: updatedTime ?? this.updatedTime,
        userCreatedTime: userCreatedTime ?? this.userCreatedTime,
        userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
        encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
        encryptionApplied: encryptionApplied ?? this.encryptionApplied,
        isShared: isShared ?? this.isShared,
      );
  @override
  String toString() {
    return (StringBuffer('NoteTag(')
          ..write('id: $id, ')
          ..write('noteId: $noteId, ')
          ..write('tagId: $tagId, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('isShared: $isShared')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      noteId,
      tagId,
      createdTime,
      updatedTime,
      userCreatedTime,
      userUpdatedTime,
      encryptionCipherText,
      encryptionApplied,
      isShared);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteTag &&
          other.id == this.id &&
          other.noteId == this.noteId &&
          other.tagId == this.tagId &&
          other.createdTime == this.createdTime &&
          other.updatedTime == this.updatedTime &&
          other.userCreatedTime == this.userCreatedTime &&
          other.userUpdatedTime == this.userUpdatedTime &&
          other.encryptionCipherText == this.encryptionCipherText &&
          other.encryptionApplied == this.encryptionApplied &&
          other.isShared == this.isShared);
}

class NoteTagsCompanion extends UpdateCompanion<NoteTag> {
  final Value<String?> id;
  final Value<String> noteId;
  final Value<String> tagId;
  final Value<int> createdTime;
  final Value<int> updatedTime;
  final Value<int> userCreatedTime;
  final Value<int> userUpdatedTime;
  final Value<String> encryptionCipherText;
  final Value<int> encryptionApplied;
  final Value<int> isShared;
  const NoteTagsCompanion({
    this.id = const Value.absent(),
    this.noteId = const Value.absent(),
    this.tagId = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.updatedTime = const Value.absent(),
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.isShared = const Value.absent(),
  });
  NoteTagsCompanion.insert({
    this.id = const Value.absent(),
    required String noteId,
    required String tagId,
    required int createdTime,
    required int updatedTime,
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.isShared = const Value.absent(),
  })  : noteId = Value(noteId),
        tagId = Value(tagId),
        createdTime = Value(createdTime),
        updatedTime = Value(updatedTime);
  static Insertable<NoteTag> custom({
    Expression<String?>? id,
    Expression<String>? noteId,
    Expression<String>? tagId,
    Expression<int>? createdTime,
    Expression<int>? updatedTime,
    Expression<int>? userCreatedTime,
    Expression<int>? userUpdatedTime,
    Expression<String>? encryptionCipherText,
    Expression<int>? encryptionApplied,
    Expression<int>? isShared,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (noteId != null) 'note_id': noteId,
      if (tagId != null) 'tag_id': tagId,
      if (createdTime != null) 'created_time': createdTime,
      if (updatedTime != null) 'updated_time': updatedTime,
      if (userCreatedTime != null) 'user_created_time': userCreatedTime,
      if (userUpdatedTime != null) 'user_updated_time': userUpdatedTime,
      if (encryptionCipherText != null)
        'encryption_cipher_text': encryptionCipherText,
      if (encryptionApplied != null) 'encryption_applied': encryptionApplied,
      if (isShared != null) 'is_shared': isShared,
    });
  }

  NoteTagsCompanion copyWith(
      {Value<String?>? id,
      Value<String>? noteId,
      Value<String>? tagId,
      Value<int>? createdTime,
      Value<int>? updatedTime,
      Value<int>? userCreatedTime,
      Value<int>? userUpdatedTime,
      Value<String>? encryptionCipherText,
      Value<int>? encryptionApplied,
      Value<int>? isShared}) {
    return NoteTagsCompanion(
      id: id ?? this.id,
      noteId: noteId ?? this.noteId,
      tagId: tagId ?? this.tagId,
      createdTime: createdTime ?? this.createdTime,
      updatedTime: updatedTime ?? this.updatedTime,
      userCreatedTime: userCreatedTime ?? this.userCreatedTime,
      userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
      encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
      encryptionApplied: encryptionApplied ?? this.encryptionApplied,
      isShared: isShared ?? this.isShared,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (noteId.present) {
      map['note_id'] = Variable<String>(noteId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<String>(tagId.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<int>(updatedTime.value);
    }
    if (userCreatedTime.present) {
      map['user_created_time'] = Variable<int>(userCreatedTime.value);
    }
    if (userUpdatedTime.present) {
      map['user_updated_time'] = Variable<int>(userUpdatedTime.value);
    }
    if (encryptionCipherText.present) {
      map['encryption_cipher_text'] =
          Variable<String>(encryptionCipherText.value);
    }
    if (encryptionApplied.present) {
      map['encryption_applied'] = Variable<int>(encryptionApplied.value);
    }
    if (isShared.present) {
      map['is_shared'] = Variable<int>(isShared.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoteTagsCompanion(')
          ..write('id: $id, ')
          ..write('noteId: $noteId, ')
          ..write('tagId: $tagId, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('isShared: $isShared')
          ..write(')'))
        .toString();
  }
}

class NoteTags extends Table with TableInfo<NoteTags, NoteTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  NoteTags(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _noteIdMeta = const VerificationMeta('noteId');
  late final GeneratedColumn<String?> noteId = GeneratedColumn<String?>(
      'note_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  late final GeneratedColumn<String?> tagId = GeneratedColumn<String?>(
      'tag_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _userCreatedTimeMeta =
      const VerificationMeta('userCreatedTime');
  late final GeneratedColumn<int?> userCreatedTime = GeneratedColumn<int?>(
      'user_created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _userUpdatedTimeMeta =
      const VerificationMeta('userUpdatedTime');
  late final GeneratedColumn<int?> userUpdatedTime = GeneratedColumn<int?>(
      'user_updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _encryptionCipherTextMeta =
      const VerificationMeta('encryptionCipherText');
  late final GeneratedColumn<String?> encryptionCipherText =
      GeneratedColumn<String?>('encryption_cipher_text', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _encryptionAppliedMeta =
      const VerificationMeta('encryptionApplied');
  late final GeneratedColumn<int?> encryptionApplied = GeneratedColumn<int?>(
      'encryption_applied', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _isSharedMeta = const VerificationMeta('isShared');
  late final GeneratedColumn<int?> isShared = GeneratedColumn<int?>(
      'is_shared', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        noteId,
        tagId,
        createdTime,
        updatedTime,
        userCreatedTime,
        userUpdatedTime,
        encryptionCipherText,
        encryptionApplied,
        isShared
      ];
  @override
  String get aliasedName => _alias ?? 'note_tags';
  @override
  String get actualTableName => 'note_tags';
  @override
  VerificationContext validateIntegrity(Insertable<NoteTag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('note_id')) {
      context.handle(_noteIdMeta,
          noteId.isAcceptableOrUnknown(data['note_id']!, _noteIdMeta));
    } else if (isInserting) {
      context.missing(_noteIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
          _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta));
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    if (data.containsKey('user_created_time')) {
      context.handle(
          _userCreatedTimeMeta,
          userCreatedTime.isAcceptableOrUnknown(
              data['user_created_time']!, _userCreatedTimeMeta));
    }
    if (data.containsKey('user_updated_time')) {
      context.handle(
          _userUpdatedTimeMeta,
          userUpdatedTime.isAcceptableOrUnknown(
              data['user_updated_time']!, _userUpdatedTimeMeta));
    }
    if (data.containsKey('encryption_cipher_text')) {
      context.handle(
          _encryptionCipherTextMeta,
          encryptionCipherText.isAcceptableOrUnknown(
              data['encryption_cipher_text']!, _encryptionCipherTextMeta));
    }
    if (data.containsKey('encryption_applied')) {
      context.handle(
          _encryptionAppliedMeta,
          encryptionApplied.isAcceptableOrUnknown(
              data['encryption_applied']!, _encryptionAppliedMeta));
    }
    if (data.containsKey('is_shared')) {
      context.handle(_isSharedMeta,
          isShared.isAcceptableOrUnknown(data['is_shared']!, _isSharedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NoteTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    return NoteTag.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  NoteTags createAlias(String alias) {
    return NoteTags(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class SyncItem extends DataClass implements Insertable<SyncItem> {
  final int id;
  final int syncTarget;
  final int syncTime;
  final int itemType;
  final String itemId;
  final int syncDisabled;
  final String syncDisabledReason;
  final int forceSync;
  final int itemLocation;
  SyncItem(
      {required this.id,
      required this.syncTarget,
      required this.syncTime,
      required this.itemType,
      required this.itemId,
      required this.syncDisabled,
      required this.syncDisabledReason,
      required this.forceSync,
      required this.itemLocation});
  factory SyncItem.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SyncItem(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      syncTarget: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_target'])!,
      syncTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_time'])!,
      itemType: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}item_type'])!,
      itemId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}item_id'])!,
      syncDisabled: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_disabled'])!,
      syncDisabledReason: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}sync_disabled_reason'])!,
      forceSync: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}force_sync'])!,
      itemLocation: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}item_location'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['sync_target'] = Variable<int>(syncTarget);
    map['sync_time'] = Variable<int>(syncTime);
    map['item_type'] = Variable<int>(itemType);
    map['item_id'] = Variable<String>(itemId);
    map['sync_disabled'] = Variable<int>(syncDisabled);
    map['sync_disabled_reason'] = Variable<String>(syncDisabledReason);
    map['force_sync'] = Variable<int>(forceSync);
    map['item_location'] = Variable<int>(itemLocation);
    return map;
  }

  SyncItemsCompanion toCompanion(bool nullToAbsent) {
    return SyncItemsCompanion(
      id: Value(id),
      syncTarget: Value(syncTarget),
      syncTime: Value(syncTime),
      itemType: Value(itemType),
      itemId: Value(itemId),
      syncDisabled: Value(syncDisabled),
      syncDisabledReason: Value(syncDisabledReason),
      forceSync: Value(forceSync),
      itemLocation: Value(itemLocation),
    );
  }

  factory SyncItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncItem(
      id: serializer.fromJson<int>(json['id']),
      syncTarget: serializer.fromJson<int>(json['sync_target']),
      syncTime: serializer.fromJson<int>(json['sync_time']),
      itemType: serializer.fromJson<int>(json['item_type']),
      itemId: serializer.fromJson<String>(json['item_id']),
      syncDisabled: serializer.fromJson<int>(json['sync_disabled']),
      syncDisabledReason:
          serializer.fromJson<String>(json['sync_disabled_reason']),
      forceSync: serializer.fromJson<int>(json['force_sync']),
      itemLocation: serializer.fromJson<int>(json['item_location']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sync_target': serializer.toJson<int>(syncTarget),
      'sync_time': serializer.toJson<int>(syncTime),
      'item_type': serializer.toJson<int>(itemType),
      'item_id': serializer.toJson<String>(itemId),
      'sync_disabled': serializer.toJson<int>(syncDisabled),
      'sync_disabled_reason': serializer.toJson<String>(syncDisabledReason),
      'force_sync': serializer.toJson<int>(forceSync),
      'item_location': serializer.toJson<int>(itemLocation),
    };
  }

  SyncItem copyWith(
          {int? id,
          int? syncTarget,
          int? syncTime,
          int? itemType,
          String? itemId,
          int? syncDisabled,
          String? syncDisabledReason,
          int? forceSync,
          int? itemLocation}) =>
      SyncItem(
        id: id ?? this.id,
        syncTarget: syncTarget ?? this.syncTarget,
        syncTime: syncTime ?? this.syncTime,
        itemType: itemType ?? this.itemType,
        itemId: itemId ?? this.itemId,
        syncDisabled: syncDisabled ?? this.syncDisabled,
        syncDisabledReason: syncDisabledReason ?? this.syncDisabledReason,
        forceSync: forceSync ?? this.forceSync,
        itemLocation: itemLocation ?? this.itemLocation,
      );
  @override
  String toString() {
    return (StringBuffer('SyncItem(')
          ..write('id: $id, ')
          ..write('syncTarget: $syncTarget, ')
          ..write('syncTime: $syncTime, ')
          ..write('itemType: $itemType, ')
          ..write('itemId: $itemId, ')
          ..write('syncDisabled: $syncDisabled, ')
          ..write('syncDisabledReason: $syncDisabledReason, ')
          ..write('forceSync: $forceSync, ')
          ..write('itemLocation: $itemLocation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, syncTarget, syncTime, itemType, itemId,
      syncDisabled, syncDisabledReason, forceSync, itemLocation);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncItem &&
          other.id == this.id &&
          other.syncTarget == this.syncTarget &&
          other.syncTime == this.syncTime &&
          other.itemType == this.itemType &&
          other.itemId == this.itemId &&
          other.syncDisabled == this.syncDisabled &&
          other.syncDisabledReason == this.syncDisabledReason &&
          other.forceSync == this.forceSync &&
          other.itemLocation == this.itemLocation);
}

class SyncItemsCompanion extends UpdateCompanion<SyncItem> {
  final Value<int> id;
  final Value<int> syncTarget;
  final Value<int> syncTime;
  final Value<int> itemType;
  final Value<String> itemId;
  final Value<int> syncDisabled;
  final Value<String> syncDisabledReason;
  final Value<int> forceSync;
  final Value<int> itemLocation;
  const SyncItemsCompanion({
    this.id = const Value.absent(),
    this.syncTarget = const Value.absent(),
    this.syncTime = const Value.absent(),
    this.itemType = const Value.absent(),
    this.itemId = const Value.absent(),
    this.syncDisabled = const Value.absent(),
    this.syncDisabledReason = const Value.absent(),
    this.forceSync = const Value.absent(),
    this.itemLocation = const Value.absent(),
  });
  SyncItemsCompanion.insert({
    this.id = const Value.absent(),
    required int syncTarget,
    this.syncTime = const Value.absent(),
    required int itemType,
    required String itemId,
    this.syncDisabled = const Value.absent(),
    this.syncDisabledReason = const Value.absent(),
    this.forceSync = const Value.absent(),
    this.itemLocation = const Value.absent(),
  })  : syncTarget = Value(syncTarget),
        itemType = Value(itemType),
        itemId = Value(itemId);
  static Insertable<SyncItem> custom({
    Expression<int>? id,
    Expression<int>? syncTarget,
    Expression<int>? syncTime,
    Expression<int>? itemType,
    Expression<String>? itemId,
    Expression<int>? syncDisabled,
    Expression<String>? syncDisabledReason,
    Expression<int>? forceSync,
    Expression<int>? itemLocation,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (syncTarget != null) 'sync_target': syncTarget,
      if (syncTime != null) 'sync_time': syncTime,
      if (itemType != null) 'item_type': itemType,
      if (itemId != null) 'item_id': itemId,
      if (syncDisabled != null) 'sync_disabled': syncDisabled,
      if (syncDisabledReason != null)
        'sync_disabled_reason': syncDisabledReason,
      if (forceSync != null) 'force_sync': forceSync,
      if (itemLocation != null) 'item_location': itemLocation,
    });
  }

  SyncItemsCompanion copyWith(
      {Value<int>? id,
      Value<int>? syncTarget,
      Value<int>? syncTime,
      Value<int>? itemType,
      Value<String>? itemId,
      Value<int>? syncDisabled,
      Value<String>? syncDisabledReason,
      Value<int>? forceSync,
      Value<int>? itemLocation}) {
    return SyncItemsCompanion(
      id: id ?? this.id,
      syncTarget: syncTarget ?? this.syncTarget,
      syncTime: syncTime ?? this.syncTime,
      itemType: itemType ?? this.itemType,
      itemId: itemId ?? this.itemId,
      syncDisabled: syncDisabled ?? this.syncDisabled,
      syncDisabledReason: syncDisabledReason ?? this.syncDisabledReason,
      forceSync: forceSync ?? this.forceSync,
      itemLocation: itemLocation ?? this.itemLocation,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (syncTarget.present) {
      map['sync_target'] = Variable<int>(syncTarget.value);
    }
    if (syncTime.present) {
      map['sync_time'] = Variable<int>(syncTime.value);
    }
    if (itemType.present) {
      map['item_type'] = Variable<int>(itemType.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (syncDisabled.present) {
      map['sync_disabled'] = Variable<int>(syncDisabled.value);
    }
    if (syncDisabledReason.present) {
      map['sync_disabled_reason'] = Variable<String>(syncDisabledReason.value);
    }
    if (forceSync.present) {
      map['force_sync'] = Variable<int>(forceSync.value);
    }
    if (itemLocation.present) {
      map['item_location'] = Variable<int>(itemLocation.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncItemsCompanion(')
          ..write('id: $id, ')
          ..write('syncTarget: $syncTarget, ')
          ..write('syncTime: $syncTime, ')
          ..write('itemType: $itemType, ')
          ..write('itemId: $itemId, ')
          ..write('syncDisabled: $syncDisabled, ')
          ..write('syncDisabledReason: $syncDisabledReason, ')
          ..write('forceSync: $forceSync, ')
          ..write('itemLocation: $itemLocation')
          ..write(')'))
        .toString();
  }
}

class SyncItems extends Table with TableInfo<SyncItems, SyncItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SyncItems(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _syncTargetMeta = const VerificationMeta('syncTarget');
  late final GeneratedColumn<int?> syncTarget = GeneratedColumn<int?>(
      'sync_target', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _syncTimeMeta = const VerificationMeta('syncTime');
  late final GeneratedColumn<int?> syncTime = GeneratedColumn<int?>(
      'sync_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _itemTypeMeta = const VerificationMeta('itemType');
  late final GeneratedColumn<int?> itemType = GeneratedColumn<int?>(
      'item_type', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  late final GeneratedColumn<String?> itemId = GeneratedColumn<String?>(
      'item_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _syncDisabledMeta =
      const VerificationMeta('syncDisabled');
  late final GeneratedColumn<int?> syncDisabled = GeneratedColumn<int?>(
      'sync_disabled', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'0\'',
      defaultValue: const CustomExpression<int>('\'0\''));
  final VerificationMeta _syncDisabledReasonMeta =
      const VerificationMeta('syncDisabledReason');
  late final GeneratedColumn<String?> syncDisabledReason =
      GeneratedColumn<String?>('sync_disabled_reason', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _forceSyncMeta = const VerificationMeta('forceSync');
  late final GeneratedColumn<int?> forceSync = GeneratedColumn<int?>(
      'force_sync', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _itemLocationMeta =
      const VerificationMeta('itemLocation');
  late final GeneratedColumn<int?> itemLocation = GeneratedColumn<int?>(
      'item_location', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 1',
      defaultValue: const CustomExpression<int>('1'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        syncTarget,
        syncTime,
        itemType,
        itemId,
        syncDisabled,
        syncDisabledReason,
        forceSync,
        itemLocation
      ];
  @override
  String get aliasedName => _alias ?? 'sync_items';
  @override
  String get actualTableName => 'sync_items';
  @override
  VerificationContext validateIntegrity(Insertable<SyncItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('sync_target')) {
      context.handle(
          _syncTargetMeta,
          syncTarget.isAcceptableOrUnknown(
              data['sync_target']!, _syncTargetMeta));
    } else if (isInserting) {
      context.missing(_syncTargetMeta);
    }
    if (data.containsKey('sync_time')) {
      context.handle(_syncTimeMeta,
          syncTime.isAcceptableOrUnknown(data['sync_time']!, _syncTimeMeta));
    }
    if (data.containsKey('item_type')) {
      context.handle(_itemTypeMeta,
          itemType.isAcceptableOrUnknown(data['item_type']!, _itemTypeMeta));
    } else if (isInserting) {
      context.missing(_itemTypeMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('sync_disabled')) {
      context.handle(
          _syncDisabledMeta,
          syncDisabled.isAcceptableOrUnknown(
              data['sync_disabled']!, _syncDisabledMeta));
    }
    if (data.containsKey('sync_disabled_reason')) {
      context.handle(
          _syncDisabledReasonMeta,
          syncDisabledReason.isAcceptableOrUnknown(
              data['sync_disabled_reason']!, _syncDisabledReasonMeta));
    }
    if (data.containsKey('force_sync')) {
      context.handle(_forceSyncMeta,
          forceSync.isAcceptableOrUnknown(data['force_sync']!, _forceSyncMeta));
    }
    if (data.containsKey('item_location')) {
      context.handle(
          _itemLocationMeta,
          itemLocation.isAcceptableOrUnknown(
              data['item_location']!, _itemLocationMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SyncItem.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  SyncItems createAlias(String alias) {
    return SyncItems(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class DeletedItem extends DataClass implements Insertable<DeletedItem> {
  final int id;
  final int itemType;
  final String itemId;
  final int deletedTime;
  final int syncTarget;
  DeletedItem(
      {required this.id,
      required this.itemType,
      required this.itemId,
      required this.deletedTime,
      required this.syncTarget});
  factory DeletedItem.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DeletedItem(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      itemType: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}item_type'])!,
      itemId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}item_id'])!,
      deletedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_time'])!,
      syncTarget: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sync_target'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_type'] = Variable<int>(itemType);
    map['item_id'] = Variable<String>(itemId);
    map['deleted_time'] = Variable<int>(deletedTime);
    map['sync_target'] = Variable<int>(syncTarget);
    return map;
  }

  DeletedItemsCompanion toCompanion(bool nullToAbsent) {
    return DeletedItemsCompanion(
      id: Value(id),
      itemType: Value(itemType),
      itemId: Value(itemId),
      deletedTime: Value(deletedTime),
      syncTarget: Value(syncTarget),
    );
  }

  factory DeletedItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DeletedItem(
      id: serializer.fromJson<int>(json['id']),
      itemType: serializer.fromJson<int>(json['item_type']),
      itemId: serializer.fromJson<String>(json['item_id']),
      deletedTime: serializer.fromJson<int>(json['deleted_time']),
      syncTarget: serializer.fromJson<int>(json['sync_target']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'item_type': serializer.toJson<int>(itemType),
      'item_id': serializer.toJson<String>(itemId),
      'deleted_time': serializer.toJson<int>(deletedTime),
      'sync_target': serializer.toJson<int>(syncTarget),
    };
  }

  DeletedItem copyWith(
          {int? id,
          int? itemType,
          String? itemId,
          int? deletedTime,
          int? syncTarget}) =>
      DeletedItem(
        id: id ?? this.id,
        itemType: itemType ?? this.itemType,
        itemId: itemId ?? this.itemId,
        deletedTime: deletedTime ?? this.deletedTime,
        syncTarget: syncTarget ?? this.syncTarget,
      );
  @override
  String toString() {
    return (StringBuffer('DeletedItem(')
          ..write('id: $id, ')
          ..write('itemType: $itemType, ')
          ..write('itemId: $itemId, ')
          ..write('deletedTime: $deletedTime, ')
          ..write('syncTarget: $syncTarget')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, itemType, itemId, deletedTime, syncTarget);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DeletedItem &&
          other.id == this.id &&
          other.itemType == this.itemType &&
          other.itemId == this.itemId &&
          other.deletedTime == this.deletedTime &&
          other.syncTarget == this.syncTarget);
}

class DeletedItemsCompanion extends UpdateCompanion<DeletedItem> {
  final Value<int> id;
  final Value<int> itemType;
  final Value<String> itemId;
  final Value<int> deletedTime;
  final Value<int> syncTarget;
  const DeletedItemsCompanion({
    this.id = const Value.absent(),
    this.itemType = const Value.absent(),
    this.itemId = const Value.absent(),
    this.deletedTime = const Value.absent(),
    this.syncTarget = const Value.absent(),
  });
  DeletedItemsCompanion.insert({
    this.id = const Value.absent(),
    required int itemType,
    required String itemId,
    required int deletedTime,
    required int syncTarget,
  })  : itemType = Value(itemType),
        itemId = Value(itemId),
        deletedTime = Value(deletedTime),
        syncTarget = Value(syncTarget);
  static Insertable<DeletedItem> custom({
    Expression<int>? id,
    Expression<int>? itemType,
    Expression<String>? itemId,
    Expression<int>? deletedTime,
    Expression<int>? syncTarget,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemType != null) 'item_type': itemType,
      if (itemId != null) 'item_id': itemId,
      if (deletedTime != null) 'deleted_time': deletedTime,
      if (syncTarget != null) 'sync_target': syncTarget,
    });
  }

  DeletedItemsCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemType,
      Value<String>? itemId,
      Value<int>? deletedTime,
      Value<int>? syncTarget}) {
    return DeletedItemsCompanion(
      id: id ?? this.id,
      itemType: itemType ?? this.itemType,
      itemId: itemId ?? this.itemId,
      deletedTime: deletedTime ?? this.deletedTime,
      syncTarget: syncTarget ?? this.syncTarget,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemType.present) {
      map['item_type'] = Variable<int>(itemType.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (deletedTime.present) {
      map['deleted_time'] = Variable<int>(deletedTime.value);
    }
    if (syncTarget.present) {
      map['sync_target'] = Variable<int>(syncTarget.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DeletedItemsCompanion(')
          ..write('id: $id, ')
          ..write('itemType: $itemType, ')
          ..write('itemId: $itemId, ')
          ..write('deletedTime: $deletedTime, ')
          ..write('syncTarget: $syncTarget')
          ..write(')'))
        .toString();
  }
}

class DeletedItems extends Table with TableInfo<DeletedItems, DeletedItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  DeletedItems(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _itemTypeMeta = const VerificationMeta('itemType');
  late final GeneratedColumn<int?> itemType = GeneratedColumn<int?>(
      'item_type', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  late final GeneratedColumn<String?> itemId = GeneratedColumn<String?>(
      'item_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _deletedTimeMeta =
      const VerificationMeta('deletedTime');
  late final GeneratedColumn<int?> deletedTime = GeneratedColumn<int?>(
      'deleted_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _syncTargetMeta = const VerificationMeta('syncTarget');
  late final GeneratedColumn<int?> syncTarget = GeneratedColumn<int?>(
      'sync_target', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [id, itemType, itemId, deletedTime, syncTarget];
  @override
  String get aliasedName => _alias ?? 'deleted_items';
  @override
  String get actualTableName => 'deleted_items';
  @override
  VerificationContext validateIntegrity(Insertable<DeletedItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_type')) {
      context.handle(_itemTypeMeta,
          itemType.isAcceptableOrUnknown(data['item_type']!, _itemTypeMeta));
    } else if (isInserting) {
      context.missing(_itemTypeMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('deleted_time')) {
      context.handle(
          _deletedTimeMeta,
          deletedTime.isAcceptableOrUnknown(
              data['deleted_time']!, _deletedTimeMeta));
    } else if (isInserting) {
      context.missing(_deletedTimeMeta);
    }
    if (data.containsKey('sync_target')) {
      context.handle(
          _syncTargetMeta,
          syncTarget.isAcceptableOrUnknown(
              data['sync_target']!, _syncTargetMeta));
    } else if (isInserting) {
      context.missing(_syncTargetMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DeletedItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DeletedItem.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  DeletedItems createAlias(String alias) {
    return DeletedItems(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Alarm extends DataClass implements Insertable<Alarm> {
  final int id;
  final String noteId;
  final int triggerTime;
  Alarm({required this.id, required this.noteId, required this.triggerTime});
  factory Alarm.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Alarm(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      noteId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}note_id'])!,
      triggerTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}trigger_time'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['note_id'] = Variable<String>(noteId);
    map['trigger_time'] = Variable<int>(triggerTime);
    return map;
  }

  AlarmsCompanion toCompanion(bool nullToAbsent) {
    return AlarmsCompanion(
      id: Value(id),
      noteId: Value(noteId),
      triggerTime: Value(triggerTime),
    );
  }

  factory Alarm.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Alarm(
      id: serializer.fromJson<int>(json['id']),
      noteId: serializer.fromJson<String>(json['note_id']),
      triggerTime: serializer.fromJson<int>(json['trigger_time']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'note_id': serializer.toJson<String>(noteId),
      'trigger_time': serializer.toJson<int>(triggerTime),
    };
  }

  Alarm copyWith({int? id, String? noteId, int? triggerTime}) => Alarm(
        id: id ?? this.id,
        noteId: noteId ?? this.noteId,
        triggerTime: triggerTime ?? this.triggerTime,
      );
  @override
  String toString() {
    return (StringBuffer('Alarm(')
          ..write('id: $id, ')
          ..write('noteId: $noteId, ')
          ..write('triggerTime: $triggerTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, noteId, triggerTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Alarm &&
          other.id == this.id &&
          other.noteId == this.noteId &&
          other.triggerTime == this.triggerTime);
}

class AlarmsCompanion extends UpdateCompanion<Alarm> {
  final Value<int> id;
  final Value<String> noteId;
  final Value<int> triggerTime;
  const AlarmsCompanion({
    this.id = const Value.absent(),
    this.noteId = const Value.absent(),
    this.triggerTime = const Value.absent(),
  });
  AlarmsCompanion.insert({
    this.id = const Value.absent(),
    required String noteId,
    required int triggerTime,
  })  : noteId = Value(noteId),
        triggerTime = Value(triggerTime);
  static Insertable<Alarm> custom({
    Expression<int>? id,
    Expression<String>? noteId,
    Expression<int>? triggerTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (noteId != null) 'note_id': noteId,
      if (triggerTime != null) 'trigger_time': triggerTime,
    });
  }

  AlarmsCompanion copyWith(
      {Value<int>? id, Value<String>? noteId, Value<int>? triggerTime}) {
    return AlarmsCompanion(
      id: id ?? this.id,
      noteId: noteId ?? this.noteId,
      triggerTime: triggerTime ?? this.triggerTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (noteId.present) {
      map['note_id'] = Variable<String>(noteId.value);
    }
    if (triggerTime.present) {
      map['trigger_time'] = Variable<int>(triggerTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlarmsCompanion(')
          ..write('id: $id, ')
          ..write('noteId: $noteId, ')
          ..write('triggerTime: $triggerTime')
          ..write(')'))
        .toString();
  }
}

class Alarms extends Table with TableInfo<Alarms, Alarm> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Alarms(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _noteIdMeta = const VerificationMeta('noteId');
  late final GeneratedColumn<String?> noteId = GeneratedColumn<String?>(
      'note_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _triggerTimeMeta =
      const VerificationMeta('triggerTime');
  late final GeneratedColumn<int?> triggerTime = GeneratedColumn<int?>(
      'trigger_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [id, noteId, triggerTime];
  @override
  String get aliasedName => _alias ?? 'alarms';
  @override
  String get actualTableName => 'alarms';
  @override
  VerificationContext validateIntegrity(Insertable<Alarm> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('note_id')) {
      context.handle(_noteIdMeta,
          noteId.isAcceptableOrUnknown(data['note_id']!, _noteIdMeta));
    } else if (isInserting) {
      context.missing(_noteIdMeta);
    }
    if (data.containsKey('trigger_time')) {
      context.handle(
          _triggerTimeMeta,
          triggerTime.isAcceptableOrUnknown(
              data['trigger_time']!, _triggerTimeMeta));
    } else if (isInserting) {
      context.missing(_triggerTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Alarm map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Alarm.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Alarms createAlias(String alias) {
    return Alarms(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class ItemChange extends DataClass implements Insertable<ItemChange> {
  final int id;
  final int itemType;
  final String itemId;
  final int type;
  final int createdTime;
  final int source;
  final String beforeChangeItem;
  ItemChange(
      {required this.id,
      required this.itemType,
      required this.itemId,
      required this.type,
      required this.createdTime,
      required this.source,
      required this.beforeChangeItem});
  factory ItemChange.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ItemChange(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      itemType: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}item_type'])!,
      itemId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}item_id'])!,
      type: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
      source: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}source'])!,
      beforeChangeItem: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}before_change_item'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_type'] = Variable<int>(itemType);
    map['item_id'] = Variable<String>(itemId);
    map['type'] = Variable<int>(type);
    map['created_time'] = Variable<int>(createdTime);
    map['source'] = Variable<int>(source);
    map['before_change_item'] = Variable<String>(beforeChangeItem);
    return map;
  }

  ItemChangesCompanion toCompanion(bool nullToAbsent) {
    return ItemChangesCompanion(
      id: Value(id),
      itemType: Value(itemType),
      itemId: Value(itemId),
      type: Value(type),
      createdTime: Value(createdTime),
      source: Value(source),
      beforeChangeItem: Value(beforeChangeItem),
    );
  }

  factory ItemChange.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemChange(
      id: serializer.fromJson<int>(json['id']),
      itemType: serializer.fromJson<int>(json['item_type']),
      itemId: serializer.fromJson<String>(json['item_id']),
      type: serializer.fromJson<int>(json['type']),
      createdTime: serializer.fromJson<int>(json['created_time']),
      source: serializer.fromJson<int>(json['source']),
      beforeChangeItem: serializer.fromJson<String>(json['before_change_item']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'item_type': serializer.toJson<int>(itemType),
      'item_id': serializer.toJson<String>(itemId),
      'type': serializer.toJson<int>(type),
      'created_time': serializer.toJson<int>(createdTime),
      'source': serializer.toJson<int>(source),
      'before_change_item': serializer.toJson<String>(beforeChangeItem),
    };
  }

  ItemChange copyWith(
          {int? id,
          int? itemType,
          String? itemId,
          int? type,
          int? createdTime,
          int? source,
          String? beforeChangeItem}) =>
      ItemChange(
        id: id ?? this.id,
        itemType: itemType ?? this.itemType,
        itemId: itemId ?? this.itemId,
        type: type ?? this.type,
        createdTime: createdTime ?? this.createdTime,
        source: source ?? this.source,
        beforeChangeItem: beforeChangeItem ?? this.beforeChangeItem,
      );
  @override
  String toString() {
    return (StringBuffer('ItemChange(')
          ..write('id: $id, ')
          ..write('itemType: $itemType, ')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('createdTime: $createdTime, ')
          ..write('source: $source, ')
          ..write('beforeChangeItem: $beforeChangeItem')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, itemType, itemId, type, createdTime, source, beforeChangeItem);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemChange &&
          other.id == this.id &&
          other.itemType == this.itemType &&
          other.itemId == this.itemId &&
          other.type == this.type &&
          other.createdTime == this.createdTime &&
          other.source == this.source &&
          other.beforeChangeItem == this.beforeChangeItem);
}

class ItemChangesCompanion extends UpdateCompanion<ItemChange> {
  final Value<int> id;
  final Value<int> itemType;
  final Value<String> itemId;
  final Value<int> type;
  final Value<int> createdTime;
  final Value<int> source;
  final Value<String> beforeChangeItem;
  const ItemChangesCompanion({
    this.id = const Value.absent(),
    this.itemType = const Value.absent(),
    this.itemId = const Value.absent(),
    this.type = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.source = const Value.absent(),
    this.beforeChangeItem = const Value.absent(),
  });
  ItemChangesCompanion.insert({
    this.id = const Value.absent(),
    required int itemType,
    required String itemId,
    required int type,
    required int createdTime,
    this.source = const Value.absent(),
    this.beforeChangeItem = const Value.absent(),
  })  : itemType = Value(itemType),
        itemId = Value(itemId),
        type = Value(type),
        createdTime = Value(createdTime);
  static Insertable<ItemChange> custom({
    Expression<int>? id,
    Expression<int>? itemType,
    Expression<String>? itemId,
    Expression<int>? type,
    Expression<int>? createdTime,
    Expression<int>? source,
    Expression<String>? beforeChangeItem,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemType != null) 'item_type': itemType,
      if (itemId != null) 'item_id': itemId,
      if (type != null) 'type': type,
      if (createdTime != null) 'created_time': createdTime,
      if (source != null) 'source': source,
      if (beforeChangeItem != null) 'before_change_item': beforeChangeItem,
    });
  }

  ItemChangesCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemType,
      Value<String>? itemId,
      Value<int>? type,
      Value<int>? createdTime,
      Value<int>? source,
      Value<String>? beforeChangeItem}) {
    return ItemChangesCompanion(
      id: id ?? this.id,
      itemType: itemType ?? this.itemType,
      itemId: itemId ?? this.itemId,
      type: type ?? this.type,
      createdTime: createdTime ?? this.createdTime,
      source: source ?? this.source,
      beforeChangeItem: beforeChangeItem ?? this.beforeChangeItem,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemType.present) {
      map['item_type'] = Variable<int>(itemType.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    if (source.present) {
      map['source'] = Variable<int>(source.value);
    }
    if (beforeChangeItem.present) {
      map['before_change_item'] = Variable<String>(beforeChangeItem.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemChangesCompanion(')
          ..write('id: $id, ')
          ..write('itemType: $itemType, ')
          ..write('itemId: $itemId, ')
          ..write('type: $type, ')
          ..write('createdTime: $createdTime, ')
          ..write('source: $source, ')
          ..write('beforeChangeItem: $beforeChangeItem')
          ..write(')'))
        .toString();
  }
}

class ItemChanges extends Table with TableInfo<ItemChanges, ItemChange> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  ItemChanges(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _itemTypeMeta = const VerificationMeta('itemType');
  late final GeneratedColumn<int?> itemType = GeneratedColumn<int?>(
      'item_type', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  late final GeneratedColumn<String?> itemId = GeneratedColumn<String?>(
      'item_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<int?> type = GeneratedColumn<int?>(
      'type', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _sourceMeta = const VerificationMeta('source');
  late final GeneratedColumn<int?> source = GeneratedColumn<int?>(
      'source', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 1',
      defaultValue: const CustomExpression<int>('1'));
  final VerificationMeta _beforeChangeItemMeta =
      const VerificationMeta('beforeChangeItem');
  late final GeneratedColumn<String?> beforeChangeItem =
      GeneratedColumn<String?>('before_change_item', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  @override
  List<GeneratedColumn> get $columns =>
      [id, itemType, itemId, type, createdTime, source, beforeChangeItem];
  @override
  String get aliasedName => _alias ?? 'item_changes';
  @override
  String get actualTableName => 'item_changes';
  @override
  VerificationContext validateIntegrity(Insertable<ItemChange> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_type')) {
      context.handle(_itemTypeMeta,
          itemType.isAcceptableOrUnknown(data['item_type']!, _itemTypeMeta));
    } else if (isInserting) {
      context.missing(_itemTypeMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    }
    if (data.containsKey('before_change_item')) {
      context.handle(
          _beforeChangeItemMeta,
          beforeChangeItem.isAcceptableOrUnknown(
              data['before_change_item']!, _beforeChangeItemMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemChange map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ItemChange.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  ItemChanges createAlias(String alias) {
    return ItemChanges(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class NoteResource extends DataClass implements Insertable<NoteResource> {
  final int id;
  final String noteId;
  final String resourceId;
  final int isAssociated;
  final int lastSeenTime;
  NoteResource(
      {required this.id,
      required this.noteId,
      required this.resourceId,
      required this.isAssociated,
      required this.lastSeenTime});
  factory NoteResource.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return NoteResource(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      noteId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}note_id'])!,
      resourceId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}resource_id'])!,
      isAssociated: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_associated'])!,
      lastSeenTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_seen_time'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['note_id'] = Variable<String>(noteId);
    map['resource_id'] = Variable<String>(resourceId);
    map['is_associated'] = Variable<int>(isAssociated);
    map['last_seen_time'] = Variable<int>(lastSeenTime);
    return map;
  }

  NoteResourcesCompanion toCompanion(bool nullToAbsent) {
    return NoteResourcesCompanion(
      id: Value(id),
      noteId: Value(noteId),
      resourceId: Value(resourceId),
      isAssociated: Value(isAssociated),
      lastSeenTime: Value(lastSeenTime),
    );
  }

  factory NoteResource.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NoteResource(
      id: serializer.fromJson<int>(json['id']),
      noteId: serializer.fromJson<String>(json['note_id']),
      resourceId: serializer.fromJson<String>(json['resource_id']),
      isAssociated: serializer.fromJson<int>(json['is_associated']),
      lastSeenTime: serializer.fromJson<int>(json['last_seen_time']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'note_id': serializer.toJson<String>(noteId),
      'resource_id': serializer.toJson<String>(resourceId),
      'is_associated': serializer.toJson<int>(isAssociated),
      'last_seen_time': serializer.toJson<int>(lastSeenTime),
    };
  }

  NoteResource copyWith(
          {int? id,
          String? noteId,
          String? resourceId,
          int? isAssociated,
          int? lastSeenTime}) =>
      NoteResource(
        id: id ?? this.id,
        noteId: noteId ?? this.noteId,
        resourceId: resourceId ?? this.resourceId,
        isAssociated: isAssociated ?? this.isAssociated,
        lastSeenTime: lastSeenTime ?? this.lastSeenTime,
      );
  @override
  String toString() {
    return (StringBuffer('NoteResource(')
          ..write('id: $id, ')
          ..write('noteId: $noteId, ')
          ..write('resourceId: $resourceId, ')
          ..write('isAssociated: $isAssociated, ')
          ..write('lastSeenTime: $lastSeenTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, noteId, resourceId, isAssociated, lastSeenTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NoteResource &&
          other.id == this.id &&
          other.noteId == this.noteId &&
          other.resourceId == this.resourceId &&
          other.isAssociated == this.isAssociated &&
          other.lastSeenTime == this.lastSeenTime);
}

class NoteResourcesCompanion extends UpdateCompanion<NoteResource> {
  final Value<int> id;
  final Value<String> noteId;
  final Value<String> resourceId;
  final Value<int> isAssociated;
  final Value<int> lastSeenTime;
  const NoteResourcesCompanion({
    this.id = const Value.absent(),
    this.noteId = const Value.absent(),
    this.resourceId = const Value.absent(),
    this.isAssociated = const Value.absent(),
    this.lastSeenTime = const Value.absent(),
  });
  NoteResourcesCompanion.insert({
    this.id = const Value.absent(),
    required String noteId,
    required String resourceId,
    required int isAssociated,
    required int lastSeenTime,
  })  : noteId = Value(noteId),
        resourceId = Value(resourceId),
        isAssociated = Value(isAssociated),
        lastSeenTime = Value(lastSeenTime);
  static Insertable<NoteResource> custom({
    Expression<int>? id,
    Expression<String>? noteId,
    Expression<String>? resourceId,
    Expression<int>? isAssociated,
    Expression<int>? lastSeenTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (noteId != null) 'note_id': noteId,
      if (resourceId != null) 'resource_id': resourceId,
      if (isAssociated != null) 'is_associated': isAssociated,
      if (lastSeenTime != null) 'last_seen_time': lastSeenTime,
    });
  }

  NoteResourcesCompanion copyWith(
      {Value<int>? id,
      Value<String>? noteId,
      Value<String>? resourceId,
      Value<int>? isAssociated,
      Value<int>? lastSeenTime}) {
    return NoteResourcesCompanion(
      id: id ?? this.id,
      noteId: noteId ?? this.noteId,
      resourceId: resourceId ?? this.resourceId,
      isAssociated: isAssociated ?? this.isAssociated,
      lastSeenTime: lastSeenTime ?? this.lastSeenTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (noteId.present) {
      map['note_id'] = Variable<String>(noteId.value);
    }
    if (resourceId.present) {
      map['resource_id'] = Variable<String>(resourceId.value);
    }
    if (isAssociated.present) {
      map['is_associated'] = Variable<int>(isAssociated.value);
    }
    if (lastSeenTime.present) {
      map['last_seen_time'] = Variable<int>(lastSeenTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NoteResourcesCompanion(')
          ..write('id: $id, ')
          ..write('noteId: $noteId, ')
          ..write('resourceId: $resourceId, ')
          ..write('isAssociated: $isAssociated, ')
          ..write('lastSeenTime: $lastSeenTime')
          ..write(')'))
        .toString();
  }
}

class NoteResources extends Table with TableInfo<NoteResources, NoteResource> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  NoteResources(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _noteIdMeta = const VerificationMeta('noteId');
  late final GeneratedColumn<String?> noteId = GeneratedColumn<String?>(
      'note_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _resourceIdMeta = const VerificationMeta('resourceId');
  late final GeneratedColumn<String?> resourceId = GeneratedColumn<String?>(
      'resource_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isAssociatedMeta =
      const VerificationMeta('isAssociated');
  late final GeneratedColumn<int?> isAssociated = GeneratedColumn<int?>(
      'is_associated', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _lastSeenTimeMeta =
      const VerificationMeta('lastSeenTime');
  late final GeneratedColumn<int?> lastSeenTime = GeneratedColumn<int?>(
      'last_seen_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [id, noteId, resourceId, isAssociated, lastSeenTime];
  @override
  String get aliasedName => _alias ?? 'note_resources';
  @override
  String get actualTableName => 'note_resources';
  @override
  VerificationContext validateIntegrity(Insertable<NoteResource> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('note_id')) {
      context.handle(_noteIdMeta,
          noteId.isAcceptableOrUnknown(data['note_id']!, _noteIdMeta));
    } else if (isInserting) {
      context.missing(_noteIdMeta);
    }
    if (data.containsKey('resource_id')) {
      context.handle(
          _resourceIdMeta,
          resourceId.isAcceptableOrUnknown(
              data['resource_id']!, _resourceIdMeta));
    } else if (isInserting) {
      context.missing(_resourceIdMeta);
    }
    if (data.containsKey('is_associated')) {
      context.handle(
          _isAssociatedMeta,
          isAssociated.isAcceptableOrUnknown(
              data['is_associated']!, _isAssociatedMeta));
    } else if (isInserting) {
      context.missing(_isAssociatedMeta);
    }
    if (data.containsKey('last_seen_time')) {
      context.handle(
          _lastSeenTimeMeta,
          lastSeenTime.isAcceptableOrUnknown(
              data['last_seen_time']!, _lastSeenTimeMeta));
    } else if (isInserting) {
      context.missing(_lastSeenTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NoteResource map(Map<String, dynamic> data, {String? tablePrefix}) {
    return NoteResource.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  NoteResources createAlias(String alias) {
    return NoteResources(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class ResourceLocalState extends DataClass
    implements Insertable<ResourceLocalState> {
  final int id;
  final String resourceId;
  final int fetchStatus;
  final String fetchError;
  ResourceLocalState(
      {required this.id,
      required this.resourceId,
      required this.fetchStatus,
      required this.fetchError});
  factory ResourceLocalState.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ResourceLocalState(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      resourceId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}resource_id'])!,
      fetchStatus: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fetch_status'])!,
      fetchError: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fetch_error'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['resource_id'] = Variable<String>(resourceId);
    map['fetch_status'] = Variable<int>(fetchStatus);
    map['fetch_error'] = Variable<String>(fetchError);
    return map;
  }

  ResourceLocalStatesCompanion toCompanion(bool nullToAbsent) {
    return ResourceLocalStatesCompanion(
      id: Value(id),
      resourceId: Value(resourceId),
      fetchStatus: Value(fetchStatus),
      fetchError: Value(fetchError),
    );
  }

  factory ResourceLocalState.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResourceLocalState(
      id: serializer.fromJson<int>(json['id']),
      resourceId: serializer.fromJson<String>(json['resource_id']),
      fetchStatus: serializer.fromJson<int>(json['fetch_status']),
      fetchError: serializer.fromJson<String>(json['fetch_error']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'resource_id': serializer.toJson<String>(resourceId),
      'fetch_status': serializer.toJson<int>(fetchStatus),
      'fetch_error': serializer.toJson<String>(fetchError),
    };
  }

  ResourceLocalState copyWith(
          {int? id,
          String? resourceId,
          int? fetchStatus,
          String? fetchError}) =>
      ResourceLocalState(
        id: id ?? this.id,
        resourceId: resourceId ?? this.resourceId,
        fetchStatus: fetchStatus ?? this.fetchStatus,
        fetchError: fetchError ?? this.fetchError,
      );
  @override
  String toString() {
    return (StringBuffer('ResourceLocalState(')
          ..write('id: $id, ')
          ..write('resourceId: $resourceId, ')
          ..write('fetchStatus: $fetchStatus, ')
          ..write('fetchError: $fetchError')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, resourceId, fetchStatus, fetchError);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResourceLocalState &&
          other.id == this.id &&
          other.resourceId == this.resourceId &&
          other.fetchStatus == this.fetchStatus &&
          other.fetchError == this.fetchError);
}

class ResourceLocalStatesCompanion extends UpdateCompanion<ResourceLocalState> {
  final Value<int> id;
  final Value<String> resourceId;
  final Value<int> fetchStatus;
  final Value<String> fetchError;
  const ResourceLocalStatesCompanion({
    this.id = const Value.absent(),
    this.resourceId = const Value.absent(),
    this.fetchStatus = const Value.absent(),
    this.fetchError = const Value.absent(),
  });
  ResourceLocalStatesCompanion.insert({
    this.id = const Value.absent(),
    required String resourceId,
    this.fetchStatus = const Value.absent(),
    this.fetchError = const Value.absent(),
  }) : resourceId = Value(resourceId);
  static Insertable<ResourceLocalState> custom({
    Expression<int>? id,
    Expression<String>? resourceId,
    Expression<int>? fetchStatus,
    Expression<String>? fetchError,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (resourceId != null) 'resource_id': resourceId,
      if (fetchStatus != null) 'fetch_status': fetchStatus,
      if (fetchError != null) 'fetch_error': fetchError,
    });
  }

  ResourceLocalStatesCompanion copyWith(
      {Value<int>? id,
      Value<String>? resourceId,
      Value<int>? fetchStatus,
      Value<String>? fetchError}) {
    return ResourceLocalStatesCompanion(
      id: id ?? this.id,
      resourceId: resourceId ?? this.resourceId,
      fetchStatus: fetchStatus ?? this.fetchStatus,
      fetchError: fetchError ?? this.fetchError,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (resourceId.present) {
      map['resource_id'] = Variable<String>(resourceId.value);
    }
    if (fetchStatus.present) {
      map['fetch_status'] = Variable<int>(fetchStatus.value);
    }
    if (fetchError.present) {
      map['fetch_error'] = Variable<String>(fetchError.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResourceLocalStatesCompanion(')
          ..write('id: $id, ')
          ..write('resourceId: $resourceId, ')
          ..write('fetchStatus: $fetchStatus, ')
          ..write('fetchError: $fetchError')
          ..write(')'))
        .toString();
  }
}

class ResourceLocalStates extends Table
    with TableInfo<ResourceLocalStates, ResourceLocalState> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  ResourceLocalStates(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _resourceIdMeta = const VerificationMeta('resourceId');
  late final GeneratedColumn<String?> resourceId = GeneratedColumn<String?>(
      'resource_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _fetchStatusMeta =
      const VerificationMeta('fetchStatus');
  late final GeneratedColumn<int?> fetchStatus = GeneratedColumn<int?>(
      'fetch_status', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'2\'',
      defaultValue: const CustomExpression<int>('\'2\''));
  final VerificationMeta _fetchErrorMeta = const VerificationMeta('fetchError');
  late final GeneratedColumn<String?> fetchError = GeneratedColumn<String?>(
      'fetch_error', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  @override
  List<GeneratedColumn> get $columns =>
      [id, resourceId, fetchStatus, fetchError];
  @override
  String get aliasedName => _alias ?? 'resource_local_states';
  @override
  String get actualTableName => 'resource_local_states';
  @override
  VerificationContext validateIntegrity(Insertable<ResourceLocalState> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('resource_id')) {
      context.handle(
          _resourceIdMeta,
          resourceId.isAcceptableOrUnknown(
              data['resource_id']!, _resourceIdMeta));
    } else if (isInserting) {
      context.missing(_resourceIdMeta);
    }
    if (data.containsKey('fetch_status')) {
      context.handle(
          _fetchStatusMeta,
          fetchStatus.isAcceptableOrUnknown(
              data['fetch_status']!, _fetchStatusMeta));
    }
    if (data.containsKey('fetch_error')) {
      context.handle(
          _fetchErrorMeta,
          fetchError.isAcceptableOrUnknown(
              data['fetch_error']!, _fetchErrorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ResourceLocalState map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ResourceLocalState.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  ResourceLocalStates createAlias(String alias) {
    return ResourceLocalStates(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Revision extends DataClass implements Insertable<Revision> {
  final String? id;
  final String parentId;
  final int itemType;
  final String itemId;
  final int itemUpdatedTime;
  final String titleDiff;
  final String bodyDiff;
  final String metadataDiff;
  final String encryptionCipherText;
  final int encryptionApplied;
  final int updatedTime;
  final int createdTime;
  Revision(
      {this.id,
      required this.parentId,
      required this.itemType,
      required this.itemId,
      required this.itemUpdatedTime,
      required this.titleDiff,
      required this.bodyDiff,
      required this.metadataDiff,
      required this.encryptionCipherText,
      required this.encryptionApplied,
      required this.updatedTime,
      required this.createdTime});
  factory Revision.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Revision(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      parentId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}parent_id'])!,
      itemType: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}item_type'])!,
      itemId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}item_id'])!,
      itemUpdatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}item_updated_time'])!,
      titleDiff: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title_diff'])!,
      bodyDiff: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}body_diff'])!,
      metadataDiff: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}metadata_diff'])!,
      encryptionCipherText: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_cipher_text'])!,
      encryptionApplied: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_applied'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['parent_id'] = Variable<String>(parentId);
    map['item_type'] = Variable<int>(itemType);
    map['item_id'] = Variable<String>(itemId);
    map['item_updated_time'] = Variable<int>(itemUpdatedTime);
    map['title_diff'] = Variable<String>(titleDiff);
    map['body_diff'] = Variable<String>(bodyDiff);
    map['metadata_diff'] = Variable<String>(metadataDiff);
    map['encryption_cipher_text'] = Variable<String>(encryptionCipherText);
    map['encryption_applied'] = Variable<int>(encryptionApplied);
    map['updated_time'] = Variable<int>(updatedTime);
    map['created_time'] = Variable<int>(createdTime);
    return map;
  }

  RevisionsCompanion toCompanion(bool nullToAbsent) {
    return RevisionsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      parentId: Value(parentId),
      itemType: Value(itemType),
      itemId: Value(itemId),
      itemUpdatedTime: Value(itemUpdatedTime),
      titleDiff: Value(titleDiff),
      bodyDiff: Value(bodyDiff),
      metadataDiff: Value(metadataDiff),
      encryptionCipherText: Value(encryptionCipherText),
      encryptionApplied: Value(encryptionApplied),
      updatedTime: Value(updatedTime),
      createdTime: Value(createdTime),
    );
  }

  factory Revision.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Revision(
      id: serializer.fromJson<String?>(json['id']),
      parentId: serializer.fromJson<String>(json['parent_id']),
      itemType: serializer.fromJson<int>(json['item_type']),
      itemId: serializer.fromJson<String>(json['item_id']),
      itemUpdatedTime: serializer.fromJson<int>(json['item_updated_time']),
      titleDiff: serializer.fromJson<String>(json['title_diff']),
      bodyDiff: serializer.fromJson<String>(json['body_diff']),
      metadataDiff: serializer.fromJson<String>(json['metadata_diff']),
      encryptionCipherText:
          serializer.fromJson<String>(json['encryption_cipher_text']),
      encryptionApplied: serializer.fromJson<int>(json['encryption_applied']),
      updatedTime: serializer.fromJson<int>(json['updated_time']),
      createdTime: serializer.fromJson<int>(json['created_time']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'parent_id': serializer.toJson<String>(parentId),
      'item_type': serializer.toJson<int>(itemType),
      'item_id': serializer.toJson<String>(itemId),
      'item_updated_time': serializer.toJson<int>(itemUpdatedTime),
      'title_diff': serializer.toJson<String>(titleDiff),
      'body_diff': serializer.toJson<String>(bodyDiff),
      'metadata_diff': serializer.toJson<String>(metadataDiff),
      'encryption_cipher_text': serializer.toJson<String>(encryptionCipherText),
      'encryption_applied': serializer.toJson<int>(encryptionApplied),
      'updated_time': serializer.toJson<int>(updatedTime),
      'created_time': serializer.toJson<int>(createdTime),
    };
  }

  Revision copyWith(
          {String? id,
          String? parentId,
          int? itemType,
          String? itemId,
          int? itemUpdatedTime,
          String? titleDiff,
          String? bodyDiff,
          String? metadataDiff,
          String? encryptionCipherText,
          int? encryptionApplied,
          int? updatedTime,
          int? createdTime}) =>
      Revision(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        itemType: itemType ?? this.itemType,
        itemId: itemId ?? this.itemId,
        itemUpdatedTime: itemUpdatedTime ?? this.itemUpdatedTime,
        titleDiff: titleDiff ?? this.titleDiff,
        bodyDiff: bodyDiff ?? this.bodyDiff,
        metadataDiff: metadataDiff ?? this.metadataDiff,
        encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
        encryptionApplied: encryptionApplied ?? this.encryptionApplied,
        updatedTime: updatedTime ?? this.updatedTime,
        createdTime: createdTime ?? this.createdTime,
      );
  @override
  String toString() {
    return (StringBuffer('Revision(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('itemType: $itemType, ')
          ..write('itemId: $itemId, ')
          ..write('itemUpdatedTime: $itemUpdatedTime, ')
          ..write('titleDiff: $titleDiff, ')
          ..write('bodyDiff: $bodyDiff, ')
          ..write('metadataDiff: $metadataDiff, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('createdTime: $createdTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      parentId,
      itemType,
      itemId,
      itemUpdatedTime,
      titleDiff,
      bodyDiff,
      metadataDiff,
      encryptionCipherText,
      encryptionApplied,
      updatedTime,
      createdTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Revision &&
          other.id == this.id &&
          other.parentId == this.parentId &&
          other.itemType == this.itemType &&
          other.itemId == this.itemId &&
          other.itemUpdatedTime == this.itemUpdatedTime &&
          other.titleDiff == this.titleDiff &&
          other.bodyDiff == this.bodyDiff &&
          other.metadataDiff == this.metadataDiff &&
          other.encryptionCipherText == this.encryptionCipherText &&
          other.encryptionApplied == this.encryptionApplied &&
          other.updatedTime == this.updatedTime &&
          other.createdTime == this.createdTime);
}

class RevisionsCompanion extends UpdateCompanion<Revision> {
  final Value<String?> id;
  final Value<String> parentId;
  final Value<int> itemType;
  final Value<String> itemId;
  final Value<int> itemUpdatedTime;
  final Value<String> titleDiff;
  final Value<String> bodyDiff;
  final Value<String> metadataDiff;
  final Value<String> encryptionCipherText;
  final Value<int> encryptionApplied;
  final Value<int> updatedTime;
  final Value<int> createdTime;
  const RevisionsCompanion({
    this.id = const Value.absent(),
    this.parentId = const Value.absent(),
    this.itemType = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemUpdatedTime = const Value.absent(),
    this.titleDiff = const Value.absent(),
    this.bodyDiff = const Value.absent(),
    this.metadataDiff = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.updatedTime = const Value.absent(),
    this.createdTime = const Value.absent(),
  });
  RevisionsCompanion.insert({
    this.id = const Value.absent(),
    this.parentId = const Value.absent(),
    required int itemType,
    required String itemId,
    required int itemUpdatedTime,
    this.titleDiff = const Value.absent(),
    this.bodyDiff = const Value.absent(),
    this.metadataDiff = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    required int updatedTime,
    required int createdTime,
  })  : itemType = Value(itemType),
        itemId = Value(itemId),
        itemUpdatedTime = Value(itemUpdatedTime),
        updatedTime = Value(updatedTime),
        createdTime = Value(createdTime);
  static Insertable<Revision> custom({
    Expression<String?>? id,
    Expression<String>? parentId,
    Expression<int>? itemType,
    Expression<String>? itemId,
    Expression<int>? itemUpdatedTime,
    Expression<String>? titleDiff,
    Expression<String>? bodyDiff,
    Expression<String>? metadataDiff,
    Expression<String>? encryptionCipherText,
    Expression<int>? encryptionApplied,
    Expression<int>? updatedTime,
    Expression<int>? createdTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentId != null) 'parent_id': parentId,
      if (itemType != null) 'item_type': itemType,
      if (itemId != null) 'item_id': itemId,
      if (itemUpdatedTime != null) 'item_updated_time': itemUpdatedTime,
      if (titleDiff != null) 'title_diff': titleDiff,
      if (bodyDiff != null) 'body_diff': bodyDiff,
      if (metadataDiff != null) 'metadata_diff': metadataDiff,
      if (encryptionCipherText != null)
        'encryption_cipher_text': encryptionCipherText,
      if (encryptionApplied != null) 'encryption_applied': encryptionApplied,
      if (updatedTime != null) 'updated_time': updatedTime,
      if (createdTime != null) 'created_time': createdTime,
    });
  }

  RevisionsCompanion copyWith(
      {Value<String?>? id,
      Value<String>? parentId,
      Value<int>? itemType,
      Value<String>? itemId,
      Value<int>? itemUpdatedTime,
      Value<String>? titleDiff,
      Value<String>? bodyDiff,
      Value<String>? metadataDiff,
      Value<String>? encryptionCipherText,
      Value<int>? encryptionApplied,
      Value<int>? updatedTime,
      Value<int>? createdTime}) {
    return RevisionsCompanion(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      itemType: itemType ?? this.itemType,
      itemId: itemId ?? this.itemId,
      itemUpdatedTime: itemUpdatedTime ?? this.itemUpdatedTime,
      titleDiff: titleDiff ?? this.titleDiff,
      bodyDiff: bodyDiff ?? this.bodyDiff,
      metadataDiff: metadataDiff ?? this.metadataDiff,
      encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
      encryptionApplied: encryptionApplied ?? this.encryptionApplied,
      updatedTime: updatedTime ?? this.updatedTime,
      createdTime: createdTime ?? this.createdTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (itemType.present) {
      map['item_type'] = Variable<int>(itemType.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (itemUpdatedTime.present) {
      map['item_updated_time'] = Variable<int>(itemUpdatedTime.value);
    }
    if (titleDiff.present) {
      map['title_diff'] = Variable<String>(titleDiff.value);
    }
    if (bodyDiff.present) {
      map['body_diff'] = Variable<String>(bodyDiff.value);
    }
    if (metadataDiff.present) {
      map['metadata_diff'] = Variable<String>(metadataDiff.value);
    }
    if (encryptionCipherText.present) {
      map['encryption_cipher_text'] =
          Variable<String>(encryptionCipherText.value);
    }
    if (encryptionApplied.present) {
      map['encryption_applied'] = Variable<int>(encryptionApplied.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<int>(updatedTime.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RevisionsCompanion(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('itemType: $itemType, ')
          ..write('itemId: $itemId, ')
          ..write('itemUpdatedTime: $itemUpdatedTime, ')
          ..write('titleDiff: $titleDiff, ')
          ..write('bodyDiff: $bodyDiff, ')
          ..write('metadataDiff: $metadataDiff, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('createdTime: $createdTime')
          ..write(')'))
        .toString();
  }
}

class Revisions extends Table with TableInfo<Revisions, Revision> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Revisions(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  late final GeneratedColumn<String?> parentId = GeneratedColumn<String?>(
      'parent_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _itemTypeMeta = const VerificationMeta('itemType');
  late final GeneratedColumn<int?> itemType = GeneratedColumn<int?>(
      'item_type', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  late final GeneratedColumn<String?> itemId = GeneratedColumn<String?>(
      'item_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _itemUpdatedTimeMeta =
      const VerificationMeta('itemUpdatedTime');
  late final GeneratedColumn<int?> itemUpdatedTime = GeneratedColumn<int?>(
      'item_updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _titleDiffMeta = const VerificationMeta('titleDiff');
  late final GeneratedColumn<String?> titleDiff = GeneratedColumn<String?>(
      'title_diff', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _bodyDiffMeta = const VerificationMeta('bodyDiff');
  late final GeneratedColumn<String?> bodyDiff = GeneratedColumn<String?>(
      'body_diff', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _metadataDiffMeta =
      const VerificationMeta('metadataDiff');
  late final GeneratedColumn<String?> metadataDiff = GeneratedColumn<String?>(
      'metadata_diff', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _encryptionCipherTextMeta =
      const VerificationMeta('encryptionCipherText');
  late final GeneratedColumn<String?> encryptionCipherText =
      GeneratedColumn<String?>('encryption_cipher_text', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _encryptionAppliedMeta =
      const VerificationMeta('encryptionApplied');
  late final GeneratedColumn<int?> encryptionApplied = GeneratedColumn<int?>(
      'encryption_applied', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        parentId,
        itemType,
        itemId,
        itemUpdatedTime,
        titleDiff,
        bodyDiff,
        metadataDiff,
        encryptionCipherText,
        encryptionApplied,
        updatedTime,
        createdTime
      ];
  @override
  String get aliasedName => _alias ?? 'revisions';
  @override
  String get actualTableName => 'revisions';
  @override
  VerificationContext validateIntegrity(Insertable<Revision> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    }
    if (data.containsKey('item_type')) {
      context.handle(_itemTypeMeta,
          itemType.isAcceptableOrUnknown(data['item_type']!, _itemTypeMeta));
    } else if (isInserting) {
      context.missing(_itemTypeMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('item_updated_time')) {
      context.handle(
          _itemUpdatedTimeMeta,
          itemUpdatedTime.isAcceptableOrUnknown(
              data['item_updated_time']!, _itemUpdatedTimeMeta));
    } else if (isInserting) {
      context.missing(_itemUpdatedTimeMeta);
    }
    if (data.containsKey('title_diff')) {
      context.handle(_titleDiffMeta,
          titleDiff.isAcceptableOrUnknown(data['title_diff']!, _titleDiffMeta));
    }
    if (data.containsKey('body_diff')) {
      context.handle(_bodyDiffMeta,
          bodyDiff.isAcceptableOrUnknown(data['body_diff']!, _bodyDiffMeta));
    }
    if (data.containsKey('metadata_diff')) {
      context.handle(
          _metadataDiffMeta,
          metadataDiff.isAcceptableOrUnknown(
              data['metadata_diff']!, _metadataDiffMeta));
    }
    if (data.containsKey('encryption_cipher_text')) {
      context.handle(
          _encryptionCipherTextMeta,
          encryptionCipherText.isAcceptableOrUnknown(
              data['encryption_cipher_text']!, _encryptionCipherTextMeta));
    }
    if (data.containsKey('encryption_applied')) {
      context.handle(
          _encryptionAppliedMeta,
          encryptionApplied.isAcceptableOrUnknown(
              data['encryption_applied']!, _encryptionAppliedMeta));
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Revision map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Revision.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Revisions createAlias(String alias) {
    return Revisions(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class ResourcesToDownloadData extends DataClass
    implements Insertable<ResourcesToDownloadData> {
  final int id;
  final String resourceId;
  final int updatedTime;
  final int createdTime;
  ResourcesToDownloadData(
      {required this.id,
      required this.resourceId,
      required this.updatedTime,
      required this.createdTime});
  factory ResourcesToDownloadData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ResourcesToDownloadData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      resourceId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}resource_id'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['resource_id'] = Variable<String>(resourceId);
    map['updated_time'] = Variable<int>(updatedTime);
    map['created_time'] = Variable<int>(createdTime);
    return map;
  }

  ResourcesToDownloadCompanion toCompanion(bool nullToAbsent) {
    return ResourcesToDownloadCompanion(
      id: Value(id),
      resourceId: Value(resourceId),
      updatedTime: Value(updatedTime),
      createdTime: Value(createdTime),
    );
  }

  factory ResourcesToDownloadData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ResourcesToDownloadData(
      id: serializer.fromJson<int>(json['id']),
      resourceId: serializer.fromJson<String>(json['resource_id']),
      updatedTime: serializer.fromJson<int>(json['updated_time']),
      createdTime: serializer.fromJson<int>(json['created_time']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'resource_id': serializer.toJson<String>(resourceId),
      'updated_time': serializer.toJson<int>(updatedTime),
      'created_time': serializer.toJson<int>(createdTime),
    };
  }

  ResourcesToDownloadData copyWith(
          {int? id, String? resourceId, int? updatedTime, int? createdTime}) =>
      ResourcesToDownloadData(
        id: id ?? this.id,
        resourceId: resourceId ?? this.resourceId,
        updatedTime: updatedTime ?? this.updatedTime,
        createdTime: createdTime ?? this.createdTime,
      );
  @override
  String toString() {
    return (StringBuffer('ResourcesToDownloadData(')
          ..write('id: $id, ')
          ..write('resourceId: $resourceId, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('createdTime: $createdTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, resourceId, updatedTime, createdTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ResourcesToDownloadData &&
          other.id == this.id &&
          other.resourceId == this.resourceId &&
          other.updatedTime == this.updatedTime &&
          other.createdTime == this.createdTime);
}

class ResourcesToDownloadCompanion
    extends UpdateCompanion<ResourcesToDownloadData> {
  final Value<int> id;
  final Value<String> resourceId;
  final Value<int> updatedTime;
  final Value<int> createdTime;
  const ResourcesToDownloadCompanion({
    this.id = const Value.absent(),
    this.resourceId = const Value.absent(),
    this.updatedTime = const Value.absent(),
    this.createdTime = const Value.absent(),
  });
  ResourcesToDownloadCompanion.insert({
    this.id = const Value.absent(),
    required String resourceId,
    required int updatedTime,
    required int createdTime,
  })  : resourceId = Value(resourceId),
        updatedTime = Value(updatedTime),
        createdTime = Value(createdTime);
  static Insertable<ResourcesToDownloadData> custom({
    Expression<int>? id,
    Expression<String>? resourceId,
    Expression<int>? updatedTime,
    Expression<int>? createdTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (resourceId != null) 'resource_id': resourceId,
      if (updatedTime != null) 'updated_time': updatedTime,
      if (createdTime != null) 'created_time': createdTime,
    });
  }

  ResourcesToDownloadCompanion copyWith(
      {Value<int>? id,
      Value<String>? resourceId,
      Value<int>? updatedTime,
      Value<int>? createdTime}) {
    return ResourcesToDownloadCompanion(
      id: id ?? this.id,
      resourceId: resourceId ?? this.resourceId,
      updatedTime: updatedTime ?? this.updatedTime,
      createdTime: createdTime ?? this.createdTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (resourceId.present) {
      map['resource_id'] = Variable<String>(resourceId.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<int>(updatedTime.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResourcesToDownloadCompanion(')
          ..write('id: $id, ')
          ..write('resourceId: $resourceId, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('createdTime: $createdTime')
          ..write(')'))
        .toString();
  }
}

class ResourcesToDownload extends Table
    with TableInfo<ResourcesToDownload, ResourcesToDownloadData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  ResourcesToDownload(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _resourceIdMeta = const VerificationMeta('resourceId');
  late final GeneratedColumn<String?> resourceId = GeneratedColumn<String?>(
      'resource_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns =>
      [id, resourceId, updatedTime, createdTime];
  @override
  String get aliasedName => _alias ?? 'resources_to_download';
  @override
  String get actualTableName => 'resources_to_download';
  @override
  VerificationContext validateIntegrity(
      Insertable<ResourcesToDownloadData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('resource_id')) {
      context.handle(
          _resourceIdMeta,
          resourceId.isAcceptableOrUnknown(
              data['resource_id']!, _resourceIdMeta));
    } else if (isInserting) {
      context.missing(_resourceIdMeta);
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ResourcesToDownloadData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return ResourcesToDownloadData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  ResourcesToDownload createAlias(String alias) {
    return ResourcesToDownload(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class KeyValue extends DataClass implements Insertable<KeyValue> {
  final int id;
  final String key;
  final String value;
  final int type;
  final int updatedTime;
  KeyValue(
      {required this.id,
      required this.key,
      required this.value,
      required this.type,
      required this.updatedTime});
  factory KeyValue.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return KeyValue(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key'])!,
      value: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}value'])!,
      type: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    map['type'] = Variable<int>(type);
    map['updated_time'] = Variable<int>(updatedTime);
    return map;
  }

  KeyValuesCompanion toCompanion(bool nullToAbsent) {
    return KeyValuesCompanion(
      id: Value(id),
      key: Value(key),
      value: Value(value),
      type: Value(type),
      updatedTime: Value(updatedTime),
    );
  }

  factory KeyValue.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return KeyValue(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
      type: serializer.fromJson<int>(json['type']),
      updatedTime: serializer.fromJson<int>(json['updated_time']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
      'type': serializer.toJson<int>(type),
      'updated_time': serializer.toJson<int>(updatedTime),
    };
  }

  KeyValue copyWith(
          {int? id, String? key, String? value, int? type, int? updatedTime}) =>
      KeyValue(
        id: id ?? this.id,
        key: key ?? this.key,
        value: value ?? this.value,
        type: type ?? this.type,
        updatedTime: updatedTime ?? this.updatedTime,
      );
  @override
  String toString() {
    return (StringBuffer('KeyValue(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('updatedTime: $updatedTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, value, type, updatedTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is KeyValue &&
          other.id == this.id &&
          other.key == this.key &&
          other.value == this.value &&
          other.type == this.type &&
          other.updatedTime == this.updatedTime);
}

class KeyValuesCompanion extends UpdateCompanion<KeyValue> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> value;
  final Value<int> type;
  final Value<int> updatedTime;
  const KeyValuesCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.type = const Value.absent(),
    this.updatedTime = const Value.absent(),
  });
  KeyValuesCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String value,
    required int type,
    required int updatedTime,
  })  : key = Value(key),
        value = Value(value),
        type = Value(type),
        updatedTime = Value(updatedTime);
  static Insertable<KeyValue> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? type,
    Expression<int>? updatedTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (type != null) 'type': type,
      if (updatedTime != null) 'updated_time': updatedTime,
    });
  }

  KeyValuesCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? value,
      Value<int>? type,
      Value<int>? updatedTime}) {
    return KeyValuesCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      value: value ?? this.value,
      type: type ?? this.type,
      updatedTime: updatedTime ?? this.updatedTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<int>(updatedTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('KeyValuesCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('type: $type, ')
          ..write('updatedTime: $updatedTime')
          ..write(')'))
        .toString();
  }
}

class KeyValues extends Table with TableInfo<KeyValues, KeyValue> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  KeyValues(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _keyMeta = const VerificationMeta('key');
  late final GeneratedColumn<String?> key = GeneratedColumn<String?>(
      'key', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _valueMeta = const VerificationMeta('value');
  late final GeneratedColumn<String?> value = GeneratedColumn<String?>(
      'value', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  late final GeneratedColumn<int?> type = GeneratedColumn<int?>(
      'type', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [id, key, value, type, updatedTime];
  @override
  String get aliasedName => _alias ?? 'key_values';
  @override
  String get actualTableName => 'key_values';
  @override
  VerificationContext validateIntegrity(Insertable<KeyValue> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  KeyValue map(Map<String, dynamic> data, {String? tablePrefix}) {
    return KeyValue.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  KeyValues createAlias(String alias) {
    return KeyValues(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Resource extends DataClass implements Insertable<Resource> {
  final String? id;
  final String title;
  final String mime;
  final String filename;
  final int createdTime;
  final int updatedTime;
  final int userCreatedTime;
  final int userUpdatedTime;
  final String fileExtension;
  final String encryptionCipherText;
  final int encryptionApplied;
  final int encryptionBlobEncrypted;
  final int size;
  final int isShared;
  final String shareId;
  final String masterKeyId;
  Resource(
      {this.id,
      required this.title,
      required this.mime,
      required this.filename,
      required this.createdTime,
      required this.updatedTime,
      required this.userCreatedTime,
      required this.userUpdatedTime,
      required this.fileExtension,
      required this.encryptionCipherText,
      required this.encryptionApplied,
      required this.encryptionBlobEncrypted,
      required this.size,
      required this.isShared,
      required this.shareId,
      required this.masterKeyId});
  factory Resource.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Resource(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      mime: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}mime'])!,
      filename: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}filename'])!,
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
      userCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_created_time'])!,
      userUpdatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_updated_time'])!,
      fileExtension: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}file_extension'])!,
      encryptionCipherText: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_cipher_text'])!,
      encryptionApplied: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_applied'])!,
      encryptionBlobEncrypted: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_blob_encrypted'])!,
      size: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}size'])!,
      isShared: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_shared'])!,
      shareId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}share_id'])!,
      masterKeyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}master_key_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['title'] = Variable<String>(title);
    map['mime'] = Variable<String>(mime);
    map['filename'] = Variable<String>(filename);
    map['created_time'] = Variable<int>(createdTime);
    map['updated_time'] = Variable<int>(updatedTime);
    map['user_created_time'] = Variable<int>(userCreatedTime);
    map['user_updated_time'] = Variable<int>(userUpdatedTime);
    map['file_extension'] = Variable<String>(fileExtension);
    map['encryption_cipher_text'] = Variable<String>(encryptionCipherText);
    map['encryption_applied'] = Variable<int>(encryptionApplied);
    map['encryption_blob_encrypted'] = Variable<int>(encryptionBlobEncrypted);
    map['size'] = Variable<int>(size);
    map['is_shared'] = Variable<int>(isShared);
    map['share_id'] = Variable<String>(shareId);
    map['master_key_id'] = Variable<String>(masterKeyId);
    return map;
  }

  ResourcesCompanion toCompanion(bool nullToAbsent) {
    return ResourcesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title: Value(title),
      mime: Value(mime),
      filename: Value(filename),
      createdTime: Value(createdTime),
      updatedTime: Value(updatedTime),
      userCreatedTime: Value(userCreatedTime),
      userUpdatedTime: Value(userUpdatedTime),
      fileExtension: Value(fileExtension),
      encryptionCipherText: Value(encryptionCipherText),
      encryptionApplied: Value(encryptionApplied),
      encryptionBlobEncrypted: Value(encryptionBlobEncrypted),
      size: Value(size),
      isShared: Value(isShared),
      shareId: Value(shareId),
      masterKeyId: Value(masterKeyId),
    );
  }

  factory Resource.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Resource(
      id: serializer.fromJson<String?>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      mime: serializer.fromJson<String>(json['mime']),
      filename: serializer.fromJson<String>(json['filename']),
      createdTime: serializer.fromJson<int>(json['created_time']),
      updatedTime: serializer.fromJson<int>(json['updated_time']),
      userCreatedTime: serializer.fromJson<int>(json['user_created_time']),
      userUpdatedTime: serializer.fromJson<int>(json['user_updated_time']),
      fileExtension: serializer.fromJson<String>(json['file_extension']),
      encryptionCipherText:
          serializer.fromJson<String>(json['encryption_cipher_text']),
      encryptionApplied: serializer.fromJson<int>(json['encryption_applied']),
      encryptionBlobEncrypted:
          serializer.fromJson<int>(json['encryption_blob_encrypted']),
      size: serializer.fromJson<int>(json['size']),
      isShared: serializer.fromJson<int>(json['is_shared']),
      shareId: serializer.fromJson<String>(json['share_id']),
      masterKeyId: serializer.fromJson<String>(json['master_key_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'title': serializer.toJson<String>(title),
      'mime': serializer.toJson<String>(mime),
      'filename': serializer.toJson<String>(filename),
      'created_time': serializer.toJson<int>(createdTime),
      'updated_time': serializer.toJson<int>(updatedTime),
      'user_created_time': serializer.toJson<int>(userCreatedTime),
      'user_updated_time': serializer.toJson<int>(userUpdatedTime),
      'file_extension': serializer.toJson<String>(fileExtension),
      'encryption_cipher_text': serializer.toJson<String>(encryptionCipherText),
      'encryption_applied': serializer.toJson<int>(encryptionApplied),
      'encryption_blob_encrypted':
          serializer.toJson<int>(encryptionBlobEncrypted),
      'size': serializer.toJson<int>(size),
      'is_shared': serializer.toJson<int>(isShared),
      'share_id': serializer.toJson<String>(shareId),
      'master_key_id': serializer.toJson<String>(masterKeyId),
    };
  }

  Resource copyWith(
          {String? id,
          String? title,
          String? mime,
          String? filename,
          int? createdTime,
          int? updatedTime,
          int? userCreatedTime,
          int? userUpdatedTime,
          String? fileExtension,
          String? encryptionCipherText,
          int? encryptionApplied,
          int? encryptionBlobEncrypted,
          int? size,
          int? isShared,
          String? shareId,
          String? masterKeyId}) =>
      Resource(
        id: id ?? this.id,
        title: title ?? this.title,
        mime: mime ?? this.mime,
        filename: filename ?? this.filename,
        createdTime: createdTime ?? this.createdTime,
        updatedTime: updatedTime ?? this.updatedTime,
        userCreatedTime: userCreatedTime ?? this.userCreatedTime,
        userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
        fileExtension: fileExtension ?? this.fileExtension,
        encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
        encryptionApplied: encryptionApplied ?? this.encryptionApplied,
        encryptionBlobEncrypted:
            encryptionBlobEncrypted ?? this.encryptionBlobEncrypted,
        size: size ?? this.size,
        isShared: isShared ?? this.isShared,
        shareId: shareId ?? this.shareId,
        masterKeyId: masterKeyId ?? this.masterKeyId,
      );
  @override
  String toString() {
    return (StringBuffer('Resource(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('mime: $mime, ')
          ..write('filename: $filename, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('fileExtension: $fileExtension, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('encryptionBlobEncrypted: $encryptionBlobEncrypted, ')
          ..write('size: $size, ')
          ..write('isShared: $isShared, ')
          ..write('shareId: $shareId, ')
          ..write('masterKeyId: $masterKeyId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      mime,
      filename,
      createdTime,
      updatedTime,
      userCreatedTime,
      userUpdatedTime,
      fileExtension,
      encryptionCipherText,
      encryptionApplied,
      encryptionBlobEncrypted,
      size,
      isShared,
      shareId,
      masterKeyId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Resource &&
          other.id == this.id &&
          other.title == this.title &&
          other.mime == this.mime &&
          other.filename == this.filename &&
          other.createdTime == this.createdTime &&
          other.updatedTime == this.updatedTime &&
          other.userCreatedTime == this.userCreatedTime &&
          other.userUpdatedTime == this.userUpdatedTime &&
          other.fileExtension == this.fileExtension &&
          other.encryptionCipherText == this.encryptionCipherText &&
          other.encryptionApplied == this.encryptionApplied &&
          other.encryptionBlobEncrypted == this.encryptionBlobEncrypted &&
          other.size == this.size &&
          other.isShared == this.isShared &&
          other.shareId == this.shareId &&
          other.masterKeyId == this.masterKeyId);
}

class ResourcesCompanion extends UpdateCompanion<Resource> {
  final Value<String?> id;
  final Value<String> title;
  final Value<String> mime;
  final Value<String> filename;
  final Value<int> createdTime;
  final Value<int> updatedTime;
  final Value<int> userCreatedTime;
  final Value<int> userUpdatedTime;
  final Value<String> fileExtension;
  final Value<String> encryptionCipherText;
  final Value<int> encryptionApplied;
  final Value<int> encryptionBlobEncrypted;
  final Value<int> size;
  final Value<int> isShared;
  final Value<String> shareId;
  final Value<String> masterKeyId;
  const ResourcesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.mime = const Value.absent(),
    this.filename = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.updatedTime = const Value.absent(),
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.fileExtension = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.encryptionBlobEncrypted = const Value.absent(),
    this.size = const Value.absent(),
    this.isShared = const Value.absent(),
    this.shareId = const Value.absent(),
    this.masterKeyId = const Value.absent(),
  });
  ResourcesCompanion.insert({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    required String mime,
    this.filename = const Value.absent(),
    required int createdTime,
    required int updatedTime,
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.fileExtension = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.encryptionBlobEncrypted = const Value.absent(),
    this.size = const Value.absent(),
    this.isShared = const Value.absent(),
    this.shareId = const Value.absent(),
    this.masterKeyId = const Value.absent(),
  })  : mime = Value(mime),
        createdTime = Value(createdTime),
        updatedTime = Value(updatedTime);
  static Insertable<Resource> custom({
    Expression<String?>? id,
    Expression<String>? title,
    Expression<String>? mime,
    Expression<String>? filename,
    Expression<int>? createdTime,
    Expression<int>? updatedTime,
    Expression<int>? userCreatedTime,
    Expression<int>? userUpdatedTime,
    Expression<String>? fileExtension,
    Expression<String>? encryptionCipherText,
    Expression<int>? encryptionApplied,
    Expression<int>? encryptionBlobEncrypted,
    Expression<int>? size,
    Expression<int>? isShared,
    Expression<String>? shareId,
    Expression<String>? masterKeyId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (mime != null) 'mime': mime,
      if (filename != null) 'filename': filename,
      if (createdTime != null) 'created_time': createdTime,
      if (updatedTime != null) 'updated_time': updatedTime,
      if (userCreatedTime != null) 'user_created_time': userCreatedTime,
      if (userUpdatedTime != null) 'user_updated_time': userUpdatedTime,
      if (fileExtension != null) 'file_extension': fileExtension,
      if (encryptionCipherText != null)
        'encryption_cipher_text': encryptionCipherText,
      if (encryptionApplied != null) 'encryption_applied': encryptionApplied,
      if (encryptionBlobEncrypted != null)
        'encryption_blob_encrypted': encryptionBlobEncrypted,
      if (size != null) 'size': size,
      if (isShared != null) 'is_shared': isShared,
      if (shareId != null) 'share_id': shareId,
      if (masterKeyId != null) 'master_key_id': masterKeyId,
    });
  }

  ResourcesCompanion copyWith(
      {Value<String?>? id,
      Value<String>? title,
      Value<String>? mime,
      Value<String>? filename,
      Value<int>? createdTime,
      Value<int>? updatedTime,
      Value<int>? userCreatedTime,
      Value<int>? userUpdatedTime,
      Value<String>? fileExtension,
      Value<String>? encryptionCipherText,
      Value<int>? encryptionApplied,
      Value<int>? encryptionBlobEncrypted,
      Value<int>? size,
      Value<int>? isShared,
      Value<String>? shareId,
      Value<String>? masterKeyId}) {
    return ResourcesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      mime: mime ?? this.mime,
      filename: filename ?? this.filename,
      createdTime: createdTime ?? this.createdTime,
      updatedTime: updatedTime ?? this.updatedTime,
      userCreatedTime: userCreatedTime ?? this.userCreatedTime,
      userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
      fileExtension: fileExtension ?? this.fileExtension,
      encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
      encryptionApplied: encryptionApplied ?? this.encryptionApplied,
      encryptionBlobEncrypted:
          encryptionBlobEncrypted ?? this.encryptionBlobEncrypted,
      size: size ?? this.size,
      isShared: isShared ?? this.isShared,
      shareId: shareId ?? this.shareId,
      masterKeyId: masterKeyId ?? this.masterKeyId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (mime.present) {
      map['mime'] = Variable<String>(mime.value);
    }
    if (filename.present) {
      map['filename'] = Variable<String>(filename.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<int>(updatedTime.value);
    }
    if (userCreatedTime.present) {
      map['user_created_time'] = Variable<int>(userCreatedTime.value);
    }
    if (userUpdatedTime.present) {
      map['user_updated_time'] = Variable<int>(userUpdatedTime.value);
    }
    if (fileExtension.present) {
      map['file_extension'] = Variable<String>(fileExtension.value);
    }
    if (encryptionCipherText.present) {
      map['encryption_cipher_text'] =
          Variable<String>(encryptionCipherText.value);
    }
    if (encryptionApplied.present) {
      map['encryption_applied'] = Variable<int>(encryptionApplied.value);
    }
    if (encryptionBlobEncrypted.present) {
      map['encryption_blob_encrypted'] =
          Variable<int>(encryptionBlobEncrypted.value);
    }
    if (size.present) {
      map['size'] = Variable<int>(size.value);
    }
    if (isShared.present) {
      map['is_shared'] = Variable<int>(isShared.value);
    }
    if (shareId.present) {
      map['share_id'] = Variable<String>(shareId.value);
    }
    if (masterKeyId.present) {
      map['master_key_id'] = Variable<String>(masterKeyId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ResourcesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('mime: $mime, ')
          ..write('filename: $filename, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('fileExtension: $fileExtension, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('encryptionBlobEncrypted: $encryptionBlobEncrypted, ')
          ..write('size: $size, ')
          ..write('isShared: $isShared, ')
          ..write('shareId: $shareId, ')
          ..write('masterKeyId: $masterKeyId')
          ..write(')'))
        .toString();
  }
}

class Resources extends Table with TableInfo<Resources, Resource> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Resources(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _mimeMeta = const VerificationMeta('mime');
  late final GeneratedColumn<String?> mime = GeneratedColumn<String?>(
      'mime', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _filenameMeta = const VerificationMeta('filename');
  late final GeneratedColumn<String?> filename = GeneratedColumn<String?>(
      'filename', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _userCreatedTimeMeta =
      const VerificationMeta('userCreatedTime');
  late final GeneratedColumn<int?> userCreatedTime = GeneratedColumn<int?>(
      'user_created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _userUpdatedTimeMeta =
      const VerificationMeta('userUpdatedTime');
  late final GeneratedColumn<int?> userUpdatedTime = GeneratedColumn<int?>(
      'user_updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _fileExtensionMeta =
      const VerificationMeta('fileExtension');
  late final GeneratedColumn<String?> fileExtension = GeneratedColumn<String?>(
      'file_extension', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _encryptionCipherTextMeta =
      const VerificationMeta('encryptionCipherText');
  late final GeneratedColumn<String?> encryptionCipherText =
      GeneratedColumn<String?>('encryption_cipher_text', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _encryptionAppliedMeta =
      const VerificationMeta('encryptionApplied');
  late final GeneratedColumn<int?> encryptionApplied = GeneratedColumn<int?>(
      'encryption_applied', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _encryptionBlobEncryptedMeta =
      const VerificationMeta('encryptionBlobEncrypted');
  late final GeneratedColumn<int?> encryptionBlobEncrypted =
      GeneratedColumn<int?>('encryption_blob_encrypted', aliasedName, false,
          type: const IntType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT 0',
          defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _sizeMeta = const VerificationMeta('size');
  late final GeneratedColumn<int?> size = GeneratedColumn<int?>(
      'size', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT -1',
      defaultValue: const CustomExpression<int>('-1'));
  final VerificationMeta _isSharedMeta = const VerificationMeta('isShared');
  late final GeneratedColumn<int?> isShared = GeneratedColumn<int?>(
      'is_shared', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _shareIdMeta = const VerificationMeta('shareId');
  late final GeneratedColumn<String?> shareId = GeneratedColumn<String?>(
      'share_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _masterKeyIdMeta =
      const VerificationMeta('masterKeyId');
  late final GeneratedColumn<String?> masterKeyId = GeneratedColumn<String?>(
      'master_key_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        mime,
        filename,
        createdTime,
        updatedTime,
        userCreatedTime,
        userUpdatedTime,
        fileExtension,
        encryptionCipherText,
        encryptionApplied,
        encryptionBlobEncrypted,
        size,
        isShared,
        shareId,
        masterKeyId
      ];
  @override
  String get aliasedName => _alias ?? 'resources';
  @override
  String get actualTableName => 'resources';
  @override
  VerificationContext validateIntegrity(Insertable<Resource> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('mime')) {
      context.handle(
          _mimeMeta, mime.isAcceptableOrUnknown(data['mime']!, _mimeMeta));
    } else if (isInserting) {
      context.missing(_mimeMeta);
    }
    if (data.containsKey('filename')) {
      context.handle(_filenameMeta,
          filename.isAcceptableOrUnknown(data['filename']!, _filenameMeta));
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    if (data.containsKey('user_created_time')) {
      context.handle(
          _userCreatedTimeMeta,
          userCreatedTime.isAcceptableOrUnknown(
              data['user_created_time']!, _userCreatedTimeMeta));
    }
    if (data.containsKey('user_updated_time')) {
      context.handle(
          _userUpdatedTimeMeta,
          userUpdatedTime.isAcceptableOrUnknown(
              data['user_updated_time']!, _userUpdatedTimeMeta));
    }
    if (data.containsKey('file_extension')) {
      context.handle(
          _fileExtensionMeta,
          fileExtension.isAcceptableOrUnknown(
              data['file_extension']!, _fileExtensionMeta));
    }
    if (data.containsKey('encryption_cipher_text')) {
      context.handle(
          _encryptionCipherTextMeta,
          encryptionCipherText.isAcceptableOrUnknown(
              data['encryption_cipher_text']!, _encryptionCipherTextMeta));
    }
    if (data.containsKey('encryption_applied')) {
      context.handle(
          _encryptionAppliedMeta,
          encryptionApplied.isAcceptableOrUnknown(
              data['encryption_applied']!, _encryptionAppliedMeta));
    }
    if (data.containsKey('encryption_blob_encrypted')) {
      context.handle(
          _encryptionBlobEncryptedMeta,
          encryptionBlobEncrypted.isAcceptableOrUnknown(
              data['encryption_blob_encrypted']!,
              _encryptionBlobEncryptedMeta));
    }
    if (data.containsKey('size')) {
      context.handle(
          _sizeMeta, size.isAcceptableOrUnknown(data['size']!, _sizeMeta));
    }
    if (data.containsKey('is_shared')) {
      context.handle(_isSharedMeta,
          isShared.isAcceptableOrUnknown(data['is_shared']!, _isSharedMeta));
    }
    if (data.containsKey('share_id')) {
      context.handle(_shareIdMeta,
          shareId.isAcceptableOrUnknown(data['share_id']!, _shareIdMeta));
    }
    if (data.containsKey('master_key_id')) {
      context.handle(
          _masterKeyIdMeta,
          masterKeyId.isAcceptableOrUnknown(
              data['master_key_id']!, _masterKeyIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Resource map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Resource.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Resources createAlias(String alias) {
    return Resources(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class NotesNormalizedData extends DataClass
    implements Insertable<NotesNormalizedData> {
  final String id;
  final String title;
  final String body;
  final int userCreatedTime;
  final int userUpdatedTime;
  final int isTodo;
  final int todoCompleted;
  final String parentId;
  final double latitude;
  final double longitude;
  final double altitude;
  final String sourceUrl;
  final int todoDue;
  NotesNormalizedData(
      {required this.id,
      required this.title,
      required this.body,
      required this.userCreatedTime,
      required this.userUpdatedTime,
      required this.isTodo,
      required this.todoCompleted,
      required this.parentId,
      required this.latitude,
      required this.longitude,
      required this.altitude,
      required this.sourceUrl,
      required this.todoDue});
  factory NotesNormalizedData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return NotesNormalizedData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      body: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}body'])!,
      userCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_created_time'])!,
      userUpdatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_updated_time'])!,
      isTodo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_todo'])!,
      todoCompleted: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}todo_completed'])!,
      parentId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}parent_id'])!,
      latitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude'])!,
      longitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude'])!,
      altitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}altitude'])!,
      sourceUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}source_url'])!,
      todoDue: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}todo_due'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(body);
    map['user_created_time'] = Variable<int>(userCreatedTime);
    map['user_updated_time'] = Variable<int>(userUpdatedTime);
    map['is_todo'] = Variable<int>(isTodo);
    map['todo_completed'] = Variable<int>(todoCompleted);
    map['parent_id'] = Variable<String>(parentId);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    map['altitude'] = Variable<double>(altitude);
    map['source_url'] = Variable<String>(sourceUrl);
    map['todo_due'] = Variable<int>(todoDue);
    return map;
  }

  NotesNormalizedCompanion toCompanion(bool nullToAbsent) {
    return NotesNormalizedCompanion(
      id: Value(id),
      title: Value(title),
      body: Value(body),
      userCreatedTime: Value(userCreatedTime),
      userUpdatedTime: Value(userUpdatedTime),
      isTodo: Value(isTodo),
      todoCompleted: Value(todoCompleted),
      parentId: Value(parentId),
      latitude: Value(latitude),
      longitude: Value(longitude),
      altitude: Value(altitude),
      sourceUrl: Value(sourceUrl),
      todoDue: Value(todoDue),
    );
  }

  factory NotesNormalizedData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NotesNormalizedData(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      userCreatedTime: serializer.fromJson<int>(json['user_created_time']),
      userUpdatedTime: serializer.fromJson<int>(json['user_updated_time']),
      isTodo: serializer.fromJson<int>(json['is_todo']),
      todoCompleted: serializer.fromJson<int>(json['todo_completed']),
      parentId: serializer.fromJson<String>(json['parent_id']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      altitude: serializer.fromJson<double>(json['altitude']),
      sourceUrl: serializer.fromJson<String>(json['source_url']),
      todoDue: serializer.fromJson<int>(json['todo_due']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'user_created_time': serializer.toJson<int>(userCreatedTime),
      'user_updated_time': serializer.toJson<int>(userUpdatedTime),
      'is_todo': serializer.toJson<int>(isTodo),
      'todo_completed': serializer.toJson<int>(todoCompleted),
      'parent_id': serializer.toJson<String>(parentId),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'altitude': serializer.toJson<double>(altitude),
      'source_url': serializer.toJson<String>(sourceUrl),
      'todo_due': serializer.toJson<int>(todoDue),
    };
  }

  NotesNormalizedData copyWith(
          {String? id,
          String? title,
          String? body,
          int? userCreatedTime,
          int? userUpdatedTime,
          int? isTodo,
          int? todoCompleted,
          String? parentId,
          double? latitude,
          double? longitude,
          double? altitude,
          String? sourceUrl,
          int? todoDue}) =>
      NotesNormalizedData(
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
        userCreatedTime: userCreatedTime ?? this.userCreatedTime,
        userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
        isTodo: isTodo ?? this.isTodo,
        todoCompleted: todoCompleted ?? this.todoCompleted,
        parentId: parentId ?? this.parentId,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        altitude: altitude ?? this.altitude,
        sourceUrl: sourceUrl ?? this.sourceUrl,
        todoDue: todoDue ?? this.todoDue,
      );
  @override
  String toString() {
    return (StringBuffer('NotesNormalizedData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('isTodo: $isTodo, ')
          ..write('todoCompleted: $todoCompleted, ')
          ..write('parentId: $parentId, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('altitude: $altitude, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('todoDue: $todoDue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      body,
      userCreatedTime,
      userUpdatedTime,
      isTodo,
      todoCompleted,
      parentId,
      latitude,
      longitude,
      altitude,
      sourceUrl,
      todoDue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotesNormalizedData &&
          other.id == this.id &&
          other.title == this.title &&
          other.body == this.body &&
          other.userCreatedTime == this.userCreatedTime &&
          other.userUpdatedTime == this.userUpdatedTime &&
          other.isTodo == this.isTodo &&
          other.todoCompleted == this.todoCompleted &&
          other.parentId == this.parentId &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.altitude == this.altitude &&
          other.sourceUrl == this.sourceUrl &&
          other.todoDue == this.todoDue);
}

class NotesNormalizedCompanion extends UpdateCompanion<NotesNormalizedData> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> body;
  final Value<int> userCreatedTime;
  final Value<int> userUpdatedTime;
  final Value<int> isTodo;
  final Value<int> todoCompleted;
  final Value<String> parentId;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<double> altitude;
  final Value<String> sourceUrl;
  final Value<int> todoDue;
  const NotesNormalizedCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.isTodo = const Value.absent(),
    this.todoCompleted = const Value.absent(),
    this.parentId = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.altitude = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.todoDue = const Value.absent(),
  });
  NotesNormalizedCompanion.insert({
    required String id,
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.isTodo = const Value.absent(),
    this.todoCompleted = const Value.absent(),
    this.parentId = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.altitude = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.todoDue = const Value.absent(),
  }) : id = Value(id);
  static Insertable<NotesNormalizedData> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? body,
    Expression<int>? userCreatedTime,
    Expression<int>? userUpdatedTime,
    Expression<int>? isTodo,
    Expression<int>? todoCompleted,
    Expression<String>? parentId,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<double>? altitude,
    Expression<String>? sourceUrl,
    Expression<int>? todoDue,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
      if (userCreatedTime != null) 'user_created_time': userCreatedTime,
      if (userUpdatedTime != null) 'user_updated_time': userUpdatedTime,
      if (isTodo != null) 'is_todo': isTodo,
      if (todoCompleted != null) 'todo_completed': todoCompleted,
      if (parentId != null) 'parent_id': parentId,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (altitude != null) 'altitude': altitude,
      if (sourceUrl != null) 'source_url': sourceUrl,
      if (todoDue != null) 'todo_due': todoDue,
    });
  }

  NotesNormalizedCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String>? body,
      Value<int>? userCreatedTime,
      Value<int>? userUpdatedTime,
      Value<int>? isTodo,
      Value<int>? todoCompleted,
      Value<String>? parentId,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<double>? altitude,
      Value<String>? sourceUrl,
      Value<int>? todoDue}) {
    return NotesNormalizedCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      userCreatedTime: userCreatedTime ?? this.userCreatedTime,
      userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
      isTodo: isTodo ?? this.isTodo,
      todoCompleted: todoCompleted ?? this.todoCompleted,
      parentId: parentId ?? this.parentId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      altitude: altitude ?? this.altitude,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      todoDue: todoDue ?? this.todoDue,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (userCreatedTime.present) {
      map['user_created_time'] = Variable<int>(userCreatedTime.value);
    }
    if (userUpdatedTime.present) {
      map['user_updated_time'] = Variable<int>(userUpdatedTime.value);
    }
    if (isTodo.present) {
      map['is_todo'] = Variable<int>(isTodo.value);
    }
    if (todoCompleted.present) {
      map['todo_completed'] = Variable<int>(todoCompleted.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (altitude.present) {
      map['altitude'] = Variable<double>(altitude.value);
    }
    if (sourceUrl.present) {
      map['source_url'] = Variable<String>(sourceUrl.value);
    }
    if (todoDue.present) {
      map['todo_due'] = Variable<int>(todoDue.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesNormalizedCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('isTodo: $isTodo, ')
          ..write('todoCompleted: $todoCompleted, ')
          ..write('parentId: $parentId, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('altitude: $altitude, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('todoDue: $todoDue')
          ..write(')'))
        .toString();
  }
}

class NotesNormalized extends Table
    with TableInfo<NotesNormalized, NotesNormalizedData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  NotesNormalized(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _bodyMeta = const VerificationMeta('body');
  late final GeneratedColumn<String?> body = GeneratedColumn<String?>(
      'body', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _userCreatedTimeMeta =
      const VerificationMeta('userCreatedTime');
  late final GeneratedColumn<int?> userCreatedTime = GeneratedColumn<int?>(
      'user_created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _userUpdatedTimeMeta =
      const VerificationMeta('userUpdatedTime');
  late final GeneratedColumn<int?> userUpdatedTime = GeneratedColumn<int?>(
      'user_updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _isTodoMeta = const VerificationMeta('isTodo');
  late final GeneratedColumn<int?> isTodo = GeneratedColumn<int?>(
      'is_todo', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _todoCompletedMeta =
      const VerificationMeta('todoCompleted');
  late final GeneratedColumn<int?> todoCompleted = GeneratedColumn<int?>(
      'todo_completed', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  late final GeneratedColumn<String?> parentId = GeneratedColumn<String?>(
      'parent_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  late final GeneratedColumn<double?> latitude = GeneratedColumn<double?>(
      'latitude', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<double>('0'));
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  late final GeneratedColumn<double?> longitude = GeneratedColumn<double?>(
      'longitude', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<double>('0'));
  final VerificationMeta _altitudeMeta = const VerificationMeta('altitude');
  late final GeneratedColumn<double?> altitude = GeneratedColumn<double?>(
      'altitude', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<double>('0'));
  final VerificationMeta _sourceUrlMeta = const VerificationMeta('sourceUrl');
  late final GeneratedColumn<String?> sourceUrl = GeneratedColumn<String?>(
      'source_url', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _todoDueMeta = const VerificationMeta('todoDue');
  late final GeneratedColumn<int?> todoDue = GeneratedColumn<int?>(
      'todo_due', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        body,
        userCreatedTime,
        userUpdatedTime,
        isTodo,
        todoCompleted,
        parentId,
        latitude,
        longitude,
        altitude,
        sourceUrl,
        todoDue
      ];
  @override
  String get aliasedName => _alias ?? 'notes_normalized';
  @override
  String get actualTableName => 'notes_normalized';
  @override
  VerificationContext validateIntegrity(
      Insertable<NotesNormalizedData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body']!, _bodyMeta));
    }
    if (data.containsKey('user_created_time')) {
      context.handle(
          _userCreatedTimeMeta,
          userCreatedTime.isAcceptableOrUnknown(
              data['user_created_time']!, _userCreatedTimeMeta));
    }
    if (data.containsKey('user_updated_time')) {
      context.handle(
          _userUpdatedTimeMeta,
          userUpdatedTime.isAcceptableOrUnknown(
              data['user_updated_time']!, _userUpdatedTimeMeta));
    }
    if (data.containsKey('is_todo')) {
      context.handle(_isTodoMeta,
          isTodo.isAcceptableOrUnknown(data['is_todo']!, _isTodoMeta));
    }
    if (data.containsKey('todo_completed')) {
      context.handle(
          _todoCompletedMeta,
          todoCompleted.isAcceptableOrUnknown(
              data['todo_completed']!, _todoCompletedMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('altitude')) {
      context.handle(_altitudeMeta,
          altitude.isAcceptableOrUnknown(data['altitude']!, _altitudeMeta));
    }
    if (data.containsKey('source_url')) {
      context.handle(_sourceUrlMeta,
          sourceUrl.isAcceptableOrUnknown(data['source_url']!, _sourceUrlMeta));
    }
    if (data.containsKey('todo_due')) {
      context.handle(_todoDueMeta,
          todoDue.isAcceptableOrUnknown(data['todo_due']!, _todoDueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  NotesNormalizedData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return NotesNormalizedData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  NotesNormalized createAlias(String alias) {
    return NotesNormalized(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class NotesFt extends DataClass implements Insertable<NotesFt> {
  final String id;
  final String title;
  final String body;
  final String userCreatedTime;
  final String userUpdatedTime;
  final String isTodo;
  final String todoCompleted;
  final String parentId;
  final String latitude;
  final String longitude;
  final String altitude;
  final String sourceUrl;
  NotesFt(
      {required this.id,
      required this.title,
      required this.body,
      required this.userCreatedTime,
      required this.userUpdatedTime,
      required this.isTodo,
      required this.todoCompleted,
      required this.parentId,
      required this.latitude,
      required this.longitude,
      required this.altitude,
      required this.sourceUrl});
  factory NotesFt.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return NotesFt(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      body: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}body'])!,
      userCreatedTime: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_created_time'])!,
      userUpdatedTime: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_updated_time'])!,
      isTodo: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_todo'])!,
      todoCompleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}todo_completed'])!,
      parentId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}parent_id'])!,
      latitude: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude'])!,
      longitude: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude'])!,
      altitude: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}altitude'])!,
      sourceUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}source_url'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(body);
    map['user_created_time'] = Variable<String>(userCreatedTime);
    map['user_updated_time'] = Variable<String>(userUpdatedTime);
    map['is_todo'] = Variable<String>(isTodo);
    map['todo_completed'] = Variable<String>(todoCompleted);
    map['parent_id'] = Variable<String>(parentId);
    map['latitude'] = Variable<String>(latitude);
    map['longitude'] = Variable<String>(longitude);
    map['altitude'] = Variable<String>(altitude);
    map['source_url'] = Variable<String>(sourceUrl);
    return map;
  }

  NotesFtsCompanion toCompanion(bool nullToAbsent) {
    return NotesFtsCompanion(
      id: Value(id),
      title: Value(title),
      body: Value(body),
      userCreatedTime: Value(userCreatedTime),
      userUpdatedTime: Value(userUpdatedTime),
      isTodo: Value(isTodo),
      todoCompleted: Value(todoCompleted),
      parentId: Value(parentId),
      latitude: Value(latitude),
      longitude: Value(longitude),
      altitude: Value(altitude),
      sourceUrl: Value(sourceUrl),
    );
  }

  factory NotesFt.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NotesFt(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      userCreatedTime: serializer.fromJson<String>(json['user_created_time']),
      userUpdatedTime: serializer.fromJson<String>(json['user_updated_time']),
      isTodo: serializer.fromJson<String>(json['is_todo']),
      todoCompleted: serializer.fromJson<String>(json['todo_completed']),
      parentId: serializer.fromJson<String>(json['parent_id']),
      latitude: serializer.fromJson<String>(json['latitude']),
      longitude: serializer.fromJson<String>(json['longitude']),
      altitude: serializer.fromJson<String>(json['altitude']),
      sourceUrl: serializer.fromJson<String>(json['source_url']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'user_created_time': serializer.toJson<String>(userCreatedTime),
      'user_updated_time': serializer.toJson<String>(userUpdatedTime),
      'is_todo': serializer.toJson<String>(isTodo),
      'todo_completed': serializer.toJson<String>(todoCompleted),
      'parent_id': serializer.toJson<String>(parentId),
      'latitude': serializer.toJson<String>(latitude),
      'longitude': serializer.toJson<String>(longitude),
      'altitude': serializer.toJson<String>(altitude),
      'source_url': serializer.toJson<String>(sourceUrl),
    };
  }

  NotesFt copyWith(
          {String? id,
          String? title,
          String? body,
          String? userCreatedTime,
          String? userUpdatedTime,
          String? isTodo,
          String? todoCompleted,
          String? parentId,
          String? latitude,
          String? longitude,
          String? altitude,
          String? sourceUrl}) =>
      NotesFt(
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
        userCreatedTime: userCreatedTime ?? this.userCreatedTime,
        userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
        isTodo: isTodo ?? this.isTodo,
        todoCompleted: todoCompleted ?? this.todoCompleted,
        parentId: parentId ?? this.parentId,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        altitude: altitude ?? this.altitude,
        sourceUrl: sourceUrl ?? this.sourceUrl,
      );
  @override
  String toString() {
    return (StringBuffer('NotesFt(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('isTodo: $isTodo, ')
          ..write('todoCompleted: $todoCompleted, ')
          ..write('parentId: $parentId, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('altitude: $altitude, ')
          ..write('sourceUrl: $sourceUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      title,
      body,
      userCreatedTime,
      userUpdatedTime,
      isTodo,
      todoCompleted,
      parentId,
      latitude,
      longitude,
      altitude,
      sourceUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotesFt &&
          other.id == this.id &&
          other.title == this.title &&
          other.body == this.body &&
          other.userCreatedTime == this.userCreatedTime &&
          other.userUpdatedTime == this.userUpdatedTime &&
          other.isTodo == this.isTodo &&
          other.todoCompleted == this.todoCompleted &&
          other.parentId == this.parentId &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.altitude == this.altitude &&
          other.sourceUrl == this.sourceUrl);
}

class NotesFtsCompanion extends UpdateCompanion<NotesFt> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> body;
  final Value<String> userCreatedTime;
  final Value<String> userUpdatedTime;
  final Value<String> isTodo;
  final Value<String> todoCompleted;
  final Value<String> parentId;
  final Value<String> latitude;
  final Value<String> longitude;
  final Value<String> altitude;
  final Value<String> sourceUrl;
  const NotesFtsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.isTodo = const Value.absent(),
    this.todoCompleted = const Value.absent(),
    this.parentId = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.altitude = const Value.absent(),
    this.sourceUrl = const Value.absent(),
  });
  NotesFtsCompanion.insert({
    required String id,
    required String title,
    required String body,
    required String userCreatedTime,
    required String userUpdatedTime,
    required String isTodo,
    required String todoCompleted,
    required String parentId,
    required String latitude,
    required String longitude,
    required String altitude,
    required String sourceUrl,
  })  : id = Value(id),
        title = Value(title),
        body = Value(body),
        userCreatedTime = Value(userCreatedTime),
        userUpdatedTime = Value(userUpdatedTime),
        isTodo = Value(isTodo),
        todoCompleted = Value(todoCompleted),
        parentId = Value(parentId),
        latitude = Value(latitude),
        longitude = Value(longitude),
        altitude = Value(altitude),
        sourceUrl = Value(sourceUrl);
  static Insertable<NotesFt> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? body,
    Expression<String>? userCreatedTime,
    Expression<String>? userUpdatedTime,
    Expression<String>? isTodo,
    Expression<String>? todoCompleted,
    Expression<String>? parentId,
    Expression<String>? latitude,
    Expression<String>? longitude,
    Expression<String>? altitude,
    Expression<String>? sourceUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
      if (userCreatedTime != null) 'user_created_time': userCreatedTime,
      if (userUpdatedTime != null) 'user_updated_time': userUpdatedTime,
      if (isTodo != null) 'is_todo': isTodo,
      if (todoCompleted != null) 'todo_completed': todoCompleted,
      if (parentId != null) 'parent_id': parentId,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (altitude != null) 'altitude': altitude,
      if (sourceUrl != null) 'source_url': sourceUrl,
    });
  }

  NotesFtsCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<String>? body,
      Value<String>? userCreatedTime,
      Value<String>? userUpdatedTime,
      Value<String>? isTodo,
      Value<String>? todoCompleted,
      Value<String>? parentId,
      Value<String>? latitude,
      Value<String>? longitude,
      Value<String>? altitude,
      Value<String>? sourceUrl}) {
    return NotesFtsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      userCreatedTime: userCreatedTime ?? this.userCreatedTime,
      userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
      isTodo: isTodo ?? this.isTodo,
      todoCompleted: todoCompleted ?? this.todoCompleted,
      parentId: parentId ?? this.parentId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      altitude: altitude ?? this.altitude,
      sourceUrl: sourceUrl ?? this.sourceUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (userCreatedTime.present) {
      map['user_created_time'] = Variable<String>(userCreatedTime.value);
    }
    if (userUpdatedTime.present) {
      map['user_updated_time'] = Variable<String>(userUpdatedTime.value);
    }
    if (isTodo.present) {
      map['is_todo'] = Variable<String>(isTodo.value);
    }
    if (todoCompleted.present) {
      map['todo_completed'] = Variable<String>(todoCompleted.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<String>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<String>(longitude.value);
    }
    if (altitude.present) {
      map['altitude'] = Variable<String>(altitude.value);
    }
    if (sourceUrl.present) {
      map['source_url'] = Variable<String>(sourceUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesFtsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('isTodo: $isTodo, ')
          ..write('todoCompleted: $todoCompleted, ')
          ..write('parentId: $parentId, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('altitude: $altitude, ')
          ..write('sourceUrl: $sourceUrl')
          ..write(')'))
        .toString();
  }
}

class NotesFts extends Table
    with TableInfo<NotesFts, NotesFt>, VirtualTableInfo<NotesFts, NotesFt> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  NotesFts(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: '');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: '');
  final VerificationMeta _bodyMeta = const VerificationMeta('body');
  late final GeneratedColumn<String?> body = GeneratedColumn<String?>(
      'body', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: '');
  final VerificationMeta _userCreatedTimeMeta =
      const VerificationMeta('userCreatedTime');
  late final GeneratedColumn<String?> userCreatedTime =
      GeneratedColumn<String?>('user_created_time', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: true,
          $customConstraints: '');
  final VerificationMeta _userUpdatedTimeMeta =
      const VerificationMeta('userUpdatedTime');
  late final GeneratedColumn<String?> userUpdatedTime =
      GeneratedColumn<String?>('user_updated_time', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: true,
          $customConstraints: '');
  final VerificationMeta _isTodoMeta = const VerificationMeta('isTodo');
  late final GeneratedColumn<String?> isTodo = GeneratedColumn<String?>(
      'is_todo', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: '');
  final VerificationMeta _todoCompletedMeta =
      const VerificationMeta('todoCompleted');
  late final GeneratedColumn<String?> todoCompleted = GeneratedColumn<String?>(
      'todo_completed', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: '');
  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  late final GeneratedColumn<String?> parentId = GeneratedColumn<String?>(
      'parent_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: '');
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  late final GeneratedColumn<String?> latitude = GeneratedColumn<String?>(
      'latitude', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: '');
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  late final GeneratedColumn<String?> longitude = GeneratedColumn<String?>(
      'longitude', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: '');
  final VerificationMeta _altitudeMeta = const VerificationMeta('altitude');
  late final GeneratedColumn<String?> altitude = GeneratedColumn<String?>(
      'altitude', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: '');
  final VerificationMeta _sourceUrlMeta = const VerificationMeta('sourceUrl');
  late final GeneratedColumn<String?> sourceUrl = GeneratedColumn<String?>(
      'source_url', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        body,
        userCreatedTime,
        userUpdatedTime,
        isTodo,
        todoCompleted,
        parentId,
        latitude,
        longitude,
        altitude,
        sourceUrl
      ];
  @override
  String get aliasedName => _alias ?? 'notes_fts';
  @override
  String get actualTableName => 'notes_fts';
  @override
  VerificationContext validateIntegrity(Insertable<NotesFt> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body']!, _bodyMeta));
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    if (data.containsKey('user_created_time')) {
      context.handle(
          _userCreatedTimeMeta,
          userCreatedTime.isAcceptableOrUnknown(
              data['user_created_time']!, _userCreatedTimeMeta));
    } else if (isInserting) {
      context.missing(_userCreatedTimeMeta);
    }
    if (data.containsKey('user_updated_time')) {
      context.handle(
          _userUpdatedTimeMeta,
          userUpdatedTime.isAcceptableOrUnknown(
              data['user_updated_time']!, _userUpdatedTimeMeta));
    } else if (isInserting) {
      context.missing(_userUpdatedTimeMeta);
    }
    if (data.containsKey('is_todo')) {
      context.handle(_isTodoMeta,
          isTodo.isAcceptableOrUnknown(data['is_todo']!, _isTodoMeta));
    } else if (isInserting) {
      context.missing(_isTodoMeta);
    }
    if (data.containsKey('todo_completed')) {
      context.handle(
          _todoCompletedMeta,
          todoCompleted.isAcceptableOrUnknown(
              data['todo_completed']!, _todoCompletedMeta));
    } else if (isInserting) {
      context.missing(_todoCompletedMeta);
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    } else if (isInserting) {
      context.missing(_parentIdMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('altitude')) {
      context.handle(_altitudeMeta,
          altitude.isAcceptableOrUnknown(data['altitude']!, _altitudeMeta));
    } else if (isInserting) {
      context.missing(_altitudeMeta);
    }
    if (data.containsKey('source_url')) {
      context.handle(_sourceUrlMeta,
          sourceUrl.isAcceptableOrUnknown(data['source_url']!, _sourceUrlMeta));
    } else if (isInserting) {
      context.missing(_sourceUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  NotesFt map(Map<String, dynamic> data, {String? tablePrefix}) {
    return NotesFt.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  NotesFts createAlias(String alias) {
    return NotesFts(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs =>
      'fts5(content="notes_normalized", notindexed="id", notindexed="user_created_time", notindexed="user_updated_time", notindexed="is_todo", notindexed="todo_completed", notindexed="parent_id", notindexed="latitude", notindexed="longitude", notindexed="altitude", notindexed="source_url", id, title, body, user_created_time, user_updated_time, is_todo, todo_completed, parent_id, latitude, longitude, altitude, source_url)';
}

class Note extends DataClass implements Insertable<Note> {
  final String? id;
  final String parentId;
  final String title;
  final String body;
  final int createdTime;
  final int updatedTime;
  final int isConflict;
  final double latitude;
  final double longitude;
  final double altitude;
  final String author;
  final String sourceUrl;
  final int isTodo;
  final int todoDue;
  final int todoCompleted;
  final String source;
  final String sourceApplication;
  final String applicationData;
  final double order;
  final int userCreatedTime;
  final int userUpdatedTime;
  final String encryptionCipherText;
  final int encryptionApplied;
  final int markupLanguage;
  final int isShared;
  final String shareId;
  final String conflictOriginalId;
  final String masterKeyId;
  Note(
      {this.id,
      required this.parentId,
      required this.title,
      required this.body,
      required this.createdTime,
      required this.updatedTime,
      required this.isConflict,
      required this.latitude,
      required this.longitude,
      required this.altitude,
      required this.author,
      required this.sourceUrl,
      required this.isTodo,
      required this.todoDue,
      required this.todoCompleted,
      required this.source,
      required this.sourceApplication,
      required this.applicationData,
      required this.order,
      required this.userCreatedTime,
      required this.userUpdatedTime,
      required this.encryptionCipherText,
      required this.encryptionApplied,
      required this.markupLanguage,
      required this.isShared,
      required this.shareId,
      required this.conflictOriginalId,
      required this.masterKeyId});
  factory Note.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Note(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      parentId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}parent_id'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      body: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}body'])!,
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
      isConflict: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_conflict'])!,
      latitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}latitude'])!,
      longitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}longitude'])!,
      altitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}altitude'])!,
      author: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}author'])!,
      sourceUrl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}source_url'])!,
      isTodo: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_todo'])!,
      todoDue: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}todo_due'])!,
      todoCompleted: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}todo_completed'])!,
      source: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}source'])!,
      sourceApplication: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}source_application'])!,
      applicationData: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}application_data'])!,
      order: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order'])!,
      userCreatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_created_time'])!,
      userUpdatedTime: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}user_updated_time'])!,
      encryptionCipherText: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_cipher_text'])!,
      encryptionApplied: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_applied'])!,
      markupLanguage: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}markup_language'])!,
      isShared: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_shared'])!,
      shareId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}share_id'])!,
      conflictOriginalId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}conflict_original_id'])!,
      masterKeyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}master_key_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['parent_id'] = Variable<String>(parentId);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(body);
    map['created_time'] = Variable<int>(createdTime);
    map['updated_time'] = Variable<int>(updatedTime);
    map['is_conflict'] = Variable<int>(isConflict);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    map['altitude'] = Variable<double>(altitude);
    map['author'] = Variable<String>(author);
    map['source_url'] = Variable<String>(sourceUrl);
    map['is_todo'] = Variable<int>(isTodo);
    map['todo_due'] = Variable<int>(todoDue);
    map['todo_completed'] = Variable<int>(todoCompleted);
    map['source'] = Variable<String>(source);
    map['source_application'] = Variable<String>(sourceApplication);
    map['application_data'] = Variable<String>(applicationData);
    map['order'] = Variable<double>(order);
    map['user_created_time'] = Variable<int>(userCreatedTime);
    map['user_updated_time'] = Variable<int>(userUpdatedTime);
    map['encryption_cipher_text'] = Variable<String>(encryptionCipherText);
    map['encryption_applied'] = Variable<int>(encryptionApplied);
    map['markup_language'] = Variable<int>(markupLanguage);
    map['is_shared'] = Variable<int>(isShared);
    map['share_id'] = Variable<String>(shareId);
    map['conflict_original_id'] = Variable<String>(conflictOriginalId);
    map['master_key_id'] = Variable<String>(masterKeyId);
    return map;
  }

  NotesCompanion toCompanion(bool nullToAbsent) {
    return NotesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      parentId: Value(parentId),
      title: Value(title),
      body: Value(body),
      createdTime: Value(createdTime),
      updatedTime: Value(updatedTime),
      isConflict: Value(isConflict),
      latitude: Value(latitude),
      longitude: Value(longitude),
      altitude: Value(altitude),
      author: Value(author),
      sourceUrl: Value(sourceUrl),
      isTodo: Value(isTodo),
      todoDue: Value(todoDue),
      todoCompleted: Value(todoCompleted),
      source: Value(source),
      sourceApplication: Value(sourceApplication),
      applicationData: Value(applicationData),
      order: Value(order),
      userCreatedTime: Value(userCreatedTime),
      userUpdatedTime: Value(userUpdatedTime),
      encryptionCipherText: Value(encryptionCipherText),
      encryptionApplied: Value(encryptionApplied),
      markupLanguage: Value(markupLanguage),
      isShared: Value(isShared),
      shareId: Value(shareId),
      conflictOriginalId: Value(conflictOriginalId),
      masterKeyId: Value(masterKeyId),
    );
  }

  factory Note.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Note(
      id: serializer.fromJson<String?>(json['id']),
      parentId: serializer.fromJson<String>(json['parent_id']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      createdTime: serializer.fromJson<int>(json['created_time']),
      updatedTime: serializer.fromJson<int>(json['updated_time']),
      isConflict: serializer.fromJson<int>(json['is_conflict']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      altitude: serializer.fromJson<double>(json['altitude']),
      author: serializer.fromJson<String>(json['author']),
      sourceUrl: serializer.fromJson<String>(json['source_url']),
      isTodo: serializer.fromJson<int>(json['is_todo']),
      todoDue: serializer.fromJson<int>(json['todo_due']),
      todoCompleted: serializer.fromJson<int>(json['todo_completed']),
      source: serializer.fromJson<String>(json['source']),
      sourceApplication:
          serializer.fromJson<String>(json['source_application']),
      applicationData: serializer.fromJson<String>(json['application_data']),
      order: serializer.fromJson<double>(json['order']),
      userCreatedTime: serializer.fromJson<int>(json['user_created_time']),
      userUpdatedTime: serializer.fromJson<int>(json['user_updated_time']),
      encryptionCipherText:
          serializer.fromJson<String>(json['encryption_cipher_text']),
      encryptionApplied: serializer.fromJson<int>(json['encryption_applied']),
      markupLanguage: serializer.fromJson<int>(json['markup_language']),
      isShared: serializer.fromJson<int>(json['is_shared']),
      shareId: serializer.fromJson<String>(json['share_id']),
      conflictOriginalId:
          serializer.fromJson<String>(json['conflict_original_id']),
      masterKeyId: serializer.fromJson<String>(json['master_key_id']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'parent_id': serializer.toJson<String>(parentId),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'created_time': serializer.toJson<int>(createdTime),
      'updated_time': serializer.toJson<int>(updatedTime),
      'is_conflict': serializer.toJson<int>(isConflict),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'altitude': serializer.toJson<double>(altitude),
      'author': serializer.toJson<String>(author),
      'source_url': serializer.toJson<String>(sourceUrl),
      'is_todo': serializer.toJson<int>(isTodo),
      'todo_due': serializer.toJson<int>(todoDue),
      'todo_completed': serializer.toJson<int>(todoCompleted),
      'source': serializer.toJson<String>(source),
      'source_application': serializer.toJson<String>(sourceApplication),
      'application_data': serializer.toJson<String>(applicationData),
      'order': serializer.toJson<double>(order),
      'user_created_time': serializer.toJson<int>(userCreatedTime),
      'user_updated_time': serializer.toJson<int>(userUpdatedTime),
      'encryption_cipher_text': serializer.toJson<String>(encryptionCipherText),
      'encryption_applied': serializer.toJson<int>(encryptionApplied),
      'markup_language': serializer.toJson<int>(markupLanguage),
      'is_shared': serializer.toJson<int>(isShared),
      'share_id': serializer.toJson<String>(shareId),
      'conflict_original_id': serializer.toJson<String>(conflictOriginalId),
      'master_key_id': serializer.toJson<String>(masterKeyId),
    };
  }

  Note copyWith(
          {String? id,
          String? parentId,
          String? title,
          String? body,
          int? createdTime,
          int? updatedTime,
          int? isConflict,
          double? latitude,
          double? longitude,
          double? altitude,
          String? author,
          String? sourceUrl,
          int? isTodo,
          int? todoDue,
          int? todoCompleted,
          String? source,
          String? sourceApplication,
          String? applicationData,
          double? order,
          int? userCreatedTime,
          int? userUpdatedTime,
          String? encryptionCipherText,
          int? encryptionApplied,
          int? markupLanguage,
          int? isShared,
          String? shareId,
          String? conflictOriginalId,
          String? masterKeyId}) =>
      Note(
        id: id ?? this.id,
        parentId: parentId ?? this.parentId,
        title: title ?? this.title,
        body: body ?? this.body,
        createdTime: createdTime ?? this.createdTime,
        updatedTime: updatedTime ?? this.updatedTime,
        isConflict: isConflict ?? this.isConflict,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        altitude: altitude ?? this.altitude,
        author: author ?? this.author,
        sourceUrl: sourceUrl ?? this.sourceUrl,
        isTodo: isTodo ?? this.isTodo,
        todoDue: todoDue ?? this.todoDue,
        todoCompleted: todoCompleted ?? this.todoCompleted,
        source: source ?? this.source,
        sourceApplication: sourceApplication ?? this.sourceApplication,
        applicationData: applicationData ?? this.applicationData,
        order: order ?? this.order,
        userCreatedTime: userCreatedTime ?? this.userCreatedTime,
        userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
        encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
        encryptionApplied: encryptionApplied ?? this.encryptionApplied,
        markupLanguage: markupLanguage ?? this.markupLanguage,
        isShared: isShared ?? this.isShared,
        shareId: shareId ?? this.shareId,
        conflictOriginalId: conflictOriginalId ?? this.conflictOriginalId,
        masterKeyId: masterKeyId ?? this.masterKeyId,
      );
  @override
  String toString() {
    return (StringBuffer('Note(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('isConflict: $isConflict, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('altitude: $altitude, ')
          ..write('author: $author, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('isTodo: $isTodo, ')
          ..write('todoDue: $todoDue, ')
          ..write('todoCompleted: $todoCompleted, ')
          ..write('source: $source, ')
          ..write('sourceApplication: $sourceApplication, ')
          ..write('applicationData: $applicationData, ')
          ..write('order: $order, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('markupLanguage: $markupLanguage, ')
          ..write('isShared: $isShared, ')
          ..write('shareId: $shareId, ')
          ..write('conflictOriginalId: $conflictOriginalId, ')
          ..write('masterKeyId: $masterKeyId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        parentId,
        title,
        body,
        createdTime,
        updatedTime,
        isConflict,
        latitude,
        longitude,
        altitude,
        author,
        sourceUrl,
        isTodo,
        todoDue,
        todoCompleted,
        source,
        sourceApplication,
        applicationData,
        order,
        userCreatedTime,
        userUpdatedTime,
        encryptionCipherText,
        encryptionApplied,
        markupLanguage,
        isShared,
        shareId,
        conflictOriginalId,
        masterKeyId
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Note &&
          other.id == this.id &&
          other.parentId == this.parentId &&
          other.title == this.title &&
          other.body == this.body &&
          other.createdTime == this.createdTime &&
          other.updatedTime == this.updatedTime &&
          other.isConflict == this.isConflict &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.altitude == this.altitude &&
          other.author == this.author &&
          other.sourceUrl == this.sourceUrl &&
          other.isTodo == this.isTodo &&
          other.todoDue == this.todoDue &&
          other.todoCompleted == this.todoCompleted &&
          other.source == this.source &&
          other.sourceApplication == this.sourceApplication &&
          other.applicationData == this.applicationData &&
          other.order == this.order &&
          other.userCreatedTime == this.userCreatedTime &&
          other.userUpdatedTime == this.userUpdatedTime &&
          other.encryptionCipherText == this.encryptionCipherText &&
          other.encryptionApplied == this.encryptionApplied &&
          other.markupLanguage == this.markupLanguage &&
          other.isShared == this.isShared &&
          other.shareId == this.shareId &&
          other.conflictOriginalId == this.conflictOriginalId &&
          other.masterKeyId == this.masterKeyId);
}

class NotesCompanion extends UpdateCompanion<Note> {
  final Value<String?> id;
  final Value<String> parentId;
  final Value<String> title;
  final Value<String> body;
  final Value<int> createdTime;
  final Value<int> updatedTime;
  final Value<int> isConflict;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<double> altitude;
  final Value<String> author;
  final Value<String> sourceUrl;
  final Value<int> isTodo;
  final Value<int> todoDue;
  final Value<int> todoCompleted;
  final Value<String> source;
  final Value<String> sourceApplication;
  final Value<String> applicationData;
  final Value<double> order;
  final Value<int> userCreatedTime;
  final Value<int> userUpdatedTime;
  final Value<String> encryptionCipherText;
  final Value<int> encryptionApplied;
  final Value<int> markupLanguage;
  final Value<int> isShared;
  final Value<String> shareId;
  final Value<String> conflictOriginalId;
  final Value<String> masterKeyId;
  const NotesCompanion({
    this.id = const Value.absent(),
    this.parentId = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.updatedTime = const Value.absent(),
    this.isConflict = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.altitude = const Value.absent(),
    this.author = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.isTodo = const Value.absent(),
    this.todoDue = const Value.absent(),
    this.todoCompleted = const Value.absent(),
    this.source = const Value.absent(),
    this.sourceApplication = const Value.absent(),
    this.applicationData = const Value.absent(),
    this.order = const Value.absent(),
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.markupLanguage = const Value.absent(),
    this.isShared = const Value.absent(),
    this.shareId = const Value.absent(),
    this.conflictOriginalId = const Value.absent(),
    this.masterKeyId = const Value.absent(),
  });
  NotesCompanion.insert({
    this.id = const Value.absent(),
    this.parentId = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    required int createdTime,
    required int updatedTime,
    this.isConflict = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.altitude = const Value.absent(),
    this.author = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.isTodo = const Value.absent(),
    this.todoDue = const Value.absent(),
    this.todoCompleted = const Value.absent(),
    this.source = const Value.absent(),
    this.sourceApplication = const Value.absent(),
    this.applicationData = const Value.absent(),
    this.order = const Value.absent(),
    this.userCreatedTime = const Value.absent(),
    this.userUpdatedTime = const Value.absent(),
    this.encryptionCipherText = const Value.absent(),
    this.encryptionApplied = const Value.absent(),
    this.markupLanguage = const Value.absent(),
    this.isShared = const Value.absent(),
    this.shareId = const Value.absent(),
    this.conflictOriginalId = const Value.absent(),
    this.masterKeyId = const Value.absent(),
  })  : createdTime = Value(createdTime),
        updatedTime = Value(updatedTime);
  static Insertable<Note> custom({
    Expression<String?>? id,
    Expression<String>? parentId,
    Expression<String>? title,
    Expression<String>? body,
    Expression<int>? createdTime,
    Expression<int>? updatedTime,
    Expression<int>? isConflict,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<double>? altitude,
    Expression<String>? author,
    Expression<String>? sourceUrl,
    Expression<int>? isTodo,
    Expression<int>? todoDue,
    Expression<int>? todoCompleted,
    Expression<String>? source,
    Expression<String>? sourceApplication,
    Expression<String>? applicationData,
    Expression<double>? order,
    Expression<int>? userCreatedTime,
    Expression<int>? userUpdatedTime,
    Expression<String>? encryptionCipherText,
    Expression<int>? encryptionApplied,
    Expression<int>? markupLanguage,
    Expression<int>? isShared,
    Expression<String>? shareId,
    Expression<String>? conflictOriginalId,
    Expression<String>? masterKeyId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (parentId != null) 'parent_id': parentId,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
      if (createdTime != null) 'created_time': createdTime,
      if (updatedTime != null) 'updated_time': updatedTime,
      if (isConflict != null) 'is_conflict': isConflict,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (altitude != null) 'altitude': altitude,
      if (author != null) 'author': author,
      if (sourceUrl != null) 'source_url': sourceUrl,
      if (isTodo != null) 'is_todo': isTodo,
      if (todoDue != null) 'todo_due': todoDue,
      if (todoCompleted != null) 'todo_completed': todoCompleted,
      if (source != null) 'source': source,
      if (sourceApplication != null) 'source_application': sourceApplication,
      if (applicationData != null) 'application_data': applicationData,
      if (order != null) 'order': order,
      if (userCreatedTime != null) 'user_created_time': userCreatedTime,
      if (userUpdatedTime != null) 'user_updated_time': userUpdatedTime,
      if (encryptionCipherText != null)
        'encryption_cipher_text': encryptionCipherText,
      if (encryptionApplied != null) 'encryption_applied': encryptionApplied,
      if (markupLanguage != null) 'markup_language': markupLanguage,
      if (isShared != null) 'is_shared': isShared,
      if (shareId != null) 'share_id': shareId,
      if (conflictOriginalId != null)
        'conflict_original_id': conflictOriginalId,
      if (masterKeyId != null) 'master_key_id': masterKeyId,
    });
  }

  NotesCompanion copyWith(
      {Value<String?>? id,
      Value<String>? parentId,
      Value<String>? title,
      Value<String>? body,
      Value<int>? createdTime,
      Value<int>? updatedTime,
      Value<int>? isConflict,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<double>? altitude,
      Value<String>? author,
      Value<String>? sourceUrl,
      Value<int>? isTodo,
      Value<int>? todoDue,
      Value<int>? todoCompleted,
      Value<String>? source,
      Value<String>? sourceApplication,
      Value<String>? applicationData,
      Value<double>? order,
      Value<int>? userCreatedTime,
      Value<int>? userUpdatedTime,
      Value<String>? encryptionCipherText,
      Value<int>? encryptionApplied,
      Value<int>? markupLanguage,
      Value<int>? isShared,
      Value<String>? shareId,
      Value<String>? conflictOriginalId,
      Value<String>? masterKeyId}) {
    return NotesCompanion(
      id: id ?? this.id,
      parentId: parentId ?? this.parentId,
      title: title ?? this.title,
      body: body ?? this.body,
      createdTime: createdTime ?? this.createdTime,
      updatedTime: updatedTime ?? this.updatedTime,
      isConflict: isConflict ?? this.isConflict,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      altitude: altitude ?? this.altitude,
      author: author ?? this.author,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      isTodo: isTodo ?? this.isTodo,
      todoDue: todoDue ?? this.todoDue,
      todoCompleted: todoCompleted ?? this.todoCompleted,
      source: source ?? this.source,
      sourceApplication: sourceApplication ?? this.sourceApplication,
      applicationData: applicationData ?? this.applicationData,
      order: order ?? this.order,
      userCreatedTime: userCreatedTime ?? this.userCreatedTime,
      userUpdatedTime: userUpdatedTime ?? this.userUpdatedTime,
      encryptionCipherText: encryptionCipherText ?? this.encryptionCipherText,
      encryptionApplied: encryptionApplied ?? this.encryptionApplied,
      markupLanguage: markupLanguage ?? this.markupLanguage,
      isShared: isShared ?? this.isShared,
      shareId: shareId ?? this.shareId,
      conflictOriginalId: conflictOriginalId ?? this.conflictOriginalId,
      masterKeyId: masterKeyId ?? this.masterKeyId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (parentId.present) {
      map['parent_id'] = Variable<String>(parentId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<int>(updatedTime.value);
    }
    if (isConflict.present) {
      map['is_conflict'] = Variable<int>(isConflict.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (altitude.present) {
      map['altitude'] = Variable<double>(altitude.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (sourceUrl.present) {
      map['source_url'] = Variable<String>(sourceUrl.value);
    }
    if (isTodo.present) {
      map['is_todo'] = Variable<int>(isTodo.value);
    }
    if (todoDue.present) {
      map['todo_due'] = Variable<int>(todoDue.value);
    }
    if (todoCompleted.present) {
      map['todo_completed'] = Variable<int>(todoCompleted.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (sourceApplication.present) {
      map['source_application'] = Variable<String>(sourceApplication.value);
    }
    if (applicationData.present) {
      map['application_data'] = Variable<String>(applicationData.value);
    }
    if (order.present) {
      map['order'] = Variable<double>(order.value);
    }
    if (userCreatedTime.present) {
      map['user_created_time'] = Variable<int>(userCreatedTime.value);
    }
    if (userUpdatedTime.present) {
      map['user_updated_time'] = Variable<int>(userUpdatedTime.value);
    }
    if (encryptionCipherText.present) {
      map['encryption_cipher_text'] =
          Variable<String>(encryptionCipherText.value);
    }
    if (encryptionApplied.present) {
      map['encryption_applied'] = Variable<int>(encryptionApplied.value);
    }
    if (markupLanguage.present) {
      map['markup_language'] = Variable<int>(markupLanguage.value);
    }
    if (isShared.present) {
      map['is_shared'] = Variable<int>(isShared.value);
    }
    if (shareId.present) {
      map['share_id'] = Variable<String>(shareId.value);
    }
    if (conflictOriginalId.present) {
      map['conflict_original_id'] = Variable<String>(conflictOriginalId.value);
    }
    if (masterKeyId.present) {
      map['master_key_id'] = Variable<String>(masterKeyId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesCompanion(')
          ..write('id: $id, ')
          ..write('parentId: $parentId, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('isConflict: $isConflict, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('altitude: $altitude, ')
          ..write('author: $author, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('isTodo: $isTodo, ')
          ..write('todoDue: $todoDue, ')
          ..write('todoCompleted: $todoCompleted, ')
          ..write('source: $source, ')
          ..write('sourceApplication: $sourceApplication, ')
          ..write('applicationData: $applicationData, ')
          ..write('order: $order, ')
          ..write('userCreatedTime: $userCreatedTime, ')
          ..write('userUpdatedTime: $userUpdatedTime, ')
          ..write('encryptionCipherText: $encryptionCipherText, ')
          ..write('encryptionApplied: $encryptionApplied, ')
          ..write('markupLanguage: $markupLanguage, ')
          ..write('isShared: $isShared, ')
          ..write('shareId: $shareId, ')
          ..write('conflictOriginalId: $conflictOriginalId, ')
          ..write('masterKeyId: $masterKeyId')
          ..write(')'))
        .toString();
  }
}

class Notes extends Table with TableInfo<Notes, Note> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Notes(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _parentIdMeta = const VerificationMeta('parentId');
  late final GeneratedColumn<String?> parentId = GeneratedColumn<String?>(
      'parent_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _bodyMeta = const VerificationMeta('body');
  late final GeneratedColumn<String?> body = GeneratedColumn<String?>(
      'body', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _isConflictMeta = const VerificationMeta('isConflict');
  late final GeneratedColumn<int?> isConflict = GeneratedColumn<int?>(
      'is_conflict', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  late final GeneratedColumn<double?> latitude = GeneratedColumn<double?>(
      'latitude', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<double>('0'));
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  late final GeneratedColumn<double?> longitude = GeneratedColumn<double?>(
      'longitude', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<double>('0'));
  final VerificationMeta _altitudeMeta = const VerificationMeta('altitude');
  late final GeneratedColumn<double?> altitude = GeneratedColumn<double?>(
      'altitude', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<double>('0'));
  final VerificationMeta _authorMeta = const VerificationMeta('author');
  late final GeneratedColumn<String?> author = GeneratedColumn<String?>(
      'author', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _sourceUrlMeta = const VerificationMeta('sourceUrl');
  late final GeneratedColumn<String?> sourceUrl = GeneratedColumn<String?>(
      'source_url', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _isTodoMeta = const VerificationMeta('isTodo');
  late final GeneratedColumn<int?> isTodo = GeneratedColumn<int?>(
      'is_todo', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _todoDueMeta = const VerificationMeta('todoDue');
  late final GeneratedColumn<int?> todoDue = GeneratedColumn<int?>(
      'todo_due', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _todoCompletedMeta =
      const VerificationMeta('todoCompleted');
  late final GeneratedColumn<int?> todoCompleted = GeneratedColumn<int?>(
      'todo_completed', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _sourceMeta = const VerificationMeta('source');
  late final GeneratedColumn<String?> source = GeneratedColumn<String?>(
      'source', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _sourceApplicationMeta =
      const VerificationMeta('sourceApplication');
  late final GeneratedColumn<String?> sourceApplication =
      GeneratedColumn<String?>('source_application', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _applicationDataMeta =
      const VerificationMeta('applicationData');
  late final GeneratedColumn<String?> applicationData =
      GeneratedColumn<String?>('application_data', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _orderMeta = const VerificationMeta('order');
  late final GeneratedColumn<double?> order = GeneratedColumn<double?>(
      'order', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<double>('0'));
  final VerificationMeta _userCreatedTimeMeta =
      const VerificationMeta('userCreatedTime');
  late final GeneratedColumn<int?> userCreatedTime = GeneratedColumn<int?>(
      'user_created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _userUpdatedTimeMeta =
      const VerificationMeta('userUpdatedTime');
  late final GeneratedColumn<int?> userUpdatedTime = GeneratedColumn<int?>(
      'user_updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _encryptionCipherTextMeta =
      const VerificationMeta('encryptionCipherText');
  late final GeneratedColumn<String?> encryptionCipherText =
      GeneratedColumn<String?>('encryption_cipher_text', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _encryptionAppliedMeta =
      const VerificationMeta('encryptionApplied');
  late final GeneratedColumn<int?> encryptionApplied = GeneratedColumn<int?>(
      'encryption_applied', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _markupLanguageMeta =
      const VerificationMeta('markupLanguage');
  late final GeneratedColumn<int?> markupLanguage = GeneratedColumn<int?>(
      'markup_language', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 1',
      defaultValue: const CustomExpression<int>('1'));
  final VerificationMeta _isSharedMeta = const VerificationMeta('isShared');
  late final GeneratedColumn<int?> isShared = GeneratedColumn<int?>(
      'is_shared', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  final VerificationMeta _shareIdMeta = const VerificationMeta('shareId');
  late final GeneratedColumn<String?> shareId = GeneratedColumn<String?>(
      'share_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _conflictOriginalIdMeta =
      const VerificationMeta('conflictOriginalId');
  late final GeneratedColumn<String?> conflictOriginalId =
      GeneratedColumn<String?>('conflict_original_id', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: false,
          $customConstraints: 'NOT NULL DEFAULT \'\'',
          defaultValue: const CustomExpression<String>('\'\''));
  final VerificationMeta _masterKeyIdMeta =
      const VerificationMeta('masterKeyId');
  late final GeneratedColumn<String?> masterKeyId = GeneratedColumn<String?>(
      'master_key_id', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT \'\'',
      defaultValue: const CustomExpression<String>('\'\''));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        parentId,
        title,
        body,
        createdTime,
        updatedTime,
        isConflict,
        latitude,
        longitude,
        altitude,
        author,
        sourceUrl,
        isTodo,
        todoDue,
        todoCompleted,
        source,
        sourceApplication,
        applicationData,
        order,
        userCreatedTime,
        userUpdatedTime,
        encryptionCipherText,
        encryptionApplied,
        markupLanguage,
        isShared,
        shareId,
        conflictOriginalId,
        masterKeyId
      ];
  @override
  String get aliasedName => _alias ?? 'notes';
  @override
  String get actualTableName => 'notes';
  @override
  VerificationContext validateIntegrity(Insertable<Note> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('parent_id')) {
      context.handle(_parentIdMeta,
          parentId.isAcceptableOrUnknown(data['parent_id']!, _parentIdMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    }
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body']!, _bodyMeta));
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    if (data.containsKey('is_conflict')) {
      context.handle(
          _isConflictMeta,
          isConflict.isAcceptableOrUnknown(
              data['is_conflict']!, _isConflictMeta));
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    }
    if (data.containsKey('altitude')) {
      context.handle(_altitudeMeta,
          altitude.isAcceptableOrUnknown(data['altitude']!, _altitudeMeta));
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    }
    if (data.containsKey('source_url')) {
      context.handle(_sourceUrlMeta,
          sourceUrl.isAcceptableOrUnknown(data['source_url']!, _sourceUrlMeta));
    }
    if (data.containsKey('is_todo')) {
      context.handle(_isTodoMeta,
          isTodo.isAcceptableOrUnknown(data['is_todo']!, _isTodoMeta));
    }
    if (data.containsKey('todo_due')) {
      context.handle(_todoDueMeta,
          todoDue.isAcceptableOrUnknown(data['todo_due']!, _todoDueMeta));
    }
    if (data.containsKey('todo_completed')) {
      context.handle(
          _todoCompletedMeta,
          todoCompleted.isAcceptableOrUnknown(
              data['todo_completed']!, _todoCompletedMeta));
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    }
    if (data.containsKey('source_application')) {
      context.handle(
          _sourceApplicationMeta,
          sourceApplication.isAcceptableOrUnknown(
              data['source_application']!, _sourceApplicationMeta));
    }
    if (data.containsKey('application_data')) {
      context.handle(
          _applicationDataMeta,
          applicationData.isAcceptableOrUnknown(
              data['application_data']!, _applicationDataMeta));
    }
    if (data.containsKey('order')) {
      context.handle(
          _orderMeta, order.isAcceptableOrUnknown(data['order']!, _orderMeta));
    }
    if (data.containsKey('user_created_time')) {
      context.handle(
          _userCreatedTimeMeta,
          userCreatedTime.isAcceptableOrUnknown(
              data['user_created_time']!, _userCreatedTimeMeta));
    }
    if (data.containsKey('user_updated_time')) {
      context.handle(
          _userUpdatedTimeMeta,
          userUpdatedTime.isAcceptableOrUnknown(
              data['user_updated_time']!, _userUpdatedTimeMeta));
    }
    if (data.containsKey('encryption_cipher_text')) {
      context.handle(
          _encryptionCipherTextMeta,
          encryptionCipherText.isAcceptableOrUnknown(
              data['encryption_cipher_text']!, _encryptionCipherTextMeta));
    }
    if (data.containsKey('encryption_applied')) {
      context.handle(
          _encryptionAppliedMeta,
          encryptionApplied.isAcceptableOrUnknown(
              data['encryption_applied']!, _encryptionAppliedMeta));
    }
    if (data.containsKey('markup_language')) {
      context.handle(
          _markupLanguageMeta,
          markupLanguage.isAcceptableOrUnknown(
              data['markup_language']!, _markupLanguageMeta));
    }
    if (data.containsKey('is_shared')) {
      context.handle(_isSharedMeta,
          isShared.isAcceptableOrUnknown(data['is_shared']!, _isSharedMeta));
    }
    if (data.containsKey('share_id')) {
      context.handle(_shareIdMeta,
          shareId.isAcceptableOrUnknown(data['share_id']!, _shareIdMeta));
    }
    if (data.containsKey('conflict_original_id')) {
      context.handle(
          _conflictOriginalIdMeta,
          conflictOriginalId.isAcceptableOrUnknown(
              data['conflict_original_id']!, _conflictOriginalIdMeta));
    }
    if (data.containsKey('master_key_id')) {
      context.handle(
          _masterKeyIdMeta,
          masterKeyId.isAcceptableOrUnknown(
              data['master_key_id']!, _masterKeyIdMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Note map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Note.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Notes createAlias(String alias) {
    return Notes(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class TableField extends DataClass implements Insertable<TableField> {
  final int id;
  final String tableName;
  final String fieldName;
  final int fieldType;
  final String? fieldDefault;
  TableField(
      {required this.id,
      required this.tableName,
      required this.fieldName,
      required this.fieldType,
      this.fieldDefault});
  factory TableField.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TableField(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      tableName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}table_name'])!,
      fieldName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}field_name'])!,
      fieldType: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}field_type'])!,
      fieldDefault: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}field_default']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['table_name'] = Variable<String>(tableName);
    map['field_name'] = Variable<String>(fieldName);
    map['field_type'] = Variable<int>(fieldType);
    if (!nullToAbsent || fieldDefault != null) {
      map['field_default'] = Variable<String?>(fieldDefault);
    }
    return map;
  }

  TableFieldsCompanion toCompanion(bool nullToAbsent) {
    return TableFieldsCompanion(
      id: Value(id),
      tableName: Value(tableName),
      fieldName: Value(fieldName),
      fieldType: Value(fieldType),
      fieldDefault: fieldDefault == null && nullToAbsent
          ? const Value.absent()
          : Value(fieldDefault),
    );
  }

  factory TableField.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TableField(
      id: serializer.fromJson<int>(json['id']),
      tableName: serializer.fromJson<String>(json['table_name']),
      fieldName: serializer.fromJson<String>(json['field_name']),
      fieldType: serializer.fromJson<int>(json['field_type']),
      fieldDefault: serializer.fromJson<String?>(json['field_default']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'table_name': serializer.toJson<String>(tableName),
      'field_name': serializer.toJson<String>(fieldName),
      'field_type': serializer.toJson<int>(fieldType),
      'field_default': serializer.toJson<String?>(fieldDefault),
    };
  }

  TableField copyWith(
          {int? id,
          String? tableName,
          String? fieldName,
          int? fieldType,
          String? fieldDefault}) =>
      TableField(
        id: id ?? this.id,
        tableName: tableName ?? this.tableName,
        fieldName: fieldName ?? this.fieldName,
        fieldType: fieldType ?? this.fieldType,
        fieldDefault: fieldDefault ?? this.fieldDefault,
      );
  @override
  String toString() {
    return (StringBuffer('TableField(')
          ..write('id: $id, ')
          ..write('tableName: $tableName, ')
          ..write('fieldName: $fieldName, ')
          ..write('fieldType: $fieldType, ')
          ..write('fieldDefault: $fieldDefault')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, tableName, fieldName, fieldType, fieldDefault);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TableField &&
          other.id == this.id &&
          other.tableName == this.tableName &&
          other.fieldName == this.fieldName &&
          other.fieldType == this.fieldType &&
          other.fieldDefault == this.fieldDefault);
}

class TableFieldsCompanion extends UpdateCompanion<TableField> {
  final Value<int> id;
  final Value<String> tableName;
  final Value<String> fieldName;
  final Value<int> fieldType;
  final Value<String?> fieldDefault;
  const TableFieldsCompanion({
    this.id = const Value.absent(),
    this.tableName = const Value.absent(),
    this.fieldName = const Value.absent(),
    this.fieldType = const Value.absent(),
    this.fieldDefault = const Value.absent(),
  });
  TableFieldsCompanion.insert({
    this.id = const Value.absent(),
    required String tableName,
    required String fieldName,
    required int fieldType,
    this.fieldDefault = const Value.absent(),
  })  : tableName = Value(tableName),
        fieldName = Value(fieldName),
        fieldType = Value(fieldType);
  static Insertable<TableField> custom({
    Expression<int>? id,
    Expression<String>? tableName,
    Expression<String>? fieldName,
    Expression<int>? fieldType,
    Expression<String?>? fieldDefault,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (tableName != null) 'table_name': tableName,
      if (fieldName != null) 'field_name': fieldName,
      if (fieldType != null) 'field_type': fieldType,
      if (fieldDefault != null) 'field_default': fieldDefault,
    });
  }

  TableFieldsCompanion copyWith(
      {Value<int>? id,
      Value<String>? tableName,
      Value<String>? fieldName,
      Value<int>? fieldType,
      Value<String?>? fieldDefault}) {
    return TableFieldsCompanion(
      id: id ?? this.id,
      tableName: tableName ?? this.tableName,
      fieldName: fieldName ?? this.fieldName,
      fieldType: fieldType ?? this.fieldType,
      fieldDefault: fieldDefault ?? this.fieldDefault,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (tableName.present) {
      map['table_name'] = Variable<String>(tableName.value);
    }
    if (fieldName.present) {
      map['field_name'] = Variable<String>(fieldName.value);
    }
    if (fieldType.present) {
      map['field_type'] = Variable<int>(fieldType.value);
    }
    if (fieldDefault.present) {
      map['field_default'] = Variable<String?>(fieldDefault.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TableFieldsCompanion(')
          ..write('id: $id, ')
          ..write('tableName: $tableName, ')
          ..write('fieldName: $fieldName, ')
          ..write('fieldType: $fieldType, ')
          ..write('fieldDefault: $fieldDefault')
          ..write(')'))
        .toString();
  }
}

class TableFields extends Table with TableInfo<TableFields, TableField> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  TableFields(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _tableNameMeta = const VerificationMeta('tableName');
  late final GeneratedColumn<String?> tableName = GeneratedColumn<String?>(
      'table_name', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _fieldNameMeta = const VerificationMeta('fieldName');
  late final GeneratedColumn<String?> fieldName = GeneratedColumn<String?>(
      'field_name', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _fieldTypeMeta = const VerificationMeta('fieldType');
  late final GeneratedColumn<int?> fieldType = GeneratedColumn<int?>(
      'field_type', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _fieldDefaultMeta =
      const VerificationMeta('fieldDefault');
  late final GeneratedColumn<String?> fieldDefault = GeneratedColumn<String?>(
      'field_default', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, tableName, fieldName, fieldType, fieldDefault];
  @override
  String get aliasedName => _alias ?? 'table_fields';
  @override
  String get actualTableName => 'table_fields';
  @override
  VerificationContext validateIntegrity(Insertable<TableField> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('table_name')) {
      context.handle(_tableNameMeta,
          tableName.isAcceptableOrUnknown(data['table_name']!, _tableNameMeta));
    } else if (isInserting) {
      context.missing(_tableNameMeta);
    }
    if (data.containsKey('field_name')) {
      context.handle(_fieldNameMeta,
          fieldName.isAcceptableOrUnknown(data['field_name']!, _fieldNameMeta));
    } else if (isInserting) {
      context.missing(_fieldNameMeta);
    }
    if (data.containsKey('field_type')) {
      context.handle(_fieldTypeMeta,
          fieldType.isAcceptableOrUnknown(data['field_type']!, _fieldTypeMeta));
    } else if (isInserting) {
      context.missing(_fieldTypeMeta);
    }
    if (data.containsKey('field_default')) {
      context.handle(
          _fieldDefaultMeta,
          fieldDefault.isAcceptableOrUnknown(
              data['field_default']!, _fieldDefaultMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TableField map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TableField.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  TableFields createAlias(String alias) {
    return TableFields(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class VersionData extends DataClass implements Insertable<VersionData> {
  final int version;
  final int tableFieldsVersion;
  VersionData({required this.version, required this.tableFieldsVersion});
  factory VersionData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return VersionData(
      version: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}version'])!,
      tableFieldsVersion: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}table_fields_version'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['version'] = Variable<int>(version);
    map['table_fields_version'] = Variable<int>(tableFieldsVersion);
    return map;
  }

  VersionCompanion toCompanion(bool nullToAbsent) {
    return VersionCompanion(
      version: Value(version),
      tableFieldsVersion: Value(tableFieldsVersion),
    );
  }

  factory VersionData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return VersionData(
      version: serializer.fromJson<int>(json['version']),
      tableFieldsVersion:
          serializer.fromJson<int>(json['table_fields_version']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'version': serializer.toJson<int>(version),
      'table_fields_version': serializer.toJson<int>(tableFieldsVersion),
    };
  }

  VersionData copyWith({int? version, int? tableFieldsVersion}) => VersionData(
        version: version ?? this.version,
        tableFieldsVersion: tableFieldsVersion ?? this.tableFieldsVersion,
      );
  @override
  String toString() {
    return (StringBuffer('VersionData(')
          ..write('version: $version, ')
          ..write('tableFieldsVersion: $tableFieldsVersion')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(version, tableFieldsVersion);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is VersionData &&
          other.version == this.version &&
          other.tableFieldsVersion == this.tableFieldsVersion);
}

class VersionCompanion extends UpdateCompanion<VersionData> {
  final Value<int> version;
  final Value<int> tableFieldsVersion;
  const VersionCompanion({
    this.version = const Value.absent(),
    this.tableFieldsVersion = const Value.absent(),
  });
  VersionCompanion.insert({
    required int version,
    this.tableFieldsVersion = const Value.absent(),
  }) : version = Value(version);
  static Insertable<VersionData> custom({
    Expression<int>? version,
    Expression<int>? tableFieldsVersion,
  }) {
    return RawValuesInsertable({
      if (version != null) 'version': version,
      if (tableFieldsVersion != null)
        'table_fields_version': tableFieldsVersion,
    });
  }

  VersionCompanion copyWith(
      {Value<int>? version, Value<int>? tableFieldsVersion}) {
    return VersionCompanion(
      version: version ?? this.version,
      tableFieldsVersion: tableFieldsVersion ?? this.tableFieldsVersion,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (version.present) {
      map['version'] = Variable<int>(version.value);
    }
    if (tableFieldsVersion.present) {
      map['table_fields_version'] = Variable<int>(tableFieldsVersion.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VersionCompanion(')
          ..write('version: $version, ')
          ..write('tableFieldsVersion: $tableFieldsVersion')
          ..write(')'))
        .toString();
  }
}

class Version extends Table with TableInfo<Version, VersionData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Version(this.attachedDatabase, [this._alias]);
  final VerificationMeta _versionMeta = const VerificationMeta('version');
  late final GeneratedColumn<int?> version = GeneratedColumn<int?>(
      'version', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _tableFieldsVersionMeta =
      const VerificationMeta('tableFieldsVersion');
  late final GeneratedColumn<int?> tableFieldsVersion = GeneratedColumn<int?>(
      'table_fields_version', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'NOT NULL DEFAULT 0',
      defaultValue: const CustomExpression<int>('0'));
  @override
  List<GeneratedColumn> get $columns => [version, tableFieldsVersion];
  @override
  String get aliasedName => _alias ?? 'version';
  @override
  String get actualTableName => 'version';
  @override
  VerificationContext validateIntegrity(Insertable<VersionData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('version')) {
      context.handle(_versionMeta,
          version.isAcceptableOrUnknown(data['version']!, _versionMeta));
    } else if (isInserting) {
      context.missing(_versionMeta);
    }
    if (data.containsKey('table_fields_version')) {
      context.handle(
          _tableFieldsVersionMeta,
          tableFieldsVersion.isAcceptableOrUnknown(
              data['table_fields_version']!, _tableFieldsVersionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  VersionData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return VersionData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Version createAlias(String alias) {
    return Version(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Setting extends DataClass implements Insertable<Setting> {
  final String? key;
  final String? value;
  Setting({this.key, this.value});
  factory Setting.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Setting(
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key']),
      value: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}value']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || key != null) {
      map['key'] = Variable<String?>(key);
    }
    if (!nullToAbsent || value != null) {
      map['value'] = Variable<String?>(value);
    }
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      key: key == null && nullToAbsent ? const Value.absent() : Value(key),
      value:
          value == null && nullToAbsent ? const Value.absent() : Value(value),
    );
  }

  factory Setting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Setting(
      key: serializer.fromJson<String?>(json['key']),
      value: serializer.fromJson<String?>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String?>(key),
      'value': serializer.toJson<String?>(value),
    };
  }

  Setting copyWith({String? key, String? value}) => Setting(
        key: key ?? this.key,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('Setting(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Setting && other.key == this.key && other.value == this.value);
}

class SettingsCompanion extends UpdateCompanion<Setting> {
  final Value<String?> key;
  final Value<String?> value;
  const SettingsCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
  });
  SettingsCompanion.insert({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
  });
  static Insertable<Setting> custom({
    Expression<String?>? key,
    Expression<String?>? value,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
    });
  }

  SettingsCompanion copyWith({Value<String?>? key, Value<String?>? value}) {
    return SettingsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String?>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String?>(value.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }
}

class Settings extends Table with TableInfo<Settings, Setting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Settings(this.attachedDatabase, [this._alias]);
  final VerificationMeta _keyMeta = const VerificationMeta('key');
  late final GeneratedColumn<String?> key = GeneratedColumn<String?>(
      'key', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _valueMeta = const VerificationMeta('value');
  late final GeneratedColumn<String?> value = GeneratedColumn<String?>(
      'value', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? 'settings';
  @override
  String get actualTableName => 'settings';
  @override
  VerificationContext validateIntegrity(Insertable<Setting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  Setting map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Setting.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Settings createAlias(String alias) {
    return Settings(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class SqliteSequenceData extends DataClass
    implements Insertable<SqliteSequenceData> {
  final Uint8List? name;
  final Uint8List? seq;
  SqliteSequenceData({this.name, this.seq});
  factory SqliteSequenceData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return SqliteSequenceData(
      name: const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name']),
      seq: const BlobType()
          .mapFromDatabaseResponse(data['${effectivePrefix}seq']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<Uint8List?>(name);
    }
    if (!nullToAbsent || seq != null) {
      map['seq'] = Variable<Uint8List?>(seq);
    }
    return map;
  }

  SqliteSequenceCompanion toCompanion(bool nullToAbsent) {
    return SqliteSequenceCompanion(
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      seq: seq == null && nullToAbsent ? const Value.absent() : Value(seq),
    );
  }

  factory SqliteSequenceData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SqliteSequenceData(
      name: serializer.fromJson<Uint8List?>(json['name']),
      seq: serializer.fromJson<Uint8List?>(json['seq']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'name': serializer.toJson<Uint8List?>(name),
      'seq': serializer.toJson<Uint8List?>(seq),
    };
  }

  SqliteSequenceData copyWith({Uint8List? name, Uint8List? seq}) =>
      SqliteSequenceData(
        name: name ?? this.name,
        seq: seq ?? this.seq,
      );
  @override
  String toString() {
    return (StringBuffer('SqliteSequenceData(')
          ..write('name: $name, ')
          ..write('seq: $seq')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(name, seq);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SqliteSequenceData &&
          other.name == this.name &&
          other.seq == this.seq);
}

class SqliteSequenceCompanion extends UpdateCompanion<SqliteSequenceData> {
  final Value<Uint8List?> name;
  final Value<Uint8List?> seq;
  const SqliteSequenceCompanion({
    this.name = const Value.absent(),
    this.seq = const Value.absent(),
  });
  SqliteSequenceCompanion.insert({
    this.name = const Value.absent(),
    this.seq = const Value.absent(),
  });
  static Insertable<SqliteSequenceData> custom({
    Expression<Uint8List?>? name,
    Expression<Uint8List?>? seq,
  }) {
    return RawValuesInsertable({
      if (name != null) 'name': name,
      if (seq != null) 'seq': seq,
    });
  }

  SqliteSequenceCompanion copyWith(
      {Value<Uint8List?>? name, Value<Uint8List?>? seq}) {
    return SqliteSequenceCompanion(
      name: name ?? this.name,
      seq: seq ?? this.seq,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (name.present) {
      map['name'] = Variable<Uint8List?>(name.value);
    }
    if (seq.present) {
      map['seq'] = Variable<Uint8List?>(seq.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SqliteSequenceCompanion(')
          ..write('name: $name, ')
          ..write('seq: $seq')
          ..write(')'))
        .toString();
  }
}

class SqliteSequence extends Table
    with TableInfo<SqliteSequence, SqliteSequenceData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  SqliteSequence(this.attachedDatabase, [this._alias]);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  late final GeneratedColumn<Uint8List?> name = GeneratedColumn<Uint8List?>(
      'name', aliasedName, true,
      type: const BlobType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  final VerificationMeta _seqMeta = const VerificationMeta('seq');
  late final GeneratedColumn<Uint8List?> seq = GeneratedColumn<Uint8List?>(
      'seq', aliasedName, true,
      type: const BlobType(),
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [name, seq];
  @override
  String get aliasedName => _alias ?? 'sqlite_sequence';
  @override
  String get actualTableName => 'sqlite_sequence';
  @override
  VerificationContext validateIntegrity(Insertable<SqliteSequenceData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('seq')) {
      context.handle(
          _seqMeta, seq.isAcceptableOrUnknown(data['seq']!, _seqMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  SqliteSequenceData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return SqliteSequenceData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  SqliteSequence createAlias(String alias) {
    return SqliteSequence(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class MasterKey extends DataClass implements Insertable<MasterKey> {
  final String? id;
  final int createdTime;
  final int updatedTime;
  final String sourceApplication;
  final int encryptionMethod;
  final String checksum;
  final String content;
  MasterKey(
      {this.id,
      required this.createdTime,
      required this.updatedTime,
      required this.sourceApplication,
      required this.encryptionMethod,
      required this.checksum,
      required this.content});
  factory MasterKey.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return MasterKey(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
      sourceApplication: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}source_application'])!,
      encryptionMethod: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}encryption_method'])!,
      checksum: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}checksum'])!,
      content: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}content'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String?>(id);
    }
    map['created_time'] = Variable<int>(createdTime);
    map['updated_time'] = Variable<int>(updatedTime);
    map['source_application'] = Variable<String>(sourceApplication);
    map['encryption_method'] = Variable<int>(encryptionMethod);
    map['checksum'] = Variable<String>(checksum);
    map['content'] = Variable<String>(content);
    return map;
  }

  MasterKeysCompanion toCompanion(bool nullToAbsent) {
    return MasterKeysCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      createdTime: Value(createdTime),
      updatedTime: Value(updatedTime),
      sourceApplication: Value(sourceApplication),
      encryptionMethod: Value(encryptionMethod),
      checksum: Value(checksum),
      content: Value(content),
    );
  }

  factory MasterKey.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MasterKey(
      id: serializer.fromJson<String?>(json['id']),
      createdTime: serializer.fromJson<int>(json['created_time']),
      updatedTime: serializer.fromJson<int>(json['updated_time']),
      sourceApplication:
          serializer.fromJson<String>(json['source_application']),
      encryptionMethod: serializer.fromJson<int>(json['encryption_method']),
      checksum: serializer.fromJson<String>(json['checksum']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'created_time': serializer.toJson<int>(createdTime),
      'updated_time': serializer.toJson<int>(updatedTime),
      'source_application': serializer.toJson<String>(sourceApplication),
      'encryption_method': serializer.toJson<int>(encryptionMethod),
      'checksum': serializer.toJson<String>(checksum),
      'content': serializer.toJson<String>(content),
    };
  }

  MasterKey copyWith(
          {String? id,
          int? createdTime,
          int? updatedTime,
          String? sourceApplication,
          int? encryptionMethod,
          String? checksum,
          String? content}) =>
      MasterKey(
        id: id ?? this.id,
        createdTime: createdTime ?? this.createdTime,
        updatedTime: updatedTime ?? this.updatedTime,
        sourceApplication: sourceApplication ?? this.sourceApplication,
        encryptionMethod: encryptionMethod ?? this.encryptionMethod,
        checksum: checksum ?? this.checksum,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('MasterKey(')
          ..write('id: $id, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('sourceApplication: $sourceApplication, ')
          ..write('encryptionMethod: $encryptionMethod, ')
          ..write('checksum: $checksum, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, createdTime, updatedTime,
      sourceApplication, encryptionMethod, checksum, content);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MasterKey &&
          other.id == this.id &&
          other.createdTime == this.createdTime &&
          other.updatedTime == this.updatedTime &&
          other.sourceApplication == this.sourceApplication &&
          other.encryptionMethod == this.encryptionMethod &&
          other.checksum == this.checksum &&
          other.content == this.content);
}

class MasterKeysCompanion extends UpdateCompanion<MasterKey> {
  final Value<String?> id;
  final Value<int> createdTime;
  final Value<int> updatedTime;
  final Value<String> sourceApplication;
  final Value<int> encryptionMethod;
  final Value<String> checksum;
  final Value<String> content;
  const MasterKeysCompanion({
    this.id = const Value.absent(),
    this.createdTime = const Value.absent(),
    this.updatedTime = const Value.absent(),
    this.sourceApplication = const Value.absent(),
    this.encryptionMethod = const Value.absent(),
    this.checksum = const Value.absent(),
    this.content = const Value.absent(),
  });
  MasterKeysCompanion.insert({
    this.id = const Value.absent(),
    required int createdTime,
    required int updatedTime,
    required String sourceApplication,
    required int encryptionMethod,
    required String checksum,
    required String content,
  })  : createdTime = Value(createdTime),
        updatedTime = Value(updatedTime),
        sourceApplication = Value(sourceApplication),
        encryptionMethod = Value(encryptionMethod),
        checksum = Value(checksum),
        content = Value(content);
  static Insertable<MasterKey> custom({
    Expression<String?>? id,
    Expression<int>? createdTime,
    Expression<int>? updatedTime,
    Expression<String>? sourceApplication,
    Expression<int>? encryptionMethod,
    Expression<String>? checksum,
    Expression<String>? content,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdTime != null) 'created_time': createdTime,
      if (updatedTime != null) 'updated_time': updatedTime,
      if (sourceApplication != null) 'source_application': sourceApplication,
      if (encryptionMethod != null) 'encryption_method': encryptionMethod,
      if (checksum != null) 'checksum': checksum,
      if (content != null) 'content': content,
    });
  }

  MasterKeysCompanion copyWith(
      {Value<String?>? id,
      Value<int>? createdTime,
      Value<int>? updatedTime,
      Value<String>? sourceApplication,
      Value<int>? encryptionMethod,
      Value<String>? checksum,
      Value<String>? content}) {
    return MasterKeysCompanion(
      id: id ?? this.id,
      createdTime: createdTime ?? this.createdTime,
      updatedTime: updatedTime ?? this.updatedTime,
      sourceApplication: sourceApplication ?? this.sourceApplication,
      encryptionMethod: encryptionMethod ?? this.encryptionMethod,
      checksum: checksum ?? this.checksum,
      content: content ?? this.content,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String?>(id.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<int>(updatedTime.value);
    }
    if (sourceApplication.present) {
      map['source_application'] = Variable<String>(sourceApplication.value);
    }
    if (encryptionMethod.present) {
      map['encryption_method'] = Variable<int>(encryptionMethod.value);
    }
    if (checksum.present) {
      map['checksum'] = Variable<String>(checksum.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MasterKeysCompanion(')
          ..write('id: $id, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('sourceApplication: $sourceApplication, ')
          ..write('encryptionMethod: $encryptionMethod, ')
          ..write('checksum: $checksum, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }
}

class MasterKeys extends Table with TableInfo<MasterKeys, MasterKey> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  MasterKeys(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _sourceApplicationMeta =
      const VerificationMeta('sourceApplication');
  late final GeneratedColumn<String?> sourceApplication =
      GeneratedColumn<String?>('source_application', aliasedName, false,
          type: const StringType(),
          requiredDuringInsert: true,
          $customConstraints: 'NOT NULL');
  final VerificationMeta _encryptionMethodMeta =
      const VerificationMeta('encryptionMethod');
  late final GeneratedColumn<int?> encryptionMethod = GeneratedColumn<int?>(
      'encryption_method', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _checksumMeta = const VerificationMeta('checksum');
  late final GeneratedColumn<String?> checksum = GeneratedColumn<String?>(
      'checksum', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  late final GeneratedColumn<String?> content = GeneratedColumn<String?>(
      'content', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdTime,
        updatedTime,
        sourceApplication,
        encryptionMethod,
        checksum,
        content
      ];
  @override
  String get aliasedName => _alias ?? 'master_keys';
  @override
  String get actualTableName => 'master_keys';
  @override
  VerificationContext validateIntegrity(Insertable<MasterKey> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    if (data.containsKey('source_application')) {
      context.handle(
          _sourceApplicationMeta,
          sourceApplication.isAcceptableOrUnknown(
              data['source_application']!, _sourceApplicationMeta));
    } else if (isInserting) {
      context.missing(_sourceApplicationMeta);
    }
    if (data.containsKey('encryption_method')) {
      context.handle(
          _encryptionMethodMeta,
          encryptionMethod.isAcceptableOrUnknown(
              data['encryption_method']!, _encryptionMethodMeta));
    } else if (isInserting) {
      context.missing(_encryptionMethodMeta);
    }
    if (data.containsKey('checksum')) {
      context.handle(_checksumMeta,
          checksum.isAcceptableOrUnknown(data['checksum']!, _checksumMeta));
    } else if (isInserting) {
      context.missing(_checksumMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MasterKey map(Map<String, dynamic> data, {String? tablePrefix}) {
    return MasterKey.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  MasterKeys createAlias(String alias) {
    return MasterKeys(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class Migration extends DataClass implements Insertable<Migration> {
  final int id;
  final int number;
  final int updatedTime;
  final int createdTime;
  Migration(
      {required this.id,
      required this.number,
      required this.updatedTime,
      required this.createdTime});
  factory Migration.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Migration(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      number: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}number'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['number'] = Variable<int>(number);
    map['updated_time'] = Variable<int>(updatedTime);
    map['created_time'] = Variable<int>(createdTime);
    return map;
  }

  MigrationsCompanion toCompanion(bool nullToAbsent) {
    return MigrationsCompanion(
      id: Value(id),
      number: Value(number),
      updatedTime: Value(updatedTime),
      createdTime: Value(createdTime),
    );
  }

  factory Migration.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Migration(
      id: serializer.fromJson<int>(json['id']),
      number: serializer.fromJson<int>(json['number']),
      updatedTime: serializer.fromJson<int>(json['updated_time']),
      createdTime: serializer.fromJson<int>(json['created_time']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'number': serializer.toJson<int>(number),
      'updated_time': serializer.toJson<int>(updatedTime),
      'created_time': serializer.toJson<int>(createdTime),
    };
  }

  Migration copyWith(
          {int? id, int? number, int? updatedTime, int? createdTime}) =>
      Migration(
        id: id ?? this.id,
        number: number ?? this.number,
        updatedTime: updatedTime ?? this.updatedTime,
        createdTime: createdTime ?? this.createdTime,
      );
  @override
  String toString() {
    return (StringBuffer('Migration(')
          ..write('id: $id, ')
          ..write('number: $number, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('createdTime: $createdTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, number, updatedTime, createdTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Migration &&
          other.id == this.id &&
          other.number == this.number &&
          other.updatedTime == this.updatedTime &&
          other.createdTime == this.createdTime);
}

class MigrationsCompanion extends UpdateCompanion<Migration> {
  final Value<int> id;
  final Value<int> number;
  final Value<int> updatedTime;
  final Value<int> createdTime;
  const MigrationsCompanion({
    this.id = const Value.absent(),
    this.number = const Value.absent(),
    this.updatedTime = const Value.absent(),
    this.createdTime = const Value.absent(),
  });
  MigrationsCompanion.insert({
    this.id = const Value.absent(),
    required int number,
    required int updatedTime,
    required int createdTime,
  })  : number = Value(number),
        updatedTime = Value(updatedTime),
        createdTime = Value(createdTime);
  static Insertable<Migration> custom({
    Expression<int>? id,
    Expression<int>? number,
    Expression<int>? updatedTime,
    Expression<int>? createdTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (number != null) 'number': number,
      if (updatedTime != null) 'updated_time': updatedTime,
      if (createdTime != null) 'created_time': createdTime,
    });
  }

  MigrationsCompanion copyWith(
      {Value<int>? id,
      Value<int>? number,
      Value<int>? updatedTime,
      Value<int>? createdTime}) {
    return MigrationsCompanion(
      id: id ?? this.id,
      number: number ?? this.number,
      updatedTime: updatedTime ?? this.updatedTime,
      createdTime: createdTime ?? this.createdTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (updatedTime.present) {
      map['updated_time'] = Variable<int>(updatedTime.value);
    }
    if (createdTime.present) {
      map['created_time'] = Variable<int>(createdTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MigrationsCompanion(')
          ..write('id: $id, ')
          ..write('number: $number, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('createdTime: $createdTime')
          ..write(')'))
        .toString();
  }
}

class Migrations extends Table with TableInfo<Migrations, Migration> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  Migrations(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY');
  final VerificationMeta _numberMeta = const VerificationMeta('number');
  late final GeneratedColumn<int?> number = GeneratedColumn<int?>(
      'number', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _updatedTimeMeta =
      const VerificationMeta('updatedTime');
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  final VerificationMeta _createdTimeMeta =
      const VerificationMeta('createdTime');
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: true,
      $customConstraints: 'NOT NULL');
  @override
  List<GeneratedColumn> get $columns => [id, number, updatedTime, createdTime];
  @override
  String get aliasedName => _alias ?? 'migrations';
  @override
  String get actualTableName => 'migrations';
  @override
  VerificationContext validateIntegrity(Insertable<Migration> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('updated_time')) {
      context.handle(
          _updatedTimeMeta,
          updatedTime.isAcceptableOrUnknown(
              data['updated_time']!, _updatedTimeMeta));
    } else if (isInserting) {
      context.missing(_updatedTimeMeta);
    }
    if (data.containsKey('created_time')) {
      context.handle(
          _createdTimeMeta,
          createdTime.isAcceptableOrUnknown(
              data['created_time']!, _createdTimeMeta));
    } else if (isInserting) {
      context.missing(_createdTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Migration map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Migration.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  Migrations createAlias(String alias) {
    return Migrations(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
}

class TagsWithNoteCountData extends DataClass {
  final String? id;
  final String title;
  final int createdTime;
  final int updatedTime;
  final int noteCount;
  final int todoCompletedCount;
  TagsWithNoteCountData(
      {this.id,
      required this.title,
      required this.createdTime,
      required this.updatedTime,
      required this.noteCount,
      required this.todoCompletedCount});
  factory TagsWithNoteCountData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TagsWithNoteCountData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      createdTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_time'])!,
      updatedTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_time'])!,
      noteCount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}note_count'])!,
      todoCompletedCount: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}todo_completed_count'])!,
    );
  }
  factory TagsWithNoteCountData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TagsWithNoteCountData(
      id: serializer.fromJson<String?>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      createdTime: serializer.fromJson<int>(json['createdTime']),
      updatedTime: serializer.fromJson<int>(json['updatedTime']),
      noteCount: serializer.fromJson<int>(json['noteCount']),
      todoCompletedCount: serializer.fromJson<int>(json['todoCompletedCount']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String?>(id),
      'title': serializer.toJson<String>(title),
      'createdTime': serializer.toJson<int>(createdTime),
      'updatedTime': serializer.toJson<int>(updatedTime),
      'noteCount': serializer.toJson<int>(noteCount),
      'todoCompletedCount': serializer.toJson<int>(todoCompletedCount),
    };
  }

  TagsWithNoteCountData copyWith(
          {String? id,
          String? title,
          int? createdTime,
          int? updatedTime,
          int? noteCount,
          int? todoCompletedCount}) =>
      TagsWithNoteCountData(
        id: id ?? this.id,
        title: title ?? this.title,
        createdTime: createdTime ?? this.createdTime,
        updatedTime: updatedTime ?? this.updatedTime,
        noteCount: noteCount ?? this.noteCount,
        todoCompletedCount: todoCompletedCount ?? this.todoCompletedCount,
      );
  @override
  String toString() {
    return (StringBuffer('TagsWithNoteCountData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdTime: $createdTime, ')
          ..write('updatedTime: $updatedTime, ')
          ..write('noteCount: $noteCount, ')
          ..write('todoCompletedCount: $todoCompletedCount')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, title, createdTime, updatedTime, noteCount, todoCompletedCount);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TagsWithNoteCountData &&
          other.id == this.id &&
          other.title == this.title &&
          other.createdTime == this.createdTime &&
          other.updatedTime == this.updatedTime &&
          other.noteCount == this.noteCount &&
          other.todoCompletedCount == this.todoCompletedCount);
}

class TagsWithNoteCount
    extends ViewInfo<TagsWithNoteCount, TagsWithNoteCountData>
    implements HasResultSet {
  final String? _alias;
  @override
  final _$JoplinDatabase attachedDatabase;
  TagsWithNoteCount(this.attachedDatabase, [this._alias]);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, createdTime, updatedTime, noteCount, todoCompletedCount];
  @override
  String get aliasedName => _alias ?? entityName;
  @override
  String get entityName => 'tags_with_note_count';
  @override
  String get createViewStmt =>
      'CREATE VIEW tags_with_note_count AS\n    SELECT tags.id as id,\n        tags.title as title,\n        tags.created_time as created_time,\n        tags.updated_time as updated_time,\n        COUNT(notes.id) as note_count,\n        SUM(CASE WHEN notes.todo_completed > 0 THEN 1 ELSE 0 END) AS todo_completed_count\n    FROM tags\n    LEFT JOIN note_tags nt on nt.tag_id = tags.id\n    LEFT JOIN notes on notes.id = nt.note_id\n    WHERE notes.id IS NOT NULL\n    GROUP BY tags.id\n--/* tags_with_note_count(id,title,created_time,updated_time,note_count,todo_completed_count) */\n;';
  @override
  TagsWithNoteCount get asDslTable => this;
  @override
  TagsWithNoteCountData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TagsWithNoteCountData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, true,
      type: const StringType());
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType());
  late final GeneratedColumn<int?> createdTime = GeneratedColumn<int?>(
      'created_time', aliasedName, false,
      type: const IntType());
  late final GeneratedColumn<int?> updatedTime = GeneratedColumn<int?>(
      'updated_time', aliasedName, false,
      type: const IntType());
  late final GeneratedColumn<int?> noteCount = GeneratedColumn<int?>(
      'note_count', aliasedName, false,
      type: const IntType());
  late final GeneratedColumn<int?> todoCompletedCount = GeneratedColumn<int?>(
      'todo_completed_count', aliasedName, false,
      type: const IntType());
  @override
  TagsWithNoteCount createAlias(String alias) {
    return TagsWithNoteCount(attachedDatabase, alias);
  }

  @override
  Query? get query => null;
  @override
  Set<String> get readTables => const {'tags', 'notes', 'note_tags'};
}

abstract class _$JoplinDatabase extends GeneratedDatabase {
  _$JoplinDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final Folders folders = Folders(this);
  late final Index foldersTitle =
      Index('folders_title', 'CREATE INDEX folders_title ON folders (title);');
  late final Index foldersUpdatedTime = Index('folders_updated_time',
      'CREATE INDEX folders_updated_time ON folders (updated_time);');
  late final Tags tags = Tags(this);
  late final Index tagsTitle =
      Index('tags_title', 'CREATE INDEX tags_title ON tags (title);');
  late final Index tagsUpdatedTime = Index('tags_updated_time',
      'CREATE INDEX tags_updated_time ON tags (updated_time);');
  late final NoteTags noteTags = NoteTags(this);
  late final Index noteTagsNoteId = Index('note_tags_note_id',
      'CREATE INDEX note_tags_note_id ON note_tags (note_id);');
  late final Index noteTagsTagId = Index('note_tags_tag_id',
      'CREATE INDEX note_tags_tag_id ON note_tags (tag_id);');
  late final Index noteTagsUpdatedTime = Index('note_tags_updated_time',
      'CREATE INDEX note_tags_updated_time ON note_tags (updated_time);');
  late final SyncItems syncItems = SyncItems(this);
  late final Index syncItemsSyncTime = Index('sync_items_sync_time',
      'CREATE INDEX sync_items_sync_time ON sync_items (sync_time);');
  late final Index syncItemsSyncTarget = Index('sync_items_sync_target',
      'CREATE INDEX sync_items_sync_target ON sync_items (sync_target);');
  late final Index syncItemsItemType = Index('sync_items_item_type',
      'CREATE INDEX sync_items_item_type ON sync_items (item_type);');
  late final Index syncItemsItemId = Index('sync_items_item_id',
      'CREATE INDEX sync_items_item_id ON sync_items (item_id);');
  late final DeletedItems deletedItems = DeletedItems(this);
  late final Index deletedItemsSyncTarget = Index('deleted_items_sync_target',
      'CREATE INDEX deleted_items_sync_target ON deleted_items (sync_target);');
  late final Index foldersUserUpdatedTime = Index('folders_user_updated_time',
      'CREATE INDEX folders_user_updated_time ON folders (user_updated_time);');
  late final Index tagsUserUpdatedTime = Index('tags_user_updated_time',
      'CREATE INDEX tags_user_updated_time ON tags (user_updated_time);');
  late final Index noteTagsUserUpdatedTime = Index(
      'note_tags_user_updated_time',
      'CREATE INDEX note_tags_user_updated_time ON note_tags (user_updated_time);');
  late final Alarms alarms = Alarms(this);
  late final Index alarmNoteId =
      Index('alarm_note_id', 'CREATE INDEX alarm_note_id ON alarms (note_id);');
  late final Index foldersEncryptionApplied = Index(
      'folders_encryption_applied',
      'CREATE INDEX folders_encryption_applied ON folders (encryption_applied);');
  late final Index tagsEncryptionApplied = Index('tags_encryption_applied',
      'CREATE INDEX tags_encryption_applied ON tags (encryption_applied);');
  late final Index noteTagsEncryptionApplied = Index(
      'note_tags_encryption_applied',
      'CREATE INDEX note_tags_encryption_applied ON note_tags (encryption_applied);');
  late final ItemChanges itemChanges = ItemChanges(this);
  late final Index itemChangesItemId = Index('item_changes_item_id',
      'CREATE INDEX item_changes_item_id ON item_changes (item_id);');
  late final Index itemChangesCreatedTime = Index('item_changes_created_time',
      'CREATE INDEX item_changes_created_time ON item_changes (created_time);');
  late final Index itemChangesItemType = Index('item_changes_item_type',
      'CREATE INDEX item_changes_item_type ON item_changes (item_type);');
  late final NoteResources noteResources = NoteResources(this);
  late final Index noteResourcesNoteId = Index('note_resources_note_id',
      'CREATE INDEX note_resources_note_id ON note_resources (note_id);');
  late final Index noteResourcesResourceId = Index('note_resources_resource_id',
      'CREATE INDEX note_resources_resource_id ON note_resources (resource_id);');
  late final ResourceLocalStates resourceLocalStates =
      ResourceLocalStates(this);
  late final Index resourceLocalStatesResourceId = Index(
      'resource_local_states_resource_id',
      'CREATE INDEX resource_local_states_resource_id ON resource_local_states (resource_id);');
  late final Index resourceLocalStatesResourceFetchStatus = Index(
      'resource_local_states_resource_fetch_status',
      'CREATE INDEX resource_local_states_resource_fetch_status ON resource_local_states (fetch_status);');
  late final Revisions revisions = Revisions(this);
  late final Index revisionsParentId = Index('revisions_parent_id',
      'CREATE INDEX revisions_parent_id ON revisions (parent_id);');
  late final Index revisionsItemType = Index('revisions_item_type',
      'CREATE INDEX revisions_item_type ON revisions (item_type);');
  late final Index revisionsItemId = Index('revisions_item_id',
      'CREATE INDEX revisions_item_id ON revisions (item_id);');
  late final Index revisionsItemUpdatedTime = Index(
      'revisions_item_updated_time',
      'CREATE INDEX revisions_item_updated_time ON revisions (item_updated_time);');
  late final Index revisionsUpdatedTime = Index('revisions_updated_time',
      'CREATE INDEX revisions_updated_time ON revisions (updated_time);');
  late final ResourcesToDownload resourcesToDownload =
      ResourcesToDownload(this);
  late final Index resourcesToDownloadResourceId = Index(
      'resources_to_download_resource_id',
      'CREATE INDEX resources_to_download_resource_id ON resources_to_download (resource_id);');
  late final Index resourcesToDownloadUpdatedTime = Index(
      'resources_to_download_updated_time',
      'CREATE INDEX resources_to_download_updated_time ON resources_to_download (updated_time);');
  late final KeyValues keyValues = KeyValues(this);
  late final Index keyValuesKey = Index('key_values_key',
      'CREATE UNIQUE INDEX key_values_key ON key_values ("key");');
  late final Resources resources = Resources(this);
  late final Index resourcesSize = Index(
      'resources_size', 'CREATE INDEX resources_size ON resources("size");');
  late final NotesNormalized notesNormalized = NotesNormalized(this);
  late final Index notesNormalizedId = Index('notes_normalized_id',
      'CREATE INDEX notes_normalized_id ON notes_normalized (id);');
  late final Index notesNormalizedUserCreatedTime = Index(
      'notes_normalized_user_created_time',
      'CREATE INDEX notes_normalized_user_created_time ON notes_normalized (user_created_time);');
  late final Index notesNormalizedUserUpdatedTime = Index(
      'notes_normalized_user_updated_time',
      'CREATE INDEX notes_normalized_user_updated_time ON notes_normalized (user_updated_time);');
  late final Index notesNormalizedIsTodo = Index('notes_normalized_is_todo',
      'CREATE INDEX notes_normalized_is_todo ON notes_normalized (is_todo);');
  late final Index notesNormalizedTodoCompleted = Index(
      'notes_normalized_todo_completed',
      'CREATE INDEX notes_normalized_todo_completed ON notes_normalized (todo_completed);');
  late final Index notesNormalizedParentId = Index('notes_normalized_parent_id',
      'CREATE INDEX notes_normalized_parent_id ON notes_normalized (parent_id);');
  late final Index notesNormalizedLatitude = Index('notes_normalized_latitude',
      'CREATE INDEX notes_normalized_latitude ON notes_normalized (latitude);');
  late final Index notesNormalizedLongitude = Index(
      'notes_normalized_longitude',
      'CREATE INDEX notes_normalized_longitude ON notes_normalized (longitude);');
  late final Index notesNormalizedAltitude = Index('notes_normalized_altitude',
      'CREATE INDEX notes_normalized_altitude ON notes_normalized (altitude);');
  late final Index notesNormalizedSourceUrl = Index(
      'notes_normalized_source_url',
      'CREATE INDEX notes_normalized_source_url ON notes_normalized (source_url);');
  late final NotesFts notesFts = NotesFts(this);
  late final Trigger notesFtsBeforeUpdate = Trigger(
      'CREATE TRIGGER notes_fts_before_update BEFORE UPDATE ON notes_normalized BEGIN\n    DELETE FROM notes_fts WHERE rowid=old.rowid;\nEND;',
      'notes_fts_before_update');
  late final Trigger notesFtsBeforeDelete = Trigger(
      'CREATE TRIGGER notes_fts_before_delete BEFORE DELETE ON notes_normalized BEGIN\n    DELETE FROM notes_fts WHERE rowid=old.rowid;\nEND;',
      'notes_fts_before_delete');
  late final Trigger notesAfterUpdate = Trigger(
      'CREATE TRIGGER notes_after_update AFTER UPDATE ON notes_normalized BEGIN\n    INSERT INTO notes_fts(\n        rowid,\n        id,\n        title,\n        body,\n        user_created_time,\n        user_updated_time,\n        is_todo,\n        todo_completed,\n        parent_id,\n        latitude,\n        longitude,\n        altitude,\n        source_url\n    )\n    SELECT\n        rowid,\n        id,\n        title,\n        body,\n        user_created_time,\n        user_updated_time,\n        is_todo,\n        todo_completed,\n        parent_id,\n        latitude,\n        longitude,\n        altitude,\n        source_url\n    FROM notes_normalized\n    WHERE new.rowid = notes_normalized.rowid;\nEND;',
      'notes_after_update');
  late final Trigger notesAfterInsert = Trigger(
      'CREATE TRIGGER notes_after_insert AFTER INSERT ON notes_normalized BEGIN\n    INSERT INTO notes_fts(\n        rowid,\n        id,\n        title,\n        body,\n        user_created_time,\n        user_updated_time,\n        is_todo,\n        todo_completed,\n        parent_id,\n        latitude,\n        longitude,\n        altitude,\n        source_url\n    )\n    SELECT\n        rowid,\n        id,\n        title,\n        body,\n        user_created_time,\n        user_updated_time,\n        is_todo,\n        todo_completed,\n        parent_id,\n        latitude,\n        longitude,\n        altitude,\n        source_url\n    FROM notes_normalized\n    WHERE new.rowid = notes_normalized.rowid;\nEND;',
      'notes_after_insert');
  late final Index notesNormalizedTodoDue = Index('notes_normalized_todo_due',
      'CREATE INDEX notes_normalized_todo_due ON notes_normalized (todo_due);');
  late final Notes notes = Notes(this);
  late final TagsWithNoteCount tagsWithNoteCount = TagsWithNoteCount(this);
  late final TableFields tableFields = TableFields(this);
  late final Version version = Version(this);
  late final Settings settings = Settings(this);
  late final SqliteSequence sqliteSequence = SqliteSequence(this);
  late final MasterKeys masterKeys = MasterKeys(this);
  late final Migrations migrations = Migrations(this);
  Selectable<Folder> allFolders() {
    return customSelect('SELECT * FROM folders', variables: [], readsFrom: {
      folders,
    }).map(folders.mapFromRow);
  }

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        folders,
        foldersTitle,
        foldersUpdatedTime,
        tags,
        tagsTitle,
        tagsUpdatedTime,
        noteTags,
        noteTagsNoteId,
        noteTagsTagId,
        noteTagsUpdatedTime,
        syncItems,
        syncItemsSyncTime,
        syncItemsSyncTarget,
        syncItemsItemType,
        syncItemsItemId,
        deletedItems,
        deletedItemsSyncTarget,
        foldersUserUpdatedTime,
        tagsUserUpdatedTime,
        noteTagsUserUpdatedTime,
        alarms,
        alarmNoteId,
        foldersEncryptionApplied,
        tagsEncryptionApplied,
        noteTagsEncryptionApplied,
        itemChanges,
        itemChangesItemId,
        itemChangesCreatedTime,
        itemChangesItemType,
        noteResources,
        noteResourcesNoteId,
        noteResourcesResourceId,
        resourceLocalStates,
        resourceLocalStatesResourceId,
        resourceLocalStatesResourceFetchStatus,
        revisions,
        revisionsParentId,
        revisionsItemType,
        revisionsItemId,
        revisionsItemUpdatedTime,
        revisionsUpdatedTime,
        resourcesToDownload,
        resourcesToDownloadResourceId,
        resourcesToDownloadUpdatedTime,
        keyValues,
        keyValuesKey,
        resources,
        resourcesSize,
        notesNormalized,
        notesNormalizedId,
        notesNormalizedUserCreatedTime,
        notesNormalizedUserUpdatedTime,
        notesNormalizedIsTodo,
        notesNormalizedTodoCompleted,
        notesNormalizedParentId,
        notesNormalizedLatitude,
        notesNormalizedLongitude,
        notesNormalizedAltitude,
        notesNormalizedSourceUrl,
        notesFts,
        notesFtsBeforeUpdate,
        notesFtsBeforeDelete,
        notesAfterUpdate,
        notesAfterInsert,
        notesNormalizedTodoDue,
        notes,
        tagsWithNoteCount,
        tableFields,
        version,
        settings,
        sqliteSequence,
        masterKeys,
        migrations
      ];
  @override
  StreamQueryUpdateRules get streamUpdateRules => const StreamQueryUpdateRules(
        [
          WritePropagation(
            on: TableUpdateQuery.onTableName('notes_normalized',
                limitUpdateKind: UpdateKind.update),
            result: [
              TableUpdate('notes_fts', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('notes_normalized',
                limitUpdateKind: UpdateKind.delete),
            result: [
              TableUpdate('notes_fts', kind: UpdateKind.delete),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('notes_normalized',
                limitUpdateKind: UpdateKind.update),
            result: [
              TableUpdate('notes_fts', kind: UpdateKind.insert),
            ],
          ),
          WritePropagation(
            on: TableUpdateQuery.onTableName('notes_normalized',
                limitUpdateKind: UpdateKind.insert),
            result: [
              TableUpdate('notes_fts', kind: UpdateKind.insert),
            ],
          ),
        ],
      );
}
