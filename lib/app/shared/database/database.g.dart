// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class AtividadeTableData extends DataClass
    implements Insertable<AtividadeTableData> {
  final int idAtiv;
  final int codAtiv;
  final String descrAtiv;
  AtividadeTableData(
      {required this.idAtiv, required this.codAtiv, required this.descrAtiv});
  factory AtividadeTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return AtividadeTableData(
      idAtiv: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_ativ'])!,
      codAtiv: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_ativ'])!,
      descrAtiv: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}descr_ativ'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_ativ'] = Variable<int>(idAtiv);
    map['cod_ativ'] = Variable<int>(codAtiv);
    map['descr_ativ'] = Variable<String>(descrAtiv);
    return map;
  }

  AtividadeTableCompanion toCompanion(bool nullToAbsent) {
    return AtividadeTableCompanion(
      idAtiv: Value(idAtiv),
      codAtiv: Value(codAtiv),
      descrAtiv: Value(descrAtiv),
    );
  }

  factory AtividadeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AtividadeTableData(
      idAtiv: serializer.fromJson<int>(json['idAtiv']),
      codAtiv: serializer.fromJson<int>(json['codAtiv']),
      descrAtiv: serializer.fromJson<String>(json['descrAtiv']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idAtiv': serializer.toJson<int>(idAtiv),
      'codAtiv': serializer.toJson<int>(codAtiv),
      'descrAtiv': serializer.toJson<String>(descrAtiv),
    };
  }

  AtividadeTableData copyWith({int? idAtiv, int? codAtiv, String? descrAtiv}) =>
      AtividadeTableData(
        idAtiv: idAtiv ?? this.idAtiv,
        codAtiv: codAtiv ?? this.codAtiv,
        descrAtiv: descrAtiv ?? this.descrAtiv,
      );
  @override
  String toString() {
    return (StringBuffer('AtividadeTableData(')
          ..write('idAtiv: $idAtiv, ')
          ..write('codAtiv: $codAtiv, ')
          ..write('descrAtiv: $descrAtiv')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(idAtiv.hashCode, $mrjc(codAtiv.hashCode, descrAtiv.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AtividadeTableData &&
          other.idAtiv == this.idAtiv &&
          other.codAtiv == this.codAtiv &&
          other.descrAtiv == this.descrAtiv);
}

class AtividadeTableCompanion extends UpdateCompanion<AtividadeTableData> {
  final Value<int> idAtiv;
  final Value<int> codAtiv;
  final Value<String> descrAtiv;
  const AtividadeTableCompanion({
    this.idAtiv = const Value.absent(),
    this.codAtiv = const Value.absent(),
    this.descrAtiv = const Value.absent(),
  });
  AtividadeTableCompanion.insert({
    required int idAtiv,
    required int codAtiv,
    required String descrAtiv,
  })  : idAtiv = Value(idAtiv),
        codAtiv = Value(codAtiv),
        descrAtiv = Value(descrAtiv);
  static Insertable<AtividadeTableData> custom({
    Expression<int>? idAtiv,
    Expression<int>? codAtiv,
    Expression<String>? descrAtiv,
  }) {
    return RawValuesInsertable({
      if (idAtiv != null) 'id_ativ': idAtiv,
      if (codAtiv != null) 'cod_ativ': codAtiv,
      if (descrAtiv != null) 'descr_ativ': descrAtiv,
    });
  }

  AtividadeTableCompanion copyWith(
      {Value<int>? idAtiv, Value<int>? codAtiv, Value<String>? descrAtiv}) {
    return AtividadeTableCompanion(
      idAtiv: idAtiv ?? this.idAtiv,
      codAtiv: codAtiv ?? this.codAtiv,
      descrAtiv: descrAtiv ?? this.descrAtiv,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idAtiv.present) {
      map['id_ativ'] = Variable<int>(idAtiv.value);
    }
    if (codAtiv.present) {
      map['cod_ativ'] = Variable<int>(codAtiv.value);
    }
    if (descrAtiv.present) {
      map['descr_ativ'] = Variable<String>(descrAtiv.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AtividadeTableCompanion(')
          ..write('idAtiv: $idAtiv, ')
          ..write('codAtiv: $codAtiv, ')
          ..write('descrAtiv: $descrAtiv')
          ..write(')'))
        .toString();
  }
}

class $AtividadeTableTable extends AtividadeTable
    with TableInfo<$AtividadeTableTable, AtividadeTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $AtividadeTableTable(this._db, [this._alias]);
  final VerificationMeta _idAtivMeta = const VerificationMeta('idAtiv');
  late final GeneratedColumn<int?> idAtiv = GeneratedColumn<int?>(
      'id_ativ', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codAtivMeta = const VerificationMeta('codAtiv');
  late final GeneratedColumn<int?> codAtiv = GeneratedColumn<int?>(
      'cod_ativ', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descrAtivMeta = const VerificationMeta('descrAtiv');
  late final GeneratedColumn<String?> descrAtiv = GeneratedColumn<String?>(
      'descr_ativ', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idAtiv, codAtiv, descrAtiv];
  @override
  String get aliasedName => _alias ?? 'atividade_table';
  @override
  String get actualTableName => 'atividade_table';
  @override
  VerificationContext validateIntegrity(Insertable<AtividadeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_ativ')) {
      context.handle(_idAtivMeta,
          idAtiv.isAcceptableOrUnknown(data['id_ativ']!, _idAtivMeta));
    } else if (isInserting) {
      context.missing(_idAtivMeta);
    }
    if (data.containsKey('cod_ativ')) {
      context.handle(_codAtivMeta,
          codAtiv.isAcceptableOrUnknown(data['cod_ativ']!, _codAtivMeta));
    } else if (isInserting) {
      context.missing(_codAtivMeta);
    }
    if (data.containsKey('descr_ativ')) {
      context.handle(_descrAtivMeta,
          descrAtiv.isAcceptableOrUnknown(data['descr_ativ']!, _descrAtivMeta));
    } else if (isInserting) {
      context.missing(_descrAtivMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  AtividadeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return AtividadeTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AtividadeTableTable createAlias(String alias) {
    return $AtividadeTableTable(_db, alias);
  }
}

class BocalTableData extends DataClass implements Insertable<BocalTableData> {
  final int idBocal;
  final int codBocal;
  final String descrBocal;
  BocalTableData(
      {required this.idBocal,
      required this.codBocal,
      required this.descrBocal});
  factory BocalTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return BocalTableData(
      idBocal: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_bocal'])!,
      codBocal: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_bocal'])!,
      descrBocal: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}descr_bocal'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_bocal'] = Variable<int>(idBocal);
    map['cod_bocal'] = Variable<int>(codBocal);
    map['descr_bocal'] = Variable<String>(descrBocal);
    return map;
  }

  BocalTableCompanion toCompanion(bool nullToAbsent) {
    return BocalTableCompanion(
      idBocal: Value(idBocal),
      codBocal: Value(codBocal),
      descrBocal: Value(descrBocal),
    );
  }

  factory BocalTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return BocalTableData(
      idBocal: serializer.fromJson<int>(json['idBocal']),
      codBocal: serializer.fromJson<int>(json['codBocal']),
      descrBocal: serializer.fromJson<String>(json['descrBocal']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idBocal': serializer.toJson<int>(idBocal),
      'codBocal': serializer.toJson<int>(codBocal),
      'descrBocal': serializer.toJson<String>(descrBocal),
    };
  }

  BocalTableData copyWith({int? idBocal, int? codBocal, String? descrBocal}) =>
      BocalTableData(
        idBocal: idBocal ?? this.idBocal,
        codBocal: codBocal ?? this.codBocal,
        descrBocal: descrBocal ?? this.descrBocal,
      );
  @override
  String toString() {
    return (StringBuffer('BocalTableData(')
          ..write('idBocal: $idBocal, ')
          ..write('codBocal: $codBocal, ')
          ..write('descrBocal: $descrBocal')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(idBocal.hashCode, $mrjc(codBocal.hashCode, descrBocal.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BocalTableData &&
          other.idBocal == this.idBocal &&
          other.codBocal == this.codBocal &&
          other.descrBocal == this.descrBocal);
}

class BocalTableCompanion extends UpdateCompanion<BocalTableData> {
  final Value<int> idBocal;
  final Value<int> codBocal;
  final Value<String> descrBocal;
  const BocalTableCompanion({
    this.idBocal = const Value.absent(),
    this.codBocal = const Value.absent(),
    this.descrBocal = const Value.absent(),
  });
  BocalTableCompanion.insert({
    required int idBocal,
    required int codBocal,
    required String descrBocal,
  })  : idBocal = Value(idBocal),
        codBocal = Value(codBocal),
        descrBocal = Value(descrBocal);
  static Insertable<BocalTableData> custom({
    Expression<int>? idBocal,
    Expression<int>? codBocal,
    Expression<String>? descrBocal,
  }) {
    return RawValuesInsertable({
      if (idBocal != null) 'id_bocal': idBocal,
      if (codBocal != null) 'cod_bocal': codBocal,
      if (descrBocal != null) 'descr_bocal': descrBocal,
    });
  }

  BocalTableCompanion copyWith(
      {Value<int>? idBocal, Value<int>? codBocal, Value<String>? descrBocal}) {
    return BocalTableCompanion(
      idBocal: idBocal ?? this.idBocal,
      codBocal: codBocal ?? this.codBocal,
      descrBocal: descrBocal ?? this.descrBocal,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idBocal.present) {
      map['id_bocal'] = Variable<int>(idBocal.value);
    }
    if (codBocal.present) {
      map['cod_bocal'] = Variable<int>(codBocal.value);
    }
    if (descrBocal.present) {
      map['descr_bocal'] = Variable<String>(descrBocal.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BocalTableCompanion(')
          ..write('idBocal: $idBocal, ')
          ..write('codBocal: $codBocal, ')
          ..write('descrBocal: $descrBocal')
          ..write(')'))
        .toString();
  }
}

class $BocalTableTable extends BocalTable
    with TableInfo<$BocalTableTable, BocalTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $BocalTableTable(this._db, [this._alias]);
  final VerificationMeta _idBocalMeta = const VerificationMeta('idBocal');
  late final GeneratedColumn<int?> idBocal = GeneratedColumn<int?>(
      'id_bocal', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codBocalMeta = const VerificationMeta('codBocal');
  late final GeneratedColumn<int?> codBocal = GeneratedColumn<int?>(
      'cod_bocal', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descrBocalMeta = const VerificationMeta('descrBocal');
  late final GeneratedColumn<String?> descrBocal = GeneratedColumn<String?>(
      'descr_bocal', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idBocal, codBocal, descrBocal];
  @override
  String get aliasedName => _alias ?? 'bocal_table';
  @override
  String get actualTableName => 'bocal_table';
  @override
  VerificationContext validateIntegrity(Insertable<BocalTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_bocal')) {
      context.handle(_idBocalMeta,
          idBocal.isAcceptableOrUnknown(data['id_bocal']!, _idBocalMeta));
    } else if (isInserting) {
      context.missing(_idBocalMeta);
    }
    if (data.containsKey('cod_bocal')) {
      context.handle(_codBocalMeta,
          codBocal.isAcceptableOrUnknown(data['cod_bocal']!, _codBocalMeta));
    } else if (isInserting) {
      context.missing(_codBocalMeta);
    }
    if (data.containsKey('descr_bocal')) {
      context.handle(
          _descrBocalMeta,
          descrBocal.isAcceptableOrUnknown(
              data['descr_bocal']!, _descrBocalMeta));
    } else if (isInserting) {
      context.missing(_descrBocalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  BocalTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return BocalTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $BocalTableTable createAlias(String alias) {
    return $BocalTableTable(_db, alias);
  }
}

class ConfigTableData extends DataClass implements Insertable<ConfigTableData> {
  final int idConfig;
  final int equipConfig;
  final String senhaConfig;
  ConfigTableData(
      {required this.idConfig,
      required this.equipConfig,
      required this.senhaConfig});
  factory ConfigTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ConfigTableData(
      idConfig: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_config'])!,
      equipConfig: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}equip_config'])!,
      senhaConfig: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}senha_config'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_config'] = Variable<int>(idConfig);
    map['equip_config'] = Variable<int>(equipConfig);
    map['senha_config'] = Variable<String>(senhaConfig);
    return map;
  }

  ConfigTableCompanion toCompanion(bool nullToAbsent) {
    return ConfigTableCompanion(
      idConfig: Value(idConfig),
      equipConfig: Value(equipConfig),
      senhaConfig: Value(senhaConfig),
    );
  }

  factory ConfigTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ConfigTableData(
      idConfig: serializer.fromJson<int>(json['idConfig']),
      equipConfig: serializer.fromJson<int>(json['equipConfig']),
      senhaConfig: serializer.fromJson<String>(json['senhaConfig']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idConfig': serializer.toJson<int>(idConfig),
      'equipConfig': serializer.toJson<int>(equipConfig),
      'senhaConfig': serializer.toJson<String>(senhaConfig),
    };
  }

  ConfigTableData copyWith(
          {int? idConfig, int? equipConfig, String? senhaConfig}) =>
      ConfigTableData(
        idConfig: idConfig ?? this.idConfig,
        equipConfig: equipConfig ?? this.equipConfig,
        senhaConfig: senhaConfig ?? this.senhaConfig,
      );
  @override
  String toString() {
    return (StringBuffer('ConfigTableData(')
          ..write('idConfig: $idConfig, ')
          ..write('equipConfig: $equipConfig, ')
          ..write('senhaConfig: $senhaConfig')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idConfig.hashCode, $mrjc(equipConfig.hashCode, senhaConfig.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ConfigTableData &&
          other.idConfig == this.idConfig &&
          other.equipConfig == this.equipConfig &&
          other.senhaConfig == this.senhaConfig);
}

class ConfigTableCompanion extends UpdateCompanion<ConfigTableData> {
  final Value<int> idConfig;
  final Value<int> equipConfig;
  final Value<String> senhaConfig;
  const ConfigTableCompanion({
    this.idConfig = const Value.absent(),
    this.equipConfig = const Value.absent(),
    this.senhaConfig = const Value.absent(),
  });
  ConfigTableCompanion.insert({
    required int idConfig,
    required int equipConfig,
    required String senhaConfig,
  })  : idConfig = Value(idConfig),
        equipConfig = Value(equipConfig),
        senhaConfig = Value(senhaConfig);
  static Insertable<ConfigTableData> custom({
    Expression<int>? idConfig,
    Expression<int>? equipConfig,
    Expression<String>? senhaConfig,
  }) {
    return RawValuesInsertable({
      if (idConfig != null) 'id_config': idConfig,
      if (equipConfig != null) 'equip_config': equipConfig,
      if (senhaConfig != null) 'senha_config': senhaConfig,
    });
  }

  ConfigTableCompanion copyWith(
      {Value<int>? idConfig,
      Value<int>? equipConfig,
      Value<String>? senhaConfig}) {
    return ConfigTableCompanion(
      idConfig: idConfig ?? this.idConfig,
      equipConfig: equipConfig ?? this.equipConfig,
      senhaConfig: senhaConfig ?? this.senhaConfig,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idConfig.present) {
      map['id_config'] = Variable<int>(idConfig.value);
    }
    if (equipConfig.present) {
      map['equip_config'] = Variable<int>(equipConfig.value);
    }
    if (senhaConfig.present) {
      map['senha_config'] = Variable<String>(senhaConfig.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConfigTableCompanion(')
          ..write('idConfig: $idConfig, ')
          ..write('equipConfig: $equipConfig, ')
          ..write('senhaConfig: $senhaConfig')
          ..write(')'))
        .toString();
  }
}

class $ConfigTableTable extends ConfigTable
    with TableInfo<$ConfigTableTable, ConfigTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ConfigTableTable(this._db, [this._alias]);
  final VerificationMeta _idConfigMeta = const VerificationMeta('idConfig');
  late final GeneratedColumn<int?> idConfig = GeneratedColumn<int?>(
      'id_config', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _equipConfigMeta =
      const VerificationMeta('equipConfig');
  late final GeneratedColumn<int?> equipConfig = GeneratedColumn<int?>(
      'equip_config', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _senhaConfigMeta =
      const VerificationMeta('senhaConfig');
  late final GeneratedColumn<String?> senhaConfig = GeneratedColumn<String?>(
      'senha_config', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idConfig, equipConfig, senhaConfig];
  @override
  String get aliasedName => _alias ?? 'config_table';
  @override
  String get actualTableName => 'config_table';
  @override
  VerificationContext validateIntegrity(Insertable<ConfigTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_config')) {
      context.handle(_idConfigMeta,
          idConfig.isAcceptableOrUnknown(data['id_config']!, _idConfigMeta));
    } else if (isInserting) {
      context.missing(_idConfigMeta);
    }
    if (data.containsKey('equip_config')) {
      context.handle(
          _equipConfigMeta,
          equipConfig.isAcceptableOrUnknown(
              data['equip_config']!, _equipConfigMeta));
    } else if (isInserting) {
      context.missing(_equipConfigMeta);
    }
    if (data.containsKey('senha_config')) {
      context.handle(
          _senhaConfigMeta,
          senhaConfig.isAcceptableOrUnknown(
              data['senha_config']!, _senhaConfigMeta));
    } else if (isInserting) {
      context.missing(_senhaConfigMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ConfigTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ConfigTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ConfigTableTable createAlias(String alias) {
    return $ConfigTableTable(_db, alias);
  }
}

class EquipSegTableData extends DataClass
    implements Insertable<EquipSegTableData> {
  final int idEquip;
  final int nroEquip;
  final int codClasseEquip;
  final String descrClasseEquip;
  final int tipoEquip;
  EquipSegTableData(
      {required this.idEquip,
      required this.nroEquip,
      required this.codClasseEquip,
      required this.descrClasseEquip,
      required this.tipoEquip});
  factory EquipSegTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return EquipSegTableData(
      idEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_equip'])!,
      nroEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nro_equip'])!,
      codClasseEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_classe_equip'])!,
      descrClasseEquip: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}descr_classe_equip'])!,
      tipoEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_equip'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_equip'] = Variable<int>(idEquip);
    map['nro_equip'] = Variable<int>(nroEquip);
    map['cod_classe_equip'] = Variable<int>(codClasseEquip);
    map['descr_classe_equip'] = Variable<String>(descrClasseEquip);
    map['tipo_equip'] = Variable<int>(tipoEquip);
    return map;
  }

  EquipSegTableCompanion toCompanion(bool nullToAbsent) {
    return EquipSegTableCompanion(
      idEquip: Value(idEquip),
      nroEquip: Value(nroEquip),
      codClasseEquip: Value(codClasseEquip),
      descrClasseEquip: Value(descrClasseEquip),
      tipoEquip: Value(tipoEquip),
    );
  }

  factory EquipSegTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return EquipSegTableData(
      idEquip: serializer.fromJson<int>(json['idEquip']),
      nroEquip: serializer.fromJson<int>(json['nroEquip']),
      codClasseEquip: serializer.fromJson<int>(json['codClasseEquip']),
      descrClasseEquip: serializer.fromJson<String>(json['descrClasseEquip']),
      tipoEquip: serializer.fromJson<int>(json['tipoEquip']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idEquip': serializer.toJson<int>(idEquip),
      'nroEquip': serializer.toJson<int>(nroEquip),
      'codClasseEquip': serializer.toJson<int>(codClasseEquip),
      'descrClasseEquip': serializer.toJson<String>(descrClasseEquip),
      'tipoEquip': serializer.toJson<int>(tipoEquip),
    };
  }

  EquipSegTableData copyWith(
          {int? idEquip,
          int? nroEquip,
          int? codClasseEquip,
          String? descrClasseEquip,
          int? tipoEquip}) =>
      EquipSegTableData(
        idEquip: idEquip ?? this.idEquip,
        nroEquip: nroEquip ?? this.nroEquip,
        codClasseEquip: codClasseEquip ?? this.codClasseEquip,
        descrClasseEquip: descrClasseEquip ?? this.descrClasseEquip,
        tipoEquip: tipoEquip ?? this.tipoEquip,
      );
  @override
  String toString() {
    return (StringBuffer('EquipSegTableData(')
          ..write('idEquip: $idEquip, ')
          ..write('nroEquip: $nroEquip, ')
          ..write('codClasseEquip: $codClasseEquip, ')
          ..write('descrClasseEquip: $descrClasseEquip, ')
          ..write('tipoEquip: $tipoEquip')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idEquip.hashCode,
      $mrjc(
          nroEquip.hashCode,
          $mrjc(codClasseEquip.hashCode,
              $mrjc(descrClasseEquip.hashCode, tipoEquip.hashCode)))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EquipSegTableData &&
          other.idEquip == this.idEquip &&
          other.nroEquip == this.nroEquip &&
          other.codClasseEquip == this.codClasseEquip &&
          other.descrClasseEquip == this.descrClasseEquip &&
          other.tipoEquip == this.tipoEquip);
}

class EquipSegTableCompanion extends UpdateCompanion<EquipSegTableData> {
  final Value<int> idEquip;
  final Value<int> nroEquip;
  final Value<int> codClasseEquip;
  final Value<String> descrClasseEquip;
  final Value<int> tipoEquip;
  const EquipSegTableCompanion({
    this.idEquip = const Value.absent(),
    this.nroEquip = const Value.absent(),
    this.codClasseEquip = const Value.absent(),
    this.descrClasseEquip = const Value.absent(),
    this.tipoEquip = const Value.absent(),
  });
  EquipSegTableCompanion.insert({
    required int idEquip,
    required int nroEquip,
    required int codClasseEquip,
    required String descrClasseEquip,
    required int tipoEquip,
  })  : idEquip = Value(idEquip),
        nroEquip = Value(nroEquip),
        codClasseEquip = Value(codClasseEquip),
        descrClasseEquip = Value(descrClasseEquip),
        tipoEquip = Value(tipoEquip);
  static Insertable<EquipSegTableData> custom({
    Expression<int>? idEquip,
    Expression<int>? nroEquip,
    Expression<int>? codClasseEquip,
    Expression<String>? descrClasseEquip,
    Expression<int>? tipoEquip,
  }) {
    return RawValuesInsertable({
      if (idEquip != null) 'id_equip': idEquip,
      if (nroEquip != null) 'nro_equip': nroEquip,
      if (codClasseEquip != null) 'cod_classe_equip': codClasseEquip,
      if (descrClasseEquip != null) 'descr_classe_equip': descrClasseEquip,
      if (tipoEquip != null) 'tipo_equip': tipoEquip,
    });
  }

  EquipSegTableCompanion copyWith(
      {Value<int>? idEquip,
      Value<int>? nroEquip,
      Value<int>? codClasseEquip,
      Value<String>? descrClasseEquip,
      Value<int>? tipoEquip}) {
    return EquipSegTableCompanion(
      idEquip: idEquip ?? this.idEquip,
      nroEquip: nroEquip ?? this.nroEquip,
      codClasseEquip: codClasseEquip ?? this.codClasseEquip,
      descrClasseEquip: descrClasseEquip ?? this.descrClasseEquip,
      tipoEquip: tipoEquip ?? this.tipoEquip,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idEquip.present) {
      map['id_equip'] = Variable<int>(idEquip.value);
    }
    if (nroEquip.present) {
      map['nro_equip'] = Variable<int>(nroEquip.value);
    }
    if (codClasseEquip.present) {
      map['cod_classe_equip'] = Variable<int>(codClasseEquip.value);
    }
    if (descrClasseEquip.present) {
      map['descr_classe_equip'] = Variable<String>(descrClasseEquip.value);
    }
    if (tipoEquip.present) {
      map['tipo_equip'] = Variable<int>(tipoEquip.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EquipSegTableCompanion(')
          ..write('idEquip: $idEquip, ')
          ..write('nroEquip: $nroEquip, ')
          ..write('codClasseEquip: $codClasseEquip, ')
          ..write('descrClasseEquip: $descrClasseEquip, ')
          ..write('tipoEquip: $tipoEquip')
          ..write(')'))
        .toString();
  }
}

class $EquipSegTableTable extends EquipSegTable
    with TableInfo<$EquipSegTableTable, EquipSegTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $EquipSegTableTable(this._db, [this._alias]);
  final VerificationMeta _idEquipMeta = const VerificationMeta('idEquip');
  late final GeneratedColumn<int?> idEquip = GeneratedColumn<int?>(
      'id_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _nroEquipMeta = const VerificationMeta('nroEquip');
  late final GeneratedColumn<int?> nroEquip = GeneratedColumn<int?>(
      'nro_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codClasseEquipMeta =
      const VerificationMeta('codClasseEquip');
  late final GeneratedColumn<int?> codClasseEquip = GeneratedColumn<int?>(
      'cod_classe_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descrClasseEquipMeta =
      const VerificationMeta('descrClasseEquip');
  late final GeneratedColumn<String?> descrClasseEquip =
      GeneratedColumn<String?>('descr_classe_equip', aliasedName, false,
          typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _tipoEquipMeta = const VerificationMeta('tipoEquip');
  late final GeneratedColumn<int?> tipoEquip = GeneratedColumn<int?>(
      'tipo_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [idEquip, nroEquip, codClasseEquip, descrClasseEquip, tipoEquip];
  @override
  String get aliasedName => _alias ?? 'equip_seg_table';
  @override
  String get actualTableName => 'equip_seg_table';
  @override
  VerificationContext validateIntegrity(Insertable<EquipSegTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_equip')) {
      context.handle(_idEquipMeta,
          idEquip.isAcceptableOrUnknown(data['id_equip']!, _idEquipMeta));
    } else if (isInserting) {
      context.missing(_idEquipMeta);
    }
    if (data.containsKey('nro_equip')) {
      context.handle(_nroEquipMeta,
          nroEquip.isAcceptableOrUnknown(data['nro_equip']!, _nroEquipMeta));
    } else if (isInserting) {
      context.missing(_nroEquipMeta);
    }
    if (data.containsKey('cod_classe_equip')) {
      context.handle(
          _codClasseEquipMeta,
          codClasseEquip.isAcceptableOrUnknown(
              data['cod_classe_equip']!, _codClasseEquipMeta));
    } else if (isInserting) {
      context.missing(_codClasseEquipMeta);
    }
    if (data.containsKey('descr_classe_equip')) {
      context.handle(
          _descrClasseEquipMeta,
          descrClasseEquip.isAcceptableOrUnknown(
              data['descr_classe_equip']!, _descrClasseEquipMeta));
    } else if (isInserting) {
      context.missing(_descrClasseEquipMeta);
    }
    if (data.containsKey('tipo_equip')) {
      context.handle(_tipoEquipMeta,
          tipoEquip.isAcceptableOrUnknown(data['tipo_equip']!, _tipoEquipMeta));
    } else if (isInserting) {
      context.missing(_tipoEquipMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  EquipSegTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return EquipSegTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EquipSegTableTable createAlias(String alias) {
    return $EquipSegTableTable(_db, alias);
  }
}

class EquipTableData extends DataClass implements Insertable<EquipTableData> {
  final int idEquip;
  final int nroEquip;
  final int codClasseEquip;
  final String descrClasseEquip;
  final int codTurno;
  final int idCheckList;
  final int tipoEquipFert;
  final int horimetroEquip;
  final int medicaoEquipFert;
  final int tipoEquip;
  final int classifEquip;
  EquipTableData(
      {required this.idEquip,
      required this.nroEquip,
      required this.codClasseEquip,
      required this.descrClasseEquip,
      required this.codTurno,
      required this.idCheckList,
      required this.tipoEquipFert,
      required this.horimetroEquip,
      required this.medicaoEquipFert,
      required this.tipoEquip,
      required this.classifEquip});
  factory EquipTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return EquipTableData(
      idEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_equip'])!,
      nroEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nro_equip'])!,
      codClasseEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_classe_equip'])!,
      descrClasseEquip: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}descr_classe_equip'])!,
      codTurno: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_turno'])!,
      idCheckList: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_check_list'])!,
      tipoEquipFert: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_equip_fert'])!,
      horimetroEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}horimetro_equip'])!,
      medicaoEquipFert: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}medicao_equip_fert'])!,
      tipoEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_equip'])!,
      classifEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}classif_equip'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_equip'] = Variable<int>(idEquip);
    map['nro_equip'] = Variable<int>(nroEquip);
    map['cod_classe_equip'] = Variable<int>(codClasseEquip);
    map['descr_classe_equip'] = Variable<String>(descrClasseEquip);
    map['cod_turno'] = Variable<int>(codTurno);
    map['id_check_list'] = Variable<int>(idCheckList);
    map['tipo_equip_fert'] = Variable<int>(tipoEquipFert);
    map['horimetro_equip'] = Variable<int>(horimetroEquip);
    map['medicao_equip_fert'] = Variable<int>(medicaoEquipFert);
    map['tipo_equip'] = Variable<int>(tipoEquip);
    map['classif_equip'] = Variable<int>(classifEquip);
    return map;
  }

  EquipTableCompanion toCompanion(bool nullToAbsent) {
    return EquipTableCompanion(
      idEquip: Value(idEquip),
      nroEquip: Value(nroEquip),
      codClasseEquip: Value(codClasseEquip),
      descrClasseEquip: Value(descrClasseEquip),
      codTurno: Value(codTurno),
      idCheckList: Value(idCheckList),
      tipoEquipFert: Value(tipoEquipFert),
      horimetroEquip: Value(horimetroEquip),
      medicaoEquipFert: Value(medicaoEquipFert),
      tipoEquip: Value(tipoEquip),
      classifEquip: Value(classifEquip),
    );
  }

  factory EquipTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return EquipTableData(
      idEquip: serializer.fromJson<int>(json['idEquip']),
      nroEquip: serializer.fromJson<int>(json['nroEquip']),
      codClasseEquip: serializer.fromJson<int>(json['codClasseEquip']),
      descrClasseEquip: serializer.fromJson<String>(json['descrClasseEquip']),
      codTurno: serializer.fromJson<int>(json['codTurno']),
      idCheckList: serializer.fromJson<int>(json['idCheckList']),
      tipoEquipFert: serializer.fromJson<int>(json['tipoEquipFert']),
      horimetroEquip: serializer.fromJson<int>(json['horimetroEquip']),
      medicaoEquipFert: serializer.fromJson<int>(json['medicaoEquipFert']),
      tipoEquip: serializer.fromJson<int>(json['tipoEquip']),
      classifEquip: serializer.fromJson<int>(json['classifEquip']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idEquip': serializer.toJson<int>(idEquip),
      'nroEquip': serializer.toJson<int>(nroEquip),
      'codClasseEquip': serializer.toJson<int>(codClasseEquip),
      'descrClasseEquip': serializer.toJson<String>(descrClasseEquip),
      'codTurno': serializer.toJson<int>(codTurno),
      'idCheckList': serializer.toJson<int>(idCheckList),
      'tipoEquipFert': serializer.toJson<int>(tipoEquipFert),
      'horimetroEquip': serializer.toJson<int>(horimetroEquip),
      'medicaoEquipFert': serializer.toJson<int>(medicaoEquipFert),
      'tipoEquip': serializer.toJson<int>(tipoEquip),
      'classifEquip': serializer.toJson<int>(classifEquip),
    };
  }

  EquipTableData copyWith(
          {int? idEquip,
          int? nroEquip,
          int? codClasseEquip,
          String? descrClasseEquip,
          int? codTurno,
          int? idCheckList,
          int? tipoEquipFert,
          int? horimetroEquip,
          int? medicaoEquipFert,
          int? tipoEquip,
          int? classifEquip}) =>
      EquipTableData(
        idEquip: idEquip ?? this.idEquip,
        nroEquip: nroEquip ?? this.nroEquip,
        codClasseEquip: codClasseEquip ?? this.codClasseEquip,
        descrClasseEquip: descrClasseEquip ?? this.descrClasseEquip,
        codTurno: codTurno ?? this.codTurno,
        idCheckList: idCheckList ?? this.idCheckList,
        tipoEquipFert: tipoEquipFert ?? this.tipoEquipFert,
        horimetroEquip: horimetroEquip ?? this.horimetroEquip,
        medicaoEquipFert: medicaoEquipFert ?? this.medicaoEquipFert,
        tipoEquip: tipoEquip ?? this.tipoEquip,
        classifEquip: classifEquip ?? this.classifEquip,
      );
  @override
  String toString() {
    return (StringBuffer('EquipTableData(')
          ..write('idEquip: $idEquip, ')
          ..write('nroEquip: $nroEquip, ')
          ..write('codClasseEquip: $codClasseEquip, ')
          ..write('descrClasseEquip: $descrClasseEquip, ')
          ..write('codTurno: $codTurno, ')
          ..write('idCheckList: $idCheckList, ')
          ..write('tipoEquipFert: $tipoEquipFert, ')
          ..write('horimetroEquip: $horimetroEquip, ')
          ..write('medicaoEquipFert: $medicaoEquipFert, ')
          ..write('tipoEquip: $tipoEquip, ')
          ..write('classifEquip: $classifEquip')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idEquip.hashCode,
      $mrjc(
          nroEquip.hashCode,
          $mrjc(
              codClasseEquip.hashCode,
              $mrjc(
                  descrClasseEquip.hashCode,
                  $mrjc(
                      codTurno.hashCode,
                      $mrjc(
                          idCheckList.hashCode,
                          $mrjc(
                              tipoEquipFert.hashCode,
                              $mrjc(
                                  horimetroEquip.hashCode,
                                  $mrjc(
                                      medicaoEquipFert.hashCode,
                                      $mrjc(tipoEquip.hashCode,
                                          classifEquip.hashCode)))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EquipTableData &&
          other.idEquip == this.idEquip &&
          other.nroEquip == this.nroEquip &&
          other.codClasseEquip == this.codClasseEquip &&
          other.descrClasseEquip == this.descrClasseEquip &&
          other.codTurno == this.codTurno &&
          other.idCheckList == this.idCheckList &&
          other.tipoEquipFert == this.tipoEquipFert &&
          other.horimetroEquip == this.horimetroEquip &&
          other.medicaoEquipFert == this.medicaoEquipFert &&
          other.tipoEquip == this.tipoEquip &&
          other.classifEquip == this.classifEquip);
}

class EquipTableCompanion extends UpdateCompanion<EquipTableData> {
  final Value<int> idEquip;
  final Value<int> nroEquip;
  final Value<int> codClasseEquip;
  final Value<String> descrClasseEquip;
  final Value<int> codTurno;
  final Value<int> idCheckList;
  final Value<int> tipoEquipFert;
  final Value<int> horimetroEquip;
  final Value<int> medicaoEquipFert;
  final Value<int> tipoEquip;
  final Value<int> classifEquip;
  const EquipTableCompanion({
    this.idEquip = const Value.absent(),
    this.nroEquip = const Value.absent(),
    this.codClasseEquip = const Value.absent(),
    this.descrClasseEquip = const Value.absent(),
    this.codTurno = const Value.absent(),
    this.idCheckList = const Value.absent(),
    this.tipoEquipFert = const Value.absent(),
    this.horimetroEquip = const Value.absent(),
    this.medicaoEquipFert = const Value.absent(),
    this.tipoEquip = const Value.absent(),
    this.classifEquip = const Value.absent(),
  });
  EquipTableCompanion.insert({
    required int idEquip,
    required int nroEquip,
    required int codClasseEquip,
    required String descrClasseEquip,
    required int codTurno,
    required int idCheckList,
    required int tipoEquipFert,
    required int horimetroEquip,
    required int medicaoEquipFert,
    required int tipoEquip,
    required int classifEquip,
  })  : idEquip = Value(idEquip),
        nroEquip = Value(nroEquip),
        codClasseEquip = Value(codClasseEquip),
        descrClasseEquip = Value(descrClasseEquip),
        codTurno = Value(codTurno),
        idCheckList = Value(idCheckList),
        tipoEquipFert = Value(tipoEquipFert),
        horimetroEquip = Value(horimetroEquip),
        medicaoEquipFert = Value(medicaoEquipFert),
        tipoEquip = Value(tipoEquip),
        classifEquip = Value(classifEquip);
  static Insertable<EquipTableData> custom({
    Expression<int>? idEquip,
    Expression<int>? nroEquip,
    Expression<int>? codClasseEquip,
    Expression<String>? descrClasseEquip,
    Expression<int>? codTurno,
    Expression<int>? idCheckList,
    Expression<int>? tipoEquipFert,
    Expression<int>? horimetroEquip,
    Expression<int>? medicaoEquipFert,
    Expression<int>? tipoEquip,
    Expression<int>? classifEquip,
  }) {
    return RawValuesInsertable({
      if (idEquip != null) 'id_equip': idEquip,
      if (nroEquip != null) 'nro_equip': nroEquip,
      if (codClasseEquip != null) 'cod_classe_equip': codClasseEquip,
      if (descrClasseEquip != null) 'descr_classe_equip': descrClasseEquip,
      if (codTurno != null) 'cod_turno': codTurno,
      if (idCheckList != null) 'id_check_list': idCheckList,
      if (tipoEquipFert != null) 'tipo_equip_fert': tipoEquipFert,
      if (horimetroEquip != null) 'horimetro_equip': horimetroEquip,
      if (medicaoEquipFert != null) 'medicao_equip_fert': medicaoEquipFert,
      if (tipoEquip != null) 'tipo_equip': tipoEquip,
      if (classifEquip != null) 'classif_equip': classifEquip,
    });
  }

  EquipTableCompanion copyWith(
      {Value<int>? idEquip,
      Value<int>? nroEquip,
      Value<int>? codClasseEquip,
      Value<String>? descrClasseEquip,
      Value<int>? codTurno,
      Value<int>? idCheckList,
      Value<int>? tipoEquipFert,
      Value<int>? horimetroEquip,
      Value<int>? medicaoEquipFert,
      Value<int>? tipoEquip,
      Value<int>? classifEquip}) {
    return EquipTableCompanion(
      idEquip: idEquip ?? this.idEquip,
      nroEquip: nroEquip ?? this.nroEquip,
      codClasseEquip: codClasseEquip ?? this.codClasseEquip,
      descrClasseEquip: descrClasseEquip ?? this.descrClasseEquip,
      codTurno: codTurno ?? this.codTurno,
      idCheckList: idCheckList ?? this.idCheckList,
      tipoEquipFert: tipoEquipFert ?? this.tipoEquipFert,
      horimetroEquip: horimetroEquip ?? this.horimetroEquip,
      medicaoEquipFert: medicaoEquipFert ?? this.medicaoEquipFert,
      tipoEquip: tipoEquip ?? this.tipoEquip,
      classifEquip: classifEquip ?? this.classifEquip,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idEquip.present) {
      map['id_equip'] = Variable<int>(idEquip.value);
    }
    if (nroEquip.present) {
      map['nro_equip'] = Variable<int>(nroEquip.value);
    }
    if (codClasseEquip.present) {
      map['cod_classe_equip'] = Variable<int>(codClasseEquip.value);
    }
    if (descrClasseEquip.present) {
      map['descr_classe_equip'] = Variable<String>(descrClasseEquip.value);
    }
    if (codTurno.present) {
      map['cod_turno'] = Variable<int>(codTurno.value);
    }
    if (idCheckList.present) {
      map['id_check_list'] = Variable<int>(idCheckList.value);
    }
    if (tipoEquipFert.present) {
      map['tipo_equip_fert'] = Variable<int>(tipoEquipFert.value);
    }
    if (horimetroEquip.present) {
      map['horimetro_equip'] = Variable<int>(horimetroEquip.value);
    }
    if (medicaoEquipFert.present) {
      map['medicao_equip_fert'] = Variable<int>(medicaoEquipFert.value);
    }
    if (tipoEquip.present) {
      map['tipo_equip'] = Variable<int>(tipoEquip.value);
    }
    if (classifEquip.present) {
      map['classif_equip'] = Variable<int>(classifEquip.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EquipTableCompanion(')
          ..write('idEquip: $idEquip, ')
          ..write('nroEquip: $nroEquip, ')
          ..write('codClasseEquip: $codClasseEquip, ')
          ..write('descrClasseEquip: $descrClasseEquip, ')
          ..write('codTurno: $codTurno, ')
          ..write('idCheckList: $idCheckList, ')
          ..write('tipoEquipFert: $tipoEquipFert, ')
          ..write('horimetroEquip: $horimetroEquip, ')
          ..write('medicaoEquipFert: $medicaoEquipFert, ')
          ..write('tipoEquip: $tipoEquip, ')
          ..write('classifEquip: $classifEquip')
          ..write(')'))
        .toString();
  }
}

class $EquipTableTable extends EquipTable
    with TableInfo<$EquipTableTable, EquipTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $EquipTableTable(this._db, [this._alias]);
  final VerificationMeta _idEquipMeta = const VerificationMeta('idEquip');
  late final GeneratedColumn<int?> idEquip = GeneratedColumn<int?>(
      'id_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _nroEquipMeta = const VerificationMeta('nroEquip');
  late final GeneratedColumn<int?> nroEquip = GeneratedColumn<int?>(
      'nro_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codClasseEquipMeta =
      const VerificationMeta('codClasseEquip');
  late final GeneratedColumn<int?> codClasseEquip = GeneratedColumn<int?>(
      'cod_classe_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descrClasseEquipMeta =
      const VerificationMeta('descrClasseEquip');
  late final GeneratedColumn<String?> descrClasseEquip =
      GeneratedColumn<String?>('descr_classe_equip', aliasedName, false,
          typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _codTurnoMeta = const VerificationMeta('codTurno');
  late final GeneratedColumn<int?> codTurno = GeneratedColumn<int?>(
      'cod_turno', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idCheckListMeta =
      const VerificationMeta('idCheckList');
  late final GeneratedColumn<int?> idCheckList = GeneratedColumn<int?>(
      'id_check_list', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _tipoEquipFertMeta =
      const VerificationMeta('tipoEquipFert');
  late final GeneratedColumn<int?> tipoEquipFert = GeneratedColumn<int?>(
      'tipo_equip_fert', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _horimetroEquipMeta =
      const VerificationMeta('horimetroEquip');
  late final GeneratedColumn<int?> horimetroEquip = GeneratedColumn<int?>(
      'horimetro_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _medicaoEquipFertMeta =
      const VerificationMeta('medicaoEquipFert');
  late final GeneratedColumn<int?> medicaoEquipFert = GeneratedColumn<int?>(
      'medicao_equip_fert', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _tipoEquipMeta = const VerificationMeta('tipoEquip');
  late final GeneratedColumn<int?> tipoEquip = GeneratedColumn<int?>(
      'tipo_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _classifEquipMeta =
      const VerificationMeta('classifEquip');
  late final GeneratedColumn<int?> classifEquip = GeneratedColumn<int?>(
      'classif_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        idEquip,
        nroEquip,
        codClasseEquip,
        descrClasseEquip,
        codTurno,
        idCheckList,
        tipoEquipFert,
        horimetroEquip,
        medicaoEquipFert,
        tipoEquip,
        classifEquip
      ];
  @override
  String get aliasedName => _alias ?? 'equip_table';
  @override
  String get actualTableName => 'equip_table';
  @override
  VerificationContext validateIntegrity(Insertable<EquipTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_equip')) {
      context.handle(_idEquipMeta,
          idEquip.isAcceptableOrUnknown(data['id_equip']!, _idEquipMeta));
    } else if (isInserting) {
      context.missing(_idEquipMeta);
    }
    if (data.containsKey('nro_equip')) {
      context.handle(_nroEquipMeta,
          nroEquip.isAcceptableOrUnknown(data['nro_equip']!, _nroEquipMeta));
    } else if (isInserting) {
      context.missing(_nroEquipMeta);
    }
    if (data.containsKey('cod_classe_equip')) {
      context.handle(
          _codClasseEquipMeta,
          codClasseEquip.isAcceptableOrUnknown(
              data['cod_classe_equip']!, _codClasseEquipMeta));
    } else if (isInserting) {
      context.missing(_codClasseEquipMeta);
    }
    if (data.containsKey('descr_classe_equip')) {
      context.handle(
          _descrClasseEquipMeta,
          descrClasseEquip.isAcceptableOrUnknown(
              data['descr_classe_equip']!, _descrClasseEquipMeta));
    } else if (isInserting) {
      context.missing(_descrClasseEquipMeta);
    }
    if (data.containsKey('cod_turno')) {
      context.handle(_codTurnoMeta,
          codTurno.isAcceptableOrUnknown(data['cod_turno']!, _codTurnoMeta));
    } else if (isInserting) {
      context.missing(_codTurnoMeta);
    }
    if (data.containsKey('id_check_list')) {
      context.handle(
          _idCheckListMeta,
          idCheckList.isAcceptableOrUnknown(
              data['id_check_list']!, _idCheckListMeta));
    } else if (isInserting) {
      context.missing(_idCheckListMeta);
    }
    if (data.containsKey('tipo_equip_fert')) {
      context.handle(
          _tipoEquipFertMeta,
          tipoEquipFert.isAcceptableOrUnknown(
              data['tipo_equip_fert']!, _tipoEquipFertMeta));
    } else if (isInserting) {
      context.missing(_tipoEquipFertMeta);
    }
    if (data.containsKey('horimetro_equip')) {
      context.handle(
          _horimetroEquipMeta,
          horimetroEquip.isAcceptableOrUnknown(
              data['horimetro_equip']!, _horimetroEquipMeta));
    } else if (isInserting) {
      context.missing(_horimetroEquipMeta);
    }
    if (data.containsKey('medicao_equip_fert')) {
      context.handle(
          _medicaoEquipFertMeta,
          medicaoEquipFert.isAcceptableOrUnknown(
              data['medicao_equip_fert']!, _medicaoEquipFertMeta));
    } else if (isInserting) {
      context.missing(_medicaoEquipFertMeta);
    }
    if (data.containsKey('tipo_equip')) {
      context.handle(_tipoEquipMeta,
          tipoEquip.isAcceptableOrUnknown(data['tipo_equip']!, _tipoEquipMeta));
    } else if (isInserting) {
      context.missing(_tipoEquipMeta);
    }
    if (data.containsKey('classif_equip')) {
      context.handle(
          _classifEquipMeta,
          classifEquip.isAcceptableOrUnknown(
              data['classif_equip']!, _classifEquipMeta));
    } else if (isInserting) {
      context.missing(_classifEquipMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  EquipTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return EquipTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $EquipTableTable createAlias(String alias) {
    return $EquipTableTable(_db, alias);
  }
}

class FrenteTableData extends DataClass implements Insertable<FrenteTableData> {
  final int idFrente;
  final int codFrente;
  final String descrFrente;
  FrenteTableData(
      {required this.idFrente,
      required this.codFrente,
      required this.descrFrente});
  factory FrenteTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FrenteTableData(
      idFrente: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_frente'])!,
      codFrente: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_frente'])!,
      descrFrente: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}descr_frente'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_frente'] = Variable<int>(idFrente);
    map['cod_frente'] = Variable<int>(codFrente);
    map['descr_frente'] = Variable<String>(descrFrente);
    return map;
  }

  FrenteTableCompanion toCompanion(bool nullToAbsent) {
    return FrenteTableCompanion(
      idFrente: Value(idFrente),
      codFrente: Value(codFrente),
      descrFrente: Value(descrFrente),
    );
  }

  factory FrenteTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FrenteTableData(
      idFrente: serializer.fromJson<int>(json['idFrente']),
      codFrente: serializer.fromJson<int>(json['codFrente']),
      descrFrente: serializer.fromJson<String>(json['descrFrente']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idFrente': serializer.toJson<int>(idFrente),
      'codFrente': serializer.toJson<int>(codFrente),
      'descrFrente': serializer.toJson<String>(descrFrente),
    };
  }

  FrenteTableData copyWith(
          {int? idFrente, int? codFrente, String? descrFrente}) =>
      FrenteTableData(
        idFrente: idFrente ?? this.idFrente,
        codFrente: codFrente ?? this.codFrente,
        descrFrente: descrFrente ?? this.descrFrente,
      );
  @override
  String toString() {
    return (StringBuffer('FrenteTableData(')
          ..write('idFrente: $idFrente, ')
          ..write('codFrente: $codFrente, ')
          ..write('descrFrente: $descrFrente')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idFrente.hashCode, $mrjc(codFrente.hashCode, descrFrente.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FrenteTableData &&
          other.idFrente == this.idFrente &&
          other.codFrente == this.codFrente &&
          other.descrFrente == this.descrFrente);
}

class FrenteTableCompanion extends UpdateCompanion<FrenteTableData> {
  final Value<int> idFrente;
  final Value<int> codFrente;
  final Value<String> descrFrente;
  const FrenteTableCompanion({
    this.idFrente = const Value.absent(),
    this.codFrente = const Value.absent(),
    this.descrFrente = const Value.absent(),
  });
  FrenteTableCompanion.insert({
    required int idFrente,
    required int codFrente,
    required String descrFrente,
  })  : idFrente = Value(idFrente),
        codFrente = Value(codFrente),
        descrFrente = Value(descrFrente);
  static Insertable<FrenteTableData> custom({
    Expression<int>? idFrente,
    Expression<int>? codFrente,
    Expression<String>? descrFrente,
  }) {
    return RawValuesInsertable({
      if (idFrente != null) 'id_frente': idFrente,
      if (codFrente != null) 'cod_frente': codFrente,
      if (descrFrente != null) 'descr_frente': descrFrente,
    });
  }

  FrenteTableCompanion copyWith(
      {Value<int>? idFrente,
      Value<int>? codFrente,
      Value<String>? descrFrente}) {
    return FrenteTableCompanion(
      idFrente: idFrente ?? this.idFrente,
      codFrente: codFrente ?? this.codFrente,
      descrFrente: descrFrente ?? this.descrFrente,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idFrente.present) {
      map['id_frente'] = Variable<int>(idFrente.value);
    }
    if (codFrente.present) {
      map['cod_frente'] = Variable<int>(codFrente.value);
    }
    if (descrFrente.present) {
      map['descr_frente'] = Variable<String>(descrFrente.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FrenteTableCompanion(')
          ..write('idFrente: $idFrente, ')
          ..write('codFrente: $codFrente, ')
          ..write('descrFrente: $descrFrente')
          ..write(')'))
        .toString();
  }
}

class $FrenteTableTable extends FrenteTable
    with TableInfo<$FrenteTableTable, FrenteTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FrenteTableTable(this._db, [this._alias]);
  final VerificationMeta _idFrenteMeta = const VerificationMeta('idFrente');
  late final GeneratedColumn<int?> idFrente = GeneratedColumn<int?>(
      'id_frente', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codFrenteMeta = const VerificationMeta('codFrente');
  late final GeneratedColumn<int?> codFrente = GeneratedColumn<int?>(
      'cod_frente', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descrFrenteMeta =
      const VerificationMeta('descrFrente');
  late final GeneratedColumn<String?> descrFrente = GeneratedColumn<String?>(
      'descr_frente', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idFrente, codFrente, descrFrente];
  @override
  String get aliasedName => _alias ?? 'frente_table';
  @override
  String get actualTableName => 'frente_table';
  @override
  VerificationContext validateIntegrity(Insertable<FrenteTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_frente')) {
      context.handle(_idFrenteMeta,
          idFrente.isAcceptableOrUnknown(data['id_frente']!, _idFrenteMeta));
    } else if (isInserting) {
      context.missing(_idFrenteMeta);
    }
    if (data.containsKey('cod_frente')) {
      context.handle(_codFrenteMeta,
          codFrente.isAcceptableOrUnknown(data['cod_frente']!, _codFrenteMeta));
    } else if (isInserting) {
      context.missing(_codFrenteMeta);
    }
    if (data.containsKey('descr_frente')) {
      context.handle(
          _descrFrenteMeta,
          descrFrente.isAcceptableOrUnknown(
              data['descr_frente']!, _descrFrenteMeta));
    } else if (isInserting) {
      context.missing(_descrFrenteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  FrenteTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FrenteTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FrenteTableTable createAlias(String alias) {
    return $FrenteTableTable(_db, alias);
  }
}

class FuncionarioTableData extends DataClass
    implements Insertable<FuncionarioTableData> {
  final int matricFunc;
  final String nomeFunc;
  FuncionarioTableData({required this.matricFunc, required this.nomeFunc});
  factory FuncionarioTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return FuncionarioTableData(
      matricFunc: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}matric_func'])!,
      nomeFunc: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nome_func'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['matric_func'] = Variable<int>(matricFunc);
    map['nome_func'] = Variable<String>(nomeFunc);
    return map;
  }

  FuncionarioTableCompanion toCompanion(bool nullToAbsent) {
    return FuncionarioTableCompanion(
      matricFunc: Value(matricFunc),
      nomeFunc: Value(nomeFunc),
    );
  }

  factory FuncionarioTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return FuncionarioTableData(
      matricFunc: serializer.fromJson<int>(json['matricFunc']),
      nomeFunc: serializer.fromJson<String>(json['nomeFunc']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'matricFunc': serializer.toJson<int>(matricFunc),
      'nomeFunc': serializer.toJson<String>(nomeFunc),
    };
  }

  FuncionarioTableData copyWith({int? matricFunc, String? nomeFunc}) =>
      FuncionarioTableData(
        matricFunc: matricFunc ?? this.matricFunc,
        nomeFunc: nomeFunc ?? this.nomeFunc,
      );
  @override
  String toString() {
    return (StringBuffer('FuncionarioTableData(')
          ..write('matricFunc: $matricFunc, ')
          ..write('nomeFunc: $nomeFunc')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(matricFunc.hashCode, nomeFunc.hashCode));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FuncionarioTableData &&
          other.matricFunc == this.matricFunc &&
          other.nomeFunc == this.nomeFunc);
}

class FuncionarioTableCompanion extends UpdateCompanion<FuncionarioTableData> {
  final Value<int> matricFunc;
  final Value<String> nomeFunc;
  const FuncionarioTableCompanion({
    this.matricFunc = const Value.absent(),
    this.nomeFunc = const Value.absent(),
  });
  FuncionarioTableCompanion.insert({
    required int matricFunc,
    required String nomeFunc,
  })  : matricFunc = Value(matricFunc),
        nomeFunc = Value(nomeFunc);
  static Insertable<FuncionarioTableData> custom({
    Expression<int>? matricFunc,
    Expression<String>? nomeFunc,
  }) {
    return RawValuesInsertable({
      if (matricFunc != null) 'matric_func': matricFunc,
      if (nomeFunc != null) 'nome_func': nomeFunc,
    });
  }

  FuncionarioTableCompanion copyWith(
      {Value<int>? matricFunc, Value<String>? nomeFunc}) {
    return FuncionarioTableCompanion(
      matricFunc: matricFunc ?? this.matricFunc,
      nomeFunc: nomeFunc ?? this.nomeFunc,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (matricFunc.present) {
      map['matric_func'] = Variable<int>(matricFunc.value);
    }
    if (nomeFunc.present) {
      map['nome_func'] = Variable<String>(nomeFunc.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FuncionarioTableCompanion(')
          ..write('matricFunc: $matricFunc, ')
          ..write('nomeFunc: $nomeFunc')
          ..write(')'))
        .toString();
  }
}

class $FuncionarioTableTable extends FuncionarioTable
    with TableInfo<$FuncionarioTableTable, FuncionarioTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $FuncionarioTableTable(this._db, [this._alias]);
  final VerificationMeta _matricFuncMeta = const VerificationMeta('matricFunc');
  late final GeneratedColumn<int?> matricFunc = GeneratedColumn<int?>(
      'matric_func', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _nomeFuncMeta = const VerificationMeta('nomeFunc');
  late final GeneratedColumn<String?> nomeFunc = GeneratedColumn<String?>(
      'nome_func', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [matricFunc, nomeFunc];
  @override
  String get aliasedName => _alias ?? 'funcionario_table';
  @override
  String get actualTableName => 'funcionario_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<FuncionarioTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('matric_func')) {
      context.handle(
          _matricFuncMeta,
          matricFunc.isAcceptableOrUnknown(
              data['matric_func']!, _matricFuncMeta));
    } else if (isInserting) {
      context.missing(_matricFuncMeta);
    }
    if (data.containsKey('nome_func')) {
      context.handle(_nomeFuncMeta,
          nomeFunc.isAcceptableOrUnknown(data['nome_func']!, _nomeFuncMeta));
    } else if (isInserting) {
      context.missing(_nomeFuncMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  FuncionarioTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return FuncionarioTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FuncionarioTableTable createAlias(String alias) {
    return $FuncionarioTableTable(_db, alias);
  }
}

class ItemCheckListTableData extends DataClass
    implements Insertable<ItemCheckListTableData> {
  final int idItemCheckList;
  final int idCheckList;
  final String descrItemCheckList;
  ItemCheckListTableData(
      {required this.idItemCheckList,
      required this.idCheckList,
      required this.descrItemCheckList});
  factory ItemCheckListTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ItemCheckListTableData(
      idItemCheckList: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}id_item_check_list'])!,
      idCheckList: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_check_list'])!,
      descrItemCheckList: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}descr_item_check_list'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_item_check_list'] = Variable<int>(idItemCheckList);
    map['id_check_list'] = Variable<int>(idCheckList);
    map['descr_item_check_list'] = Variable<String>(descrItemCheckList);
    return map;
  }

  ItemCheckListTableCompanion toCompanion(bool nullToAbsent) {
    return ItemCheckListTableCompanion(
      idItemCheckList: Value(idItemCheckList),
      idCheckList: Value(idCheckList),
      descrItemCheckList: Value(descrItemCheckList),
    );
  }

  factory ItemCheckListTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ItemCheckListTableData(
      idItemCheckList: serializer.fromJson<int>(json['idItemCheckList']),
      idCheckList: serializer.fromJson<int>(json['idCheckList']),
      descrItemCheckList:
          serializer.fromJson<String>(json['descrItemCheckList']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idItemCheckList': serializer.toJson<int>(idItemCheckList),
      'idCheckList': serializer.toJson<int>(idCheckList),
      'descrItemCheckList': serializer.toJson<String>(descrItemCheckList),
    };
  }

  ItemCheckListTableData copyWith(
          {int? idItemCheckList,
          int? idCheckList,
          String? descrItemCheckList}) =>
      ItemCheckListTableData(
        idItemCheckList: idItemCheckList ?? this.idItemCheckList,
        idCheckList: idCheckList ?? this.idCheckList,
        descrItemCheckList: descrItemCheckList ?? this.descrItemCheckList,
      );
  @override
  String toString() {
    return (StringBuffer('ItemCheckListTableData(')
          ..write('idItemCheckList: $idItemCheckList, ')
          ..write('idCheckList: $idCheckList, ')
          ..write('descrItemCheckList: $descrItemCheckList')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(idItemCheckList.hashCode,
      $mrjc(idCheckList.hashCode, descrItemCheckList.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemCheckListTableData &&
          other.idItemCheckList == this.idItemCheckList &&
          other.idCheckList == this.idCheckList &&
          other.descrItemCheckList == this.descrItemCheckList);
}

class ItemCheckListTableCompanion
    extends UpdateCompanion<ItemCheckListTableData> {
  final Value<int> idItemCheckList;
  final Value<int> idCheckList;
  final Value<String> descrItemCheckList;
  const ItemCheckListTableCompanion({
    this.idItemCheckList = const Value.absent(),
    this.idCheckList = const Value.absent(),
    this.descrItemCheckList = const Value.absent(),
  });
  ItemCheckListTableCompanion.insert({
    required int idItemCheckList,
    required int idCheckList,
    required String descrItemCheckList,
  })  : idItemCheckList = Value(idItemCheckList),
        idCheckList = Value(idCheckList),
        descrItemCheckList = Value(descrItemCheckList);
  static Insertable<ItemCheckListTableData> custom({
    Expression<int>? idItemCheckList,
    Expression<int>? idCheckList,
    Expression<String>? descrItemCheckList,
  }) {
    return RawValuesInsertable({
      if (idItemCheckList != null) 'id_item_check_list': idItemCheckList,
      if (idCheckList != null) 'id_check_list': idCheckList,
      if (descrItemCheckList != null)
        'descr_item_check_list': descrItemCheckList,
    });
  }

  ItemCheckListTableCompanion copyWith(
      {Value<int>? idItemCheckList,
      Value<int>? idCheckList,
      Value<String>? descrItemCheckList}) {
    return ItemCheckListTableCompanion(
      idItemCheckList: idItemCheckList ?? this.idItemCheckList,
      idCheckList: idCheckList ?? this.idCheckList,
      descrItemCheckList: descrItemCheckList ?? this.descrItemCheckList,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idItemCheckList.present) {
      map['id_item_check_list'] = Variable<int>(idItemCheckList.value);
    }
    if (idCheckList.present) {
      map['id_check_list'] = Variable<int>(idCheckList.value);
    }
    if (descrItemCheckList.present) {
      map['descr_item_check_list'] = Variable<String>(descrItemCheckList.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemCheckListTableCompanion(')
          ..write('idItemCheckList: $idItemCheckList, ')
          ..write('idCheckList: $idCheckList, ')
          ..write('descrItemCheckList: $descrItemCheckList')
          ..write(')'))
        .toString();
  }
}

class $ItemCheckListTableTable extends ItemCheckListTable
    with TableInfo<$ItemCheckListTableTable, ItemCheckListTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ItemCheckListTableTable(this._db, [this._alias]);
  final VerificationMeta _idItemCheckListMeta =
      const VerificationMeta('idItemCheckList');
  late final GeneratedColumn<int?> idItemCheckList = GeneratedColumn<int?>(
      'id_item_check_list', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idCheckListMeta =
      const VerificationMeta('idCheckList');
  late final GeneratedColumn<int?> idCheckList = GeneratedColumn<int?>(
      'id_check_list', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descrItemCheckListMeta =
      const VerificationMeta('descrItemCheckList');
  late final GeneratedColumn<String?> descrItemCheckList =
      GeneratedColumn<String?>('descr_item_check_list', aliasedName, false,
          typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [idItemCheckList, idCheckList, descrItemCheckList];
  @override
  String get aliasedName => _alias ?? 'item_check_list_table';
  @override
  String get actualTableName => 'item_check_list_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ItemCheckListTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_item_check_list')) {
      context.handle(
          _idItemCheckListMeta,
          idItemCheckList.isAcceptableOrUnknown(
              data['id_item_check_list']!, _idItemCheckListMeta));
    } else if (isInserting) {
      context.missing(_idItemCheckListMeta);
    }
    if (data.containsKey('id_check_list')) {
      context.handle(
          _idCheckListMeta,
          idCheckList.isAcceptableOrUnknown(
              data['id_check_list']!, _idCheckListMeta));
    } else if (isInserting) {
      context.missing(_idCheckListMeta);
    }
    if (data.containsKey('descr_item_check_list')) {
      context.handle(
          _descrItemCheckListMeta,
          descrItemCheckList.isAcceptableOrUnknown(
              data['descr_item_check_list']!, _descrItemCheckListMeta));
    } else if (isInserting) {
      context.missing(_descrItemCheckListMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ItemCheckListTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ItemCheckListTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ItemCheckListTableTable createAlias(String alias) {
    return $ItemCheckListTableTable(_db, alias);
  }
}

class LeiraTableData extends DataClass implements Insertable<LeiraTableData> {
  final int idLeira;
  final int codLeira;
  final int statusLeira;
  LeiraTableData(
      {required this.idLeira,
      required this.codLeira,
      required this.statusLeira});
  factory LeiraTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LeiraTableData(
      idLeira: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_leira'])!,
      codLeira: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_leira'])!,
      statusLeira: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status_leira'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_leira'] = Variable<int>(idLeira);
    map['cod_leira'] = Variable<int>(codLeira);
    map['status_leira'] = Variable<int>(statusLeira);
    return map;
  }

  LeiraTableCompanion toCompanion(bool nullToAbsent) {
    return LeiraTableCompanion(
      idLeira: Value(idLeira),
      codLeira: Value(codLeira),
      statusLeira: Value(statusLeira),
    );
  }

  factory LeiraTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return LeiraTableData(
      idLeira: serializer.fromJson<int>(json['idLeira']),
      codLeira: serializer.fromJson<int>(json['codLeira']),
      statusLeira: serializer.fromJson<int>(json['statusLeira']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idLeira': serializer.toJson<int>(idLeira),
      'codLeira': serializer.toJson<int>(codLeira),
      'statusLeira': serializer.toJson<int>(statusLeira),
    };
  }

  LeiraTableData copyWith({int? idLeira, int? codLeira, int? statusLeira}) =>
      LeiraTableData(
        idLeira: idLeira ?? this.idLeira,
        codLeira: codLeira ?? this.codLeira,
        statusLeira: statusLeira ?? this.statusLeira,
      );
  @override
  String toString() {
    return (StringBuffer('LeiraTableData(')
          ..write('idLeira: $idLeira, ')
          ..write('codLeira: $codLeira, ')
          ..write('statusLeira: $statusLeira')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(idLeira.hashCode, $mrjc(codLeira.hashCode, statusLeira.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LeiraTableData &&
          other.idLeira == this.idLeira &&
          other.codLeira == this.codLeira &&
          other.statusLeira == this.statusLeira);
}

class LeiraTableCompanion extends UpdateCompanion<LeiraTableData> {
  final Value<int> idLeira;
  final Value<int> codLeira;
  final Value<int> statusLeira;
  const LeiraTableCompanion({
    this.idLeira = const Value.absent(),
    this.codLeira = const Value.absent(),
    this.statusLeira = const Value.absent(),
  });
  LeiraTableCompanion.insert({
    required int idLeira,
    required int codLeira,
    required int statusLeira,
  })  : idLeira = Value(idLeira),
        codLeira = Value(codLeira),
        statusLeira = Value(statusLeira);
  static Insertable<LeiraTableData> custom({
    Expression<int>? idLeira,
    Expression<int>? codLeira,
    Expression<int>? statusLeira,
  }) {
    return RawValuesInsertable({
      if (idLeira != null) 'id_leira': idLeira,
      if (codLeira != null) 'cod_leira': codLeira,
      if (statusLeira != null) 'status_leira': statusLeira,
    });
  }

  LeiraTableCompanion copyWith(
      {Value<int>? idLeira, Value<int>? codLeira, Value<int>? statusLeira}) {
    return LeiraTableCompanion(
      idLeira: idLeira ?? this.idLeira,
      codLeira: codLeira ?? this.codLeira,
      statusLeira: statusLeira ?? this.statusLeira,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idLeira.present) {
      map['id_leira'] = Variable<int>(idLeira.value);
    }
    if (codLeira.present) {
      map['cod_leira'] = Variable<int>(codLeira.value);
    }
    if (statusLeira.present) {
      map['status_leira'] = Variable<int>(statusLeira.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LeiraTableCompanion(')
          ..write('idLeira: $idLeira, ')
          ..write('codLeira: $codLeira, ')
          ..write('statusLeira: $statusLeira')
          ..write(')'))
        .toString();
  }
}

class $LeiraTableTable extends LeiraTable
    with TableInfo<$LeiraTableTable, LeiraTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $LeiraTableTable(this._db, [this._alias]);
  final VerificationMeta _idLeiraMeta = const VerificationMeta('idLeira');
  late final GeneratedColumn<int?> idLeira = GeneratedColumn<int?>(
      'id_leira', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codLeiraMeta = const VerificationMeta('codLeira');
  late final GeneratedColumn<int?> codLeira = GeneratedColumn<int?>(
      'cod_leira', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _statusLeiraMeta =
      const VerificationMeta('statusLeira');
  late final GeneratedColumn<int?> statusLeira = GeneratedColumn<int?>(
      'status_leira', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idLeira, codLeira, statusLeira];
  @override
  String get aliasedName => _alias ?? 'leira_table';
  @override
  String get actualTableName => 'leira_table';
  @override
  VerificationContext validateIntegrity(Insertable<LeiraTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_leira')) {
      context.handle(_idLeiraMeta,
          idLeira.isAcceptableOrUnknown(data['id_leira']!, _idLeiraMeta));
    } else if (isInserting) {
      context.missing(_idLeiraMeta);
    }
    if (data.containsKey('cod_leira')) {
      context.handle(_codLeiraMeta,
          codLeira.isAcceptableOrUnknown(data['cod_leira']!, _codLeiraMeta));
    } else if (isInserting) {
      context.missing(_codLeiraMeta);
    }
    if (data.containsKey('status_leira')) {
      context.handle(
          _statusLeiraMeta,
          statusLeira.isAcceptableOrUnknown(
              data['status_leira']!, _statusLeiraMeta));
    } else if (isInserting) {
      context.missing(_statusLeiraMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  LeiraTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LeiraTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LeiraTableTable createAlias(String alias) {
    return $LeiraTableTable(_db, alias);
  }
}

class OperMotoMecTableData extends DataClass
    implements Insertable<OperMotoMecTableData> {
  final int idOperMotoMec;
  final int codOperMotoMec;
  final String descrOperMotoMec;
  final int codFuncaoOperMotoMec;
  final int posOperMotoMec;
  final int tipoOperMotoMec;
  final int aplicOperMotoMec;
  final int funcaoOperMotoMec;
  OperMotoMecTableData(
      {required this.idOperMotoMec,
      required this.codOperMotoMec,
      required this.descrOperMotoMec,
      required this.codFuncaoOperMotoMec,
      required this.posOperMotoMec,
      required this.tipoOperMotoMec,
      required this.aplicOperMotoMec,
      required this.funcaoOperMotoMec});
  factory OperMotoMecTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OperMotoMecTableData(
      idOperMotoMec: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_oper_moto_mec'])!,
      codOperMotoMec: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}cod_oper_moto_mec'])!,
      descrOperMotoMec: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}descr_oper_moto_mec'])!,
      codFuncaoOperMotoMec: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}cod_funcao_oper_moto_mec'])!,
      posOperMotoMec: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}pos_oper_moto_mec'])!,
      tipoOperMotoMec: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}tipo_oper_moto_mec'])!,
      aplicOperMotoMec: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}aplic_oper_moto_mec'])!,
      funcaoOperMotoMec: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}funcao_oper_moto_mec'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_oper_moto_mec'] = Variable<int>(idOperMotoMec);
    map['cod_oper_moto_mec'] = Variable<int>(codOperMotoMec);
    map['descr_oper_moto_mec'] = Variable<String>(descrOperMotoMec);
    map['cod_funcao_oper_moto_mec'] = Variable<int>(codFuncaoOperMotoMec);
    map['pos_oper_moto_mec'] = Variable<int>(posOperMotoMec);
    map['tipo_oper_moto_mec'] = Variable<int>(tipoOperMotoMec);
    map['aplic_oper_moto_mec'] = Variable<int>(aplicOperMotoMec);
    map['funcao_oper_moto_mec'] = Variable<int>(funcaoOperMotoMec);
    return map;
  }

  OperMotoMecTableCompanion toCompanion(bool nullToAbsent) {
    return OperMotoMecTableCompanion(
      idOperMotoMec: Value(idOperMotoMec),
      codOperMotoMec: Value(codOperMotoMec),
      descrOperMotoMec: Value(descrOperMotoMec),
      codFuncaoOperMotoMec: Value(codFuncaoOperMotoMec),
      posOperMotoMec: Value(posOperMotoMec),
      tipoOperMotoMec: Value(tipoOperMotoMec),
      aplicOperMotoMec: Value(aplicOperMotoMec),
      funcaoOperMotoMec: Value(funcaoOperMotoMec),
    );
  }

  factory OperMotoMecTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return OperMotoMecTableData(
      idOperMotoMec: serializer.fromJson<int>(json['idOperMotoMec']),
      codOperMotoMec: serializer.fromJson<int>(json['codOperMotoMec']),
      descrOperMotoMec: serializer.fromJson<String>(json['descrOperMotoMec']),
      codFuncaoOperMotoMec:
          serializer.fromJson<int>(json['codFuncaoOperMotoMec']),
      posOperMotoMec: serializer.fromJson<int>(json['posOperMotoMec']),
      tipoOperMotoMec: serializer.fromJson<int>(json['tipoOperMotoMec']),
      aplicOperMotoMec: serializer.fromJson<int>(json['aplicOperMotoMec']),
      funcaoOperMotoMec: serializer.fromJson<int>(json['funcaoOperMotoMec']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idOperMotoMec': serializer.toJson<int>(idOperMotoMec),
      'codOperMotoMec': serializer.toJson<int>(codOperMotoMec),
      'descrOperMotoMec': serializer.toJson<String>(descrOperMotoMec),
      'codFuncaoOperMotoMec': serializer.toJson<int>(codFuncaoOperMotoMec),
      'posOperMotoMec': serializer.toJson<int>(posOperMotoMec),
      'tipoOperMotoMec': serializer.toJson<int>(tipoOperMotoMec),
      'aplicOperMotoMec': serializer.toJson<int>(aplicOperMotoMec),
      'funcaoOperMotoMec': serializer.toJson<int>(funcaoOperMotoMec),
    };
  }

  OperMotoMecTableData copyWith(
          {int? idOperMotoMec,
          int? codOperMotoMec,
          String? descrOperMotoMec,
          int? codFuncaoOperMotoMec,
          int? posOperMotoMec,
          int? tipoOperMotoMec,
          int? aplicOperMotoMec,
          int? funcaoOperMotoMec}) =>
      OperMotoMecTableData(
        idOperMotoMec: idOperMotoMec ?? this.idOperMotoMec,
        codOperMotoMec: codOperMotoMec ?? this.codOperMotoMec,
        descrOperMotoMec: descrOperMotoMec ?? this.descrOperMotoMec,
        codFuncaoOperMotoMec: codFuncaoOperMotoMec ?? this.codFuncaoOperMotoMec,
        posOperMotoMec: posOperMotoMec ?? this.posOperMotoMec,
        tipoOperMotoMec: tipoOperMotoMec ?? this.tipoOperMotoMec,
        aplicOperMotoMec: aplicOperMotoMec ?? this.aplicOperMotoMec,
        funcaoOperMotoMec: funcaoOperMotoMec ?? this.funcaoOperMotoMec,
      );
  @override
  String toString() {
    return (StringBuffer('OperMotoMecTableData(')
          ..write('idOperMotoMec: $idOperMotoMec, ')
          ..write('codOperMotoMec: $codOperMotoMec, ')
          ..write('descrOperMotoMec: $descrOperMotoMec, ')
          ..write('codFuncaoOperMotoMec: $codFuncaoOperMotoMec, ')
          ..write('posOperMotoMec: $posOperMotoMec, ')
          ..write('tipoOperMotoMec: $tipoOperMotoMec, ')
          ..write('aplicOperMotoMec: $aplicOperMotoMec, ')
          ..write('funcaoOperMotoMec: $funcaoOperMotoMec')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idOperMotoMec.hashCode,
      $mrjc(
          codOperMotoMec.hashCode,
          $mrjc(
              descrOperMotoMec.hashCode,
              $mrjc(
                  codFuncaoOperMotoMec.hashCode,
                  $mrjc(
                      posOperMotoMec.hashCode,
                      $mrjc(
                          tipoOperMotoMec.hashCode,
                          $mrjc(aplicOperMotoMec.hashCode,
                              funcaoOperMotoMec.hashCode))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OperMotoMecTableData &&
          other.idOperMotoMec == this.idOperMotoMec &&
          other.codOperMotoMec == this.codOperMotoMec &&
          other.descrOperMotoMec == this.descrOperMotoMec &&
          other.codFuncaoOperMotoMec == this.codFuncaoOperMotoMec &&
          other.posOperMotoMec == this.posOperMotoMec &&
          other.tipoOperMotoMec == this.tipoOperMotoMec &&
          other.aplicOperMotoMec == this.aplicOperMotoMec &&
          other.funcaoOperMotoMec == this.funcaoOperMotoMec);
}

class OperMotoMecTableCompanion extends UpdateCompanion<OperMotoMecTableData> {
  final Value<int> idOperMotoMec;
  final Value<int> codOperMotoMec;
  final Value<String> descrOperMotoMec;
  final Value<int> codFuncaoOperMotoMec;
  final Value<int> posOperMotoMec;
  final Value<int> tipoOperMotoMec;
  final Value<int> aplicOperMotoMec;
  final Value<int> funcaoOperMotoMec;
  const OperMotoMecTableCompanion({
    this.idOperMotoMec = const Value.absent(),
    this.codOperMotoMec = const Value.absent(),
    this.descrOperMotoMec = const Value.absent(),
    this.codFuncaoOperMotoMec = const Value.absent(),
    this.posOperMotoMec = const Value.absent(),
    this.tipoOperMotoMec = const Value.absent(),
    this.aplicOperMotoMec = const Value.absent(),
    this.funcaoOperMotoMec = const Value.absent(),
  });
  OperMotoMecTableCompanion.insert({
    required int idOperMotoMec,
    required int codOperMotoMec,
    required String descrOperMotoMec,
    required int codFuncaoOperMotoMec,
    required int posOperMotoMec,
    required int tipoOperMotoMec,
    required int aplicOperMotoMec,
    required int funcaoOperMotoMec,
  })  : idOperMotoMec = Value(idOperMotoMec),
        codOperMotoMec = Value(codOperMotoMec),
        descrOperMotoMec = Value(descrOperMotoMec),
        codFuncaoOperMotoMec = Value(codFuncaoOperMotoMec),
        posOperMotoMec = Value(posOperMotoMec),
        tipoOperMotoMec = Value(tipoOperMotoMec),
        aplicOperMotoMec = Value(aplicOperMotoMec),
        funcaoOperMotoMec = Value(funcaoOperMotoMec);
  static Insertable<OperMotoMecTableData> custom({
    Expression<int>? idOperMotoMec,
    Expression<int>? codOperMotoMec,
    Expression<String>? descrOperMotoMec,
    Expression<int>? codFuncaoOperMotoMec,
    Expression<int>? posOperMotoMec,
    Expression<int>? tipoOperMotoMec,
    Expression<int>? aplicOperMotoMec,
    Expression<int>? funcaoOperMotoMec,
  }) {
    return RawValuesInsertable({
      if (idOperMotoMec != null) 'id_oper_moto_mec': idOperMotoMec,
      if (codOperMotoMec != null) 'cod_oper_moto_mec': codOperMotoMec,
      if (descrOperMotoMec != null) 'descr_oper_moto_mec': descrOperMotoMec,
      if (codFuncaoOperMotoMec != null)
        'cod_funcao_oper_moto_mec': codFuncaoOperMotoMec,
      if (posOperMotoMec != null) 'pos_oper_moto_mec': posOperMotoMec,
      if (tipoOperMotoMec != null) 'tipo_oper_moto_mec': tipoOperMotoMec,
      if (aplicOperMotoMec != null) 'aplic_oper_moto_mec': aplicOperMotoMec,
      if (funcaoOperMotoMec != null) 'funcao_oper_moto_mec': funcaoOperMotoMec,
    });
  }

  OperMotoMecTableCompanion copyWith(
      {Value<int>? idOperMotoMec,
      Value<int>? codOperMotoMec,
      Value<String>? descrOperMotoMec,
      Value<int>? codFuncaoOperMotoMec,
      Value<int>? posOperMotoMec,
      Value<int>? tipoOperMotoMec,
      Value<int>? aplicOperMotoMec,
      Value<int>? funcaoOperMotoMec}) {
    return OperMotoMecTableCompanion(
      idOperMotoMec: idOperMotoMec ?? this.idOperMotoMec,
      codOperMotoMec: codOperMotoMec ?? this.codOperMotoMec,
      descrOperMotoMec: descrOperMotoMec ?? this.descrOperMotoMec,
      codFuncaoOperMotoMec: codFuncaoOperMotoMec ?? this.codFuncaoOperMotoMec,
      posOperMotoMec: posOperMotoMec ?? this.posOperMotoMec,
      tipoOperMotoMec: tipoOperMotoMec ?? this.tipoOperMotoMec,
      aplicOperMotoMec: aplicOperMotoMec ?? this.aplicOperMotoMec,
      funcaoOperMotoMec: funcaoOperMotoMec ?? this.funcaoOperMotoMec,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idOperMotoMec.present) {
      map['id_oper_moto_mec'] = Variable<int>(idOperMotoMec.value);
    }
    if (codOperMotoMec.present) {
      map['cod_oper_moto_mec'] = Variable<int>(codOperMotoMec.value);
    }
    if (descrOperMotoMec.present) {
      map['descr_oper_moto_mec'] = Variable<String>(descrOperMotoMec.value);
    }
    if (codFuncaoOperMotoMec.present) {
      map['cod_funcao_oper_moto_mec'] =
          Variable<int>(codFuncaoOperMotoMec.value);
    }
    if (posOperMotoMec.present) {
      map['pos_oper_moto_mec'] = Variable<int>(posOperMotoMec.value);
    }
    if (tipoOperMotoMec.present) {
      map['tipo_oper_moto_mec'] = Variable<int>(tipoOperMotoMec.value);
    }
    if (aplicOperMotoMec.present) {
      map['aplic_oper_moto_mec'] = Variable<int>(aplicOperMotoMec.value);
    }
    if (funcaoOperMotoMec.present) {
      map['funcao_oper_moto_mec'] = Variable<int>(funcaoOperMotoMec.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OperMotoMecTableCompanion(')
          ..write('idOperMotoMec: $idOperMotoMec, ')
          ..write('codOperMotoMec: $codOperMotoMec, ')
          ..write('descrOperMotoMec: $descrOperMotoMec, ')
          ..write('codFuncaoOperMotoMec: $codFuncaoOperMotoMec, ')
          ..write('posOperMotoMec: $posOperMotoMec, ')
          ..write('tipoOperMotoMec: $tipoOperMotoMec, ')
          ..write('aplicOperMotoMec: $aplicOperMotoMec, ')
          ..write('funcaoOperMotoMec: $funcaoOperMotoMec')
          ..write(')'))
        .toString();
  }
}

class $OperMotoMecTableTable extends OperMotoMecTable
    with TableInfo<$OperMotoMecTableTable, OperMotoMecTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $OperMotoMecTableTable(this._db, [this._alias]);
  final VerificationMeta _idOperMotoMecMeta =
      const VerificationMeta('idOperMotoMec');
  late final GeneratedColumn<int?> idOperMotoMec = GeneratedColumn<int?>(
      'id_oper_moto_mec', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codOperMotoMecMeta =
      const VerificationMeta('codOperMotoMec');
  late final GeneratedColumn<int?> codOperMotoMec = GeneratedColumn<int?>(
      'cod_oper_moto_mec', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descrOperMotoMecMeta =
      const VerificationMeta('descrOperMotoMec');
  late final GeneratedColumn<String?> descrOperMotoMec =
      GeneratedColumn<String?>('descr_oper_moto_mec', aliasedName, false,
          typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _codFuncaoOperMotoMecMeta =
      const VerificationMeta('codFuncaoOperMotoMec');
  late final GeneratedColumn<int?> codFuncaoOperMotoMec = GeneratedColumn<int?>(
      'cod_funcao_oper_moto_mec', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _posOperMotoMecMeta =
      const VerificationMeta('posOperMotoMec');
  late final GeneratedColumn<int?> posOperMotoMec = GeneratedColumn<int?>(
      'pos_oper_moto_mec', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _tipoOperMotoMecMeta =
      const VerificationMeta('tipoOperMotoMec');
  late final GeneratedColumn<int?> tipoOperMotoMec = GeneratedColumn<int?>(
      'tipo_oper_moto_mec', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _aplicOperMotoMecMeta =
      const VerificationMeta('aplicOperMotoMec');
  late final GeneratedColumn<int?> aplicOperMotoMec = GeneratedColumn<int?>(
      'aplic_oper_moto_mec', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _funcaoOperMotoMecMeta =
      const VerificationMeta('funcaoOperMotoMec');
  late final GeneratedColumn<int?> funcaoOperMotoMec = GeneratedColumn<int?>(
      'funcao_oper_moto_mec', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        idOperMotoMec,
        codOperMotoMec,
        descrOperMotoMec,
        codFuncaoOperMotoMec,
        posOperMotoMec,
        tipoOperMotoMec,
        aplicOperMotoMec,
        funcaoOperMotoMec
      ];
  @override
  String get aliasedName => _alias ?? 'oper_moto_mec_table';
  @override
  String get actualTableName => 'oper_moto_mec_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<OperMotoMecTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_oper_moto_mec')) {
      context.handle(
          _idOperMotoMecMeta,
          idOperMotoMec.isAcceptableOrUnknown(
              data['id_oper_moto_mec']!, _idOperMotoMecMeta));
    } else if (isInserting) {
      context.missing(_idOperMotoMecMeta);
    }
    if (data.containsKey('cod_oper_moto_mec')) {
      context.handle(
          _codOperMotoMecMeta,
          codOperMotoMec.isAcceptableOrUnknown(
              data['cod_oper_moto_mec']!, _codOperMotoMecMeta));
    } else if (isInserting) {
      context.missing(_codOperMotoMecMeta);
    }
    if (data.containsKey('descr_oper_moto_mec')) {
      context.handle(
          _descrOperMotoMecMeta,
          descrOperMotoMec.isAcceptableOrUnknown(
              data['descr_oper_moto_mec']!, _descrOperMotoMecMeta));
    } else if (isInserting) {
      context.missing(_descrOperMotoMecMeta);
    }
    if (data.containsKey('cod_funcao_oper_moto_mec')) {
      context.handle(
          _codFuncaoOperMotoMecMeta,
          codFuncaoOperMotoMec.isAcceptableOrUnknown(
              data['cod_funcao_oper_moto_mec']!, _codFuncaoOperMotoMecMeta));
    } else if (isInserting) {
      context.missing(_codFuncaoOperMotoMecMeta);
    }
    if (data.containsKey('pos_oper_moto_mec')) {
      context.handle(
          _posOperMotoMecMeta,
          posOperMotoMec.isAcceptableOrUnknown(
              data['pos_oper_moto_mec']!, _posOperMotoMecMeta));
    } else if (isInserting) {
      context.missing(_posOperMotoMecMeta);
    }
    if (data.containsKey('tipo_oper_moto_mec')) {
      context.handle(
          _tipoOperMotoMecMeta,
          tipoOperMotoMec.isAcceptableOrUnknown(
              data['tipo_oper_moto_mec']!, _tipoOperMotoMecMeta));
    } else if (isInserting) {
      context.missing(_tipoOperMotoMecMeta);
    }
    if (data.containsKey('aplic_oper_moto_mec')) {
      context.handle(
          _aplicOperMotoMecMeta,
          aplicOperMotoMec.isAcceptableOrUnknown(
              data['aplic_oper_moto_mec']!, _aplicOperMotoMecMeta));
    } else if (isInserting) {
      context.missing(_aplicOperMotoMecMeta);
    }
    if (data.containsKey('funcao_oper_moto_mec')) {
      context.handle(
          _funcaoOperMotoMecMeta,
          funcaoOperMotoMec.isAcceptableOrUnknown(
              data['funcao_oper_moto_mec']!, _funcaoOperMotoMecMeta));
    } else if (isInserting) {
      context.missing(_funcaoOperMotoMecMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  OperMotoMecTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return OperMotoMecTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $OperMotoMecTableTable createAlias(String alias) {
    return $OperMotoMecTableTable(_db, alias);
  }
}

class OSTableData extends DataClass implements Insertable<OSTableData> {
  final int id;
  final int idOS;
  final int nroOS;
  final int idLibOS;
  final int idProprAgr;
  final String descrProprAgr;
  final int areaProgrOS;
  final String dtInicProgr;
  final String dtFimProgr;
  final int tipoOS;
  final int idAtiv;
  final int idAtivOS;
  OSTableData(
      {required this.id,
      required this.idOS,
      required this.nroOS,
      required this.idLibOS,
      required this.idProprAgr,
      required this.descrProprAgr,
      required this.areaProgrOS,
      required this.dtInicProgr,
      required this.dtFimProgr,
      required this.tipoOS,
      required this.idAtiv,
      required this.idAtivOS});
  factory OSTableData.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OSTableData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      idOS: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_o_s'])!,
      nroOS: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nro_o_s'])!,
      idLibOS: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_lib_o_s'])!,
      idProprAgr: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_propr_agr'])!,
      descrProprAgr: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}descr_propr_agr'])!,
      areaProgrOS: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}area_progr_o_s'])!,
      dtInicProgr: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dt_inic_progr'])!,
      dtFimProgr: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}dt_fim_progr'])!,
      tipoOS: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_o_s'])!,
      idAtiv: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_ativ'])!,
      idAtivOS: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_ativ_o_s'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_o_s'] = Variable<int>(idOS);
    map['nro_o_s'] = Variable<int>(nroOS);
    map['id_lib_o_s'] = Variable<int>(idLibOS);
    map['id_propr_agr'] = Variable<int>(idProprAgr);
    map['descr_propr_agr'] = Variable<String>(descrProprAgr);
    map['area_progr_o_s'] = Variable<int>(areaProgrOS);
    map['dt_inic_progr'] = Variable<String>(dtInicProgr);
    map['dt_fim_progr'] = Variable<String>(dtFimProgr);
    map['tipo_o_s'] = Variable<int>(tipoOS);
    map['id_ativ'] = Variable<int>(idAtiv);
    map['id_ativ_o_s'] = Variable<int>(idAtivOS);
    return map;
  }

  OSTableCompanion toCompanion(bool nullToAbsent) {
    return OSTableCompanion(
      id: Value(id),
      idOS: Value(idOS),
      nroOS: Value(nroOS),
      idLibOS: Value(idLibOS),
      idProprAgr: Value(idProprAgr),
      descrProprAgr: Value(descrProprAgr),
      areaProgrOS: Value(areaProgrOS),
      dtInicProgr: Value(dtInicProgr),
      dtFimProgr: Value(dtFimProgr),
      tipoOS: Value(tipoOS),
      idAtiv: Value(idAtiv),
      idAtivOS: Value(idAtivOS),
    );
  }

  factory OSTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return OSTableData(
      id: serializer.fromJson<int>(json['id']),
      idOS: serializer.fromJson<int>(json['idOS']),
      nroOS: serializer.fromJson<int>(json['nroOS']),
      idLibOS: serializer.fromJson<int>(json['idLibOS']),
      idProprAgr: serializer.fromJson<int>(json['idProprAgr']),
      descrProprAgr: serializer.fromJson<String>(json['descrProprAgr']),
      areaProgrOS: serializer.fromJson<int>(json['areaProgrOS']),
      dtInicProgr: serializer.fromJson<String>(json['dtInicProgr']),
      dtFimProgr: serializer.fromJson<String>(json['dtFimProgr']),
      tipoOS: serializer.fromJson<int>(json['tipoOS']),
      idAtiv: serializer.fromJson<int>(json['idAtiv']),
      idAtivOS: serializer.fromJson<int>(json['idAtivOS']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idOS': serializer.toJson<int>(idOS),
      'nroOS': serializer.toJson<int>(nroOS),
      'idLibOS': serializer.toJson<int>(idLibOS),
      'idProprAgr': serializer.toJson<int>(idProprAgr),
      'descrProprAgr': serializer.toJson<String>(descrProprAgr),
      'areaProgrOS': serializer.toJson<int>(areaProgrOS),
      'dtInicProgr': serializer.toJson<String>(dtInicProgr),
      'dtFimProgr': serializer.toJson<String>(dtFimProgr),
      'tipoOS': serializer.toJson<int>(tipoOS),
      'idAtiv': serializer.toJson<int>(idAtiv),
      'idAtivOS': serializer.toJson<int>(idAtivOS),
    };
  }

  OSTableData copyWith(
          {int? id,
          int? idOS,
          int? nroOS,
          int? idLibOS,
          int? idProprAgr,
          String? descrProprAgr,
          int? areaProgrOS,
          String? dtInicProgr,
          String? dtFimProgr,
          int? tipoOS,
          int? idAtiv,
          int? idAtivOS}) =>
      OSTableData(
        id: id ?? this.id,
        idOS: idOS ?? this.idOS,
        nroOS: nroOS ?? this.nroOS,
        idLibOS: idLibOS ?? this.idLibOS,
        idProprAgr: idProprAgr ?? this.idProprAgr,
        descrProprAgr: descrProprAgr ?? this.descrProprAgr,
        areaProgrOS: areaProgrOS ?? this.areaProgrOS,
        dtInicProgr: dtInicProgr ?? this.dtInicProgr,
        dtFimProgr: dtFimProgr ?? this.dtFimProgr,
        tipoOS: tipoOS ?? this.tipoOS,
        idAtiv: idAtiv ?? this.idAtiv,
        idAtivOS: idAtivOS ?? this.idAtivOS,
      );
  @override
  String toString() {
    return (StringBuffer('OSTableData(')
          ..write('id: $id, ')
          ..write('idOS: $idOS, ')
          ..write('nroOS: $nroOS, ')
          ..write('idLibOS: $idLibOS, ')
          ..write('idProprAgr: $idProprAgr, ')
          ..write('descrProprAgr: $descrProprAgr, ')
          ..write('areaProgrOS: $areaProgrOS, ')
          ..write('dtInicProgr: $dtInicProgr, ')
          ..write('dtFimProgr: $dtFimProgr, ')
          ..write('tipoOS: $tipoOS, ')
          ..write('idAtiv: $idAtiv, ')
          ..write('idAtivOS: $idAtivOS')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          idOS.hashCode,
          $mrjc(
              nroOS.hashCode,
              $mrjc(
                  idLibOS.hashCode,
                  $mrjc(
                      idProprAgr.hashCode,
                      $mrjc(
                          descrProprAgr.hashCode,
                          $mrjc(
                              areaProgrOS.hashCode,
                              $mrjc(
                                  dtInicProgr.hashCode,
                                  $mrjc(
                                      dtFimProgr.hashCode,
                                      $mrjc(
                                          tipoOS.hashCode,
                                          $mrjc(idAtiv.hashCode,
                                              idAtivOS.hashCode))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OSTableData &&
          other.id == this.id &&
          other.idOS == this.idOS &&
          other.nroOS == this.nroOS &&
          other.idLibOS == this.idLibOS &&
          other.idProprAgr == this.idProprAgr &&
          other.descrProprAgr == this.descrProprAgr &&
          other.areaProgrOS == this.areaProgrOS &&
          other.dtInicProgr == this.dtInicProgr &&
          other.dtFimProgr == this.dtFimProgr &&
          other.tipoOS == this.tipoOS &&
          other.idAtiv == this.idAtiv &&
          other.idAtivOS == this.idAtivOS);
}

class OSTableCompanion extends UpdateCompanion<OSTableData> {
  final Value<int> id;
  final Value<int> idOS;
  final Value<int> nroOS;
  final Value<int> idLibOS;
  final Value<int> idProprAgr;
  final Value<String> descrProprAgr;
  final Value<int> areaProgrOS;
  final Value<String> dtInicProgr;
  final Value<String> dtFimProgr;
  final Value<int> tipoOS;
  final Value<int> idAtiv;
  final Value<int> idAtivOS;
  const OSTableCompanion({
    this.id = const Value.absent(),
    this.idOS = const Value.absent(),
    this.nroOS = const Value.absent(),
    this.idLibOS = const Value.absent(),
    this.idProprAgr = const Value.absent(),
    this.descrProprAgr = const Value.absent(),
    this.areaProgrOS = const Value.absent(),
    this.dtInicProgr = const Value.absent(),
    this.dtFimProgr = const Value.absent(),
    this.tipoOS = const Value.absent(),
    this.idAtiv = const Value.absent(),
    this.idAtivOS = const Value.absent(),
  });
  OSTableCompanion.insert({
    required int id,
    required int idOS,
    required int nroOS,
    required int idLibOS,
    required int idProprAgr,
    required String descrProprAgr,
    required int areaProgrOS,
    required String dtInicProgr,
    required String dtFimProgr,
    required int tipoOS,
    required int idAtiv,
    required int idAtivOS,
  })  : id = Value(id),
        idOS = Value(idOS),
        nroOS = Value(nroOS),
        idLibOS = Value(idLibOS),
        idProprAgr = Value(idProprAgr),
        descrProprAgr = Value(descrProprAgr),
        areaProgrOS = Value(areaProgrOS),
        dtInicProgr = Value(dtInicProgr),
        dtFimProgr = Value(dtFimProgr),
        tipoOS = Value(tipoOS),
        idAtiv = Value(idAtiv),
        idAtivOS = Value(idAtivOS);
  static Insertable<OSTableData> custom({
    Expression<int>? id,
    Expression<int>? idOS,
    Expression<int>? nroOS,
    Expression<int>? idLibOS,
    Expression<int>? idProprAgr,
    Expression<String>? descrProprAgr,
    Expression<int>? areaProgrOS,
    Expression<String>? dtInicProgr,
    Expression<String>? dtFimProgr,
    Expression<int>? tipoOS,
    Expression<int>? idAtiv,
    Expression<int>? idAtivOS,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idOS != null) 'id_o_s': idOS,
      if (nroOS != null) 'nro_o_s': nroOS,
      if (idLibOS != null) 'id_lib_o_s': idLibOS,
      if (idProprAgr != null) 'id_propr_agr': idProprAgr,
      if (descrProprAgr != null) 'descr_propr_agr': descrProprAgr,
      if (areaProgrOS != null) 'area_progr_o_s': areaProgrOS,
      if (dtInicProgr != null) 'dt_inic_progr': dtInicProgr,
      if (dtFimProgr != null) 'dt_fim_progr': dtFimProgr,
      if (tipoOS != null) 'tipo_o_s': tipoOS,
      if (idAtiv != null) 'id_ativ': idAtiv,
      if (idAtivOS != null) 'id_ativ_o_s': idAtivOS,
    });
  }

  OSTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? idOS,
      Value<int>? nroOS,
      Value<int>? idLibOS,
      Value<int>? idProprAgr,
      Value<String>? descrProprAgr,
      Value<int>? areaProgrOS,
      Value<String>? dtInicProgr,
      Value<String>? dtFimProgr,
      Value<int>? tipoOS,
      Value<int>? idAtiv,
      Value<int>? idAtivOS}) {
    return OSTableCompanion(
      id: id ?? this.id,
      idOS: idOS ?? this.idOS,
      nroOS: nroOS ?? this.nroOS,
      idLibOS: idLibOS ?? this.idLibOS,
      idProprAgr: idProprAgr ?? this.idProprAgr,
      descrProprAgr: descrProprAgr ?? this.descrProprAgr,
      areaProgrOS: areaProgrOS ?? this.areaProgrOS,
      dtInicProgr: dtInicProgr ?? this.dtInicProgr,
      dtFimProgr: dtFimProgr ?? this.dtFimProgr,
      tipoOS: tipoOS ?? this.tipoOS,
      idAtiv: idAtiv ?? this.idAtiv,
      idAtivOS: idAtivOS ?? this.idAtivOS,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idOS.present) {
      map['id_o_s'] = Variable<int>(idOS.value);
    }
    if (nroOS.present) {
      map['nro_o_s'] = Variable<int>(nroOS.value);
    }
    if (idLibOS.present) {
      map['id_lib_o_s'] = Variable<int>(idLibOS.value);
    }
    if (idProprAgr.present) {
      map['id_propr_agr'] = Variable<int>(idProprAgr.value);
    }
    if (descrProprAgr.present) {
      map['descr_propr_agr'] = Variable<String>(descrProprAgr.value);
    }
    if (areaProgrOS.present) {
      map['area_progr_o_s'] = Variable<int>(areaProgrOS.value);
    }
    if (dtInicProgr.present) {
      map['dt_inic_progr'] = Variable<String>(dtInicProgr.value);
    }
    if (dtFimProgr.present) {
      map['dt_fim_progr'] = Variable<String>(dtFimProgr.value);
    }
    if (tipoOS.present) {
      map['tipo_o_s'] = Variable<int>(tipoOS.value);
    }
    if (idAtiv.present) {
      map['id_ativ'] = Variable<int>(idAtiv.value);
    }
    if (idAtivOS.present) {
      map['id_ativ_o_s'] = Variable<int>(idAtivOS.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OSTableCompanion(')
          ..write('id: $id, ')
          ..write('idOS: $idOS, ')
          ..write('nroOS: $nroOS, ')
          ..write('idLibOS: $idLibOS, ')
          ..write('idProprAgr: $idProprAgr, ')
          ..write('descrProprAgr: $descrProprAgr, ')
          ..write('areaProgrOS: $areaProgrOS, ')
          ..write('dtInicProgr: $dtInicProgr, ')
          ..write('dtFimProgr: $dtFimProgr, ')
          ..write('tipoOS: $tipoOS, ')
          ..write('idAtiv: $idAtiv, ')
          ..write('idAtivOS: $idAtivOS')
          ..write(')'))
        .toString();
  }
}

class $OSTableTable extends OSTable with TableInfo<$OSTableTable, OSTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $OSTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idOSMeta = const VerificationMeta('idOS');
  late final GeneratedColumn<int?> idOS = GeneratedColumn<int?>(
      'id_o_s', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _nroOSMeta = const VerificationMeta('nroOS');
  late final GeneratedColumn<int?> nroOS = GeneratedColumn<int?>(
      'nro_o_s', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idLibOSMeta = const VerificationMeta('idLibOS');
  late final GeneratedColumn<int?> idLibOS = GeneratedColumn<int?>(
      'id_lib_o_s', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idProprAgrMeta = const VerificationMeta('idProprAgr');
  late final GeneratedColumn<int?> idProprAgr = GeneratedColumn<int?>(
      'id_propr_agr', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descrProprAgrMeta =
      const VerificationMeta('descrProprAgr');
  late final GeneratedColumn<String?> descrProprAgr = GeneratedColumn<String?>(
      'descr_propr_agr', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _areaProgrOSMeta =
      const VerificationMeta('areaProgrOS');
  late final GeneratedColumn<int?> areaProgrOS = GeneratedColumn<int?>(
      'area_progr_o_s', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _dtInicProgrMeta =
      const VerificationMeta('dtInicProgr');
  late final GeneratedColumn<String?> dtInicProgr = GeneratedColumn<String?>(
      'dt_inic_progr', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _dtFimProgrMeta = const VerificationMeta('dtFimProgr');
  late final GeneratedColumn<String?> dtFimProgr = GeneratedColumn<String?>(
      'dt_fim_progr', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _tipoOSMeta = const VerificationMeta('tipoOS');
  late final GeneratedColumn<int?> tipoOS = GeneratedColumn<int?>(
      'tipo_o_s', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idAtivMeta = const VerificationMeta('idAtiv');
  late final GeneratedColumn<int?> idAtiv = GeneratedColumn<int?>(
      'id_ativ', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idAtivOSMeta = const VerificationMeta('idAtivOS');
  late final GeneratedColumn<int?> idAtivOS = GeneratedColumn<int?>(
      'id_ativ_o_s', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        idOS,
        nroOS,
        idLibOS,
        idProprAgr,
        descrProprAgr,
        areaProgrOS,
        dtInicProgr,
        dtFimProgr,
        tipoOS,
        idAtiv,
        idAtivOS
      ];
  @override
  String get aliasedName => _alias ?? 'o_s_table';
  @override
  String get actualTableName => 'o_s_table';
  @override
  VerificationContext validateIntegrity(Insertable<OSTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('id_o_s')) {
      context.handle(
          _idOSMeta, idOS.isAcceptableOrUnknown(data['id_o_s']!, _idOSMeta));
    } else if (isInserting) {
      context.missing(_idOSMeta);
    }
    if (data.containsKey('nro_o_s')) {
      context.handle(_nroOSMeta,
          nroOS.isAcceptableOrUnknown(data['nro_o_s']!, _nroOSMeta));
    } else if (isInserting) {
      context.missing(_nroOSMeta);
    }
    if (data.containsKey('id_lib_o_s')) {
      context.handle(_idLibOSMeta,
          idLibOS.isAcceptableOrUnknown(data['id_lib_o_s']!, _idLibOSMeta));
    } else if (isInserting) {
      context.missing(_idLibOSMeta);
    }
    if (data.containsKey('id_propr_agr')) {
      context.handle(
          _idProprAgrMeta,
          idProprAgr.isAcceptableOrUnknown(
              data['id_propr_agr']!, _idProprAgrMeta));
    } else if (isInserting) {
      context.missing(_idProprAgrMeta);
    }
    if (data.containsKey('descr_propr_agr')) {
      context.handle(
          _descrProprAgrMeta,
          descrProprAgr.isAcceptableOrUnknown(
              data['descr_propr_agr']!, _descrProprAgrMeta));
    } else if (isInserting) {
      context.missing(_descrProprAgrMeta);
    }
    if (data.containsKey('area_progr_o_s')) {
      context.handle(
          _areaProgrOSMeta,
          areaProgrOS.isAcceptableOrUnknown(
              data['area_progr_o_s']!, _areaProgrOSMeta));
    } else if (isInserting) {
      context.missing(_areaProgrOSMeta);
    }
    if (data.containsKey('dt_inic_progr')) {
      context.handle(
          _dtInicProgrMeta,
          dtInicProgr.isAcceptableOrUnknown(
              data['dt_inic_progr']!, _dtInicProgrMeta));
    } else if (isInserting) {
      context.missing(_dtInicProgrMeta);
    }
    if (data.containsKey('dt_fim_progr')) {
      context.handle(
          _dtFimProgrMeta,
          dtFimProgr.isAcceptableOrUnknown(
              data['dt_fim_progr']!, _dtFimProgrMeta));
    } else if (isInserting) {
      context.missing(_dtFimProgrMeta);
    }
    if (data.containsKey('tipo_o_s')) {
      context.handle(_tipoOSMeta,
          tipoOS.isAcceptableOrUnknown(data['tipo_o_s']!, _tipoOSMeta));
    } else if (isInserting) {
      context.missing(_tipoOSMeta);
    }
    if (data.containsKey('id_ativ')) {
      context.handle(_idAtivMeta,
          idAtiv.isAcceptableOrUnknown(data['id_ativ']!, _idAtivMeta));
    } else if (isInserting) {
      context.missing(_idAtivMeta);
    }
    if (data.containsKey('id_ativ_o_s')) {
      context.handle(_idAtivOSMeta,
          idAtivOS.isAcceptableOrUnknown(data['id_ativ_o_s']!, _idAtivOSMeta));
    } else if (isInserting) {
      context.missing(_idAtivOSMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  OSTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return OSTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $OSTableTable createAlias(String alias) {
    return $OSTableTable(_db, alias);
  }
}

class ParadaTableData extends DataClass implements Insertable<ParadaTableData> {
  final int idParada;
  final int codParada;
  final String descrParada;
  ParadaTableData(
      {required this.idParada,
      required this.codParada,
      required this.descrParada});
  factory ParadaTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ParadaTableData(
      idParada: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_parada'])!,
      codParada: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_parada'])!,
      descrParada: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}descr_parada'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_parada'] = Variable<int>(idParada);
    map['cod_parada'] = Variable<int>(codParada);
    map['descr_parada'] = Variable<String>(descrParada);
    return map;
  }

  ParadaTableCompanion toCompanion(bool nullToAbsent) {
    return ParadaTableCompanion(
      idParada: Value(idParada),
      codParada: Value(codParada),
      descrParada: Value(descrParada),
    );
  }

  factory ParadaTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ParadaTableData(
      idParada: serializer.fromJson<int>(json['idParada']),
      codParada: serializer.fromJson<int>(json['codParada']),
      descrParada: serializer.fromJson<String>(json['descrParada']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idParada': serializer.toJson<int>(idParada),
      'codParada': serializer.toJson<int>(codParada),
      'descrParada': serializer.toJson<String>(descrParada),
    };
  }

  ParadaTableData copyWith(
          {int? idParada, int? codParada, String? descrParada}) =>
      ParadaTableData(
        idParada: idParada ?? this.idParada,
        codParada: codParada ?? this.codParada,
        descrParada: descrParada ?? this.descrParada,
      );
  @override
  String toString() {
    return (StringBuffer('ParadaTableData(')
          ..write('idParada: $idParada, ')
          ..write('codParada: $codParada, ')
          ..write('descrParada: $descrParada')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idParada.hashCode, $mrjc(codParada.hashCode, descrParada.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ParadaTableData &&
          other.idParada == this.idParada &&
          other.codParada == this.codParada &&
          other.descrParada == this.descrParada);
}

class ParadaTableCompanion extends UpdateCompanion<ParadaTableData> {
  final Value<int> idParada;
  final Value<int> codParada;
  final Value<String> descrParada;
  const ParadaTableCompanion({
    this.idParada = const Value.absent(),
    this.codParada = const Value.absent(),
    this.descrParada = const Value.absent(),
  });
  ParadaTableCompanion.insert({
    required int idParada,
    required int codParada,
    required String descrParada,
  })  : idParada = Value(idParada),
        codParada = Value(codParada),
        descrParada = Value(descrParada);
  static Insertable<ParadaTableData> custom({
    Expression<int>? idParada,
    Expression<int>? codParada,
    Expression<String>? descrParada,
  }) {
    return RawValuesInsertable({
      if (idParada != null) 'id_parada': idParada,
      if (codParada != null) 'cod_parada': codParada,
      if (descrParada != null) 'descr_parada': descrParada,
    });
  }

  ParadaTableCompanion copyWith(
      {Value<int>? idParada,
      Value<int>? codParada,
      Value<String>? descrParada}) {
    return ParadaTableCompanion(
      idParada: idParada ?? this.idParada,
      codParada: codParada ?? this.codParada,
      descrParada: descrParada ?? this.descrParada,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idParada.present) {
      map['id_parada'] = Variable<int>(idParada.value);
    }
    if (codParada.present) {
      map['cod_parada'] = Variable<int>(codParada.value);
    }
    if (descrParada.present) {
      map['descr_parada'] = Variable<String>(descrParada.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ParadaTableCompanion(')
          ..write('idParada: $idParada, ')
          ..write('codParada: $codParada, ')
          ..write('descrParada: $descrParada')
          ..write(')'))
        .toString();
  }
}

class $ParadaTableTable extends ParadaTable
    with TableInfo<$ParadaTableTable, ParadaTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ParadaTableTable(this._db, [this._alias]);
  final VerificationMeta _idParadaMeta = const VerificationMeta('idParada');
  late final GeneratedColumn<int?> idParada = GeneratedColumn<int?>(
      'id_parada', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codParadaMeta = const VerificationMeta('codParada');
  late final GeneratedColumn<int?> codParada = GeneratedColumn<int?>(
      'cod_parada', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descrParadaMeta =
      const VerificationMeta('descrParada');
  late final GeneratedColumn<String?> descrParada = GeneratedColumn<String?>(
      'descr_parada', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idParada, codParada, descrParada];
  @override
  String get aliasedName => _alias ?? 'parada_table';
  @override
  String get actualTableName => 'parada_table';
  @override
  VerificationContext validateIntegrity(Insertable<ParadaTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_parada')) {
      context.handle(_idParadaMeta,
          idParada.isAcceptableOrUnknown(data['id_parada']!, _idParadaMeta));
    } else if (isInserting) {
      context.missing(_idParadaMeta);
    }
    if (data.containsKey('cod_parada')) {
      context.handle(_codParadaMeta,
          codParada.isAcceptableOrUnknown(data['cod_parada']!, _codParadaMeta));
    } else if (isInserting) {
      context.missing(_codParadaMeta);
    }
    if (data.containsKey('descr_parada')) {
      context.handle(
          _descrParadaMeta,
          descrParada.isAcceptableOrUnknown(
              data['descr_parada']!, _descrParadaMeta));
    } else if (isInserting) {
      context.missing(_descrParadaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ParadaTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ParadaTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ParadaTableTable createAlias(String alias) {
    return $ParadaTableTable(_db, alias);
  }
}

class PressaoBocalTableData extends DataClass
    implements Insertable<PressaoBocalTableData> {
  final int idPressaoBocal;
  final int idBocal;
  final int valorPressao;
  final int valorVeloc;
  PressaoBocalTableData(
      {required this.idPressaoBocal,
      required this.idBocal,
      required this.valorPressao,
      required this.valorVeloc});
  factory PressaoBocalTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PressaoBocalTableData(
      idPressaoBocal: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_pressao_bocal'])!,
      idBocal: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_bocal'])!,
      valorPressao: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}valor_pressao'])!,
      valorVeloc: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}valor_veloc'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_pressao_bocal'] = Variable<int>(idPressaoBocal);
    map['id_bocal'] = Variable<int>(idBocal);
    map['valor_pressao'] = Variable<int>(valorPressao);
    map['valor_veloc'] = Variable<int>(valorVeloc);
    return map;
  }

  PressaoBocalTableCompanion toCompanion(bool nullToAbsent) {
    return PressaoBocalTableCompanion(
      idPressaoBocal: Value(idPressaoBocal),
      idBocal: Value(idBocal),
      valorPressao: Value(valorPressao),
      valorVeloc: Value(valorVeloc),
    );
  }

  factory PressaoBocalTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PressaoBocalTableData(
      idPressaoBocal: serializer.fromJson<int>(json['idPressaoBocal']),
      idBocal: serializer.fromJson<int>(json['idBocal']),
      valorPressao: serializer.fromJson<int>(json['valorPressao']),
      valorVeloc: serializer.fromJson<int>(json['valorVeloc']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idPressaoBocal': serializer.toJson<int>(idPressaoBocal),
      'idBocal': serializer.toJson<int>(idBocal),
      'valorPressao': serializer.toJson<int>(valorPressao),
      'valorVeloc': serializer.toJson<int>(valorVeloc),
    };
  }

  PressaoBocalTableData copyWith(
          {int? idPressaoBocal,
          int? idBocal,
          int? valorPressao,
          int? valorVeloc}) =>
      PressaoBocalTableData(
        idPressaoBocal: idPressaoBocal ?? this.idPressaoBocal,
        idBocal: idBocal ?? this.idBocal,
        valorPressao: valorPressao ?? this.valorPressao,
        valorVeloc: valorVeloc ?? this.valorVeloc,
      );
  @override
  String toString() {
    return (StringBuffer('PressaoBocalTableData(')
          ..write('idPressaoBocal: $idPressaoBocal, ')
          ..write('idBocal: $idBocal, ')
          ..write('valorPressao: $valorPressao, ')
          ..write('valorVeloc: $valorVeloc')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idPressaoBocal.hashCode,
      $mrjc(idBocal.hashCode,
          $mrjc(valorPressao.hashCode, valorVeloc.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PressaoBocalTableData &&
          other.idPressaoBocal == this.idPressaoBocal &&
          other.idBocal == this.idBocal &&
          other.valorPressao == this.valorPressao &&
          other.valorVeloc == this.valorVeloc);
}

class PressaoBocalTableCompanion
    extends UpdateCompanion<PressaoBocalTableData> {
  final Value<int> idPressaoBocal;
  final Value<int> idBocal;
  final Value<int> valorPressao;
  final Value<int> valorVeloc;
  const PressaoBocalTableCompanion({
    this.idPressaoBocal = const Value.absent(),
    this.idBocal = const Value.absent(),
    this.valorPressao = const Value.absent(),
    this.valorVeloc = const Value.absent(),
  });
  PressaoBocalTableCompanion.insert({
    required int idPressaoBocal,
    required int idBocal,
    required int valorPressao,
    required int valorVeloc,
  })  : idPressaoBocal = Value(idPressaoBocal),
        idBocal = Value(idBocal),
        valorPressao = Value(valorPressao),
        valorVeloc = Value(valorVeloc);
  static Insertable<PressaoBocalTableData> custom({
    Expression<int>? idPressaoBocal,
    Expression<int>? idBocal,
    Expression<int>? valorPressao,
    Expression<int>? valorVeloc,
  }) {
    return RawValuesInsertable({
      if (idPressaoBocal != null) 'id_pressao_bocal': idPressaoBocal,
      if (idBocal != null) 'id_bocal': idBocal,
      if (valorPressao != null) 'valor_pressao': valorPressao,
      if (valorVeloc != null) 'valor_veloc': valorVeloc,
    });
  }

  PressaoBocalTableCompanion copyWith(
      {Value<int>? idPressaoBocal,
      Value<int>? idBocal,
      Value<int>? valorPressao,
      Value<int>? valorVeloc}) {
    return PressaoBocalTableCompanion(
      idPressaoBocal: idPressaoBocal ?? this.idPressaoBocal,
      idBocal: idBocal ?? this.idBocal,
      valorPressao: valorPressao ?? this.valorPressao,
      valorVeloc: valorVeloc ?? this.valorVeloc,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idPressaoBocal.present) {
      map['id_pressao_bocal'] = Variable<int>(idPressaoBocal.value);
    }
    if (idBocal.present) {
      map['id_bocal'] = Variable<int>(idBocal.value);
    }
    if (valorPressao.present) {
      map['valor_pressao'] = Variable<int>(valorPressao.value);
    }
    if (valorVeloc.present) {
      map['valor_veloc'] = Variable<int>(valorVeloc.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PressaoBocalTableCompanion(')
          ..write('idPressaoBocal: $idPressaoBocal, ')
          ..write('idBocal: $idBocal, ')
          ..write('valorPressao: $valorPressao, ')
          ..write('valorVeloc: $valorVeloc')
          ..write(')'))
        .toString();
  }
}

class $PressaoBocalTableTable extends PressaoBocalTable
    with TableInfo<$PressaoBocalTableTable, PressaoBocalTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $PressaoBocalTableTable(this._db, [this._alias]);
  final VerificationMeta _idPressaoBocalMeta =
      const VerificationMeta('idPressaoBocal');
  late final GeneratedColumn<int?> idPressaoBocal = GeneratedColumn<int?>(
      'id_pressao_bocal', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idBocalMeta = const VerificationMeta('idBocal');
  late final GeneratedColumn<int?> idBocal = GeneratedColumn<int?>(
      'id_bocal', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _valorPressaoMeta =
      const VerificationMeta('valorPressao');
  late final GeneratedColumn<int?> valorPressao = GeneratedColumn<int?>(
      'valor_pressao', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _valorVelocMeta = const VerificationMeta('valorVeloc');
  late final GeneratedColumn<int?> valorVeloc = GeneratedColumn<int?>(
      'valor_veloc', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [idPressaoBocal, idBocal, valorPressao, valorVeloc];
  @override
  String get aliasedName => _alias ?? 'pressao_bocal_table';
  @override
  String get actualTableName => 'pressao_bocal_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PressaoBocalTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_pressao_bocal')) {
      context.handle(
          _idPressaoBocalMeta,
          idPressaoBocal.isAcceptableOrUnknown(
              data['id_pressao_bocal']!, _idPressaoBocalMeta));
    } else if (isInserting) {
      context.missing(_idPressaoBocalMeta);
    }
    if (data.containsKey('id_bocal')) {
      context.handle(_idBocalMeta,
          idBocal.isAcceptableOrUnknown(data['id_bocal']!, _idBocalMeta));
    } else if (isInserting) {
      context.missing(_idBocalMeta);
    }
    if (data.containsKey('valor_pressao')) {
      context.handle(
          _valorPressaoMeta,
          valorPressao.isAcceptableOrUnknown(
              data['valor_pressao']!, _valorPressaoMeta));
    } else if (isInserting) {
      context.missing(_valorPressaoMeta);
    }
    if (data.containsKey('valor_veloc')) {
      context.handle(
          _valorVelocMeta,
          valorVeloc.isAcceptableOrUnknown(
              data['valor_veloc']!, _valorVelocMeta));
    } else if (isInserting) {
      context.missing(_valorVelocMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  PressaoBocalTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PressaoBocalTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PressaoBocalTableTable createAlias(String alias) {
    return $PressaoBocalTableTable(_db, alias);
  }
}

class ProdutoTableData extends DataClass
    implements Insertable<ProdutoTableData> {
  final int idProduto;
  final String codProduto;
  final String descProduto;
  ProdutoTableData(
      {required this.idProduto,
      required this.codProduto,
      required this.descProduto});
  factory ProdutoTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ProdutoTableData(
      idProduto: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_produto'])!,
      codProduto: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_produto'])!,
      descProduto: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}desc_produto'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_produto'] = Variable<int>(idProduto);
    map['cod_produto'] = Variable<String>(codProduto);
    map['desc_produto'] = Variable<String>(descProduto);
    return map;
  }

  ProdutoTableCompanion toCompanion(bool nullToAbsent) {
    return ProdutoTableCompanion(
      idProduto: Value(idProduto),
      codProduto: Value(codProduto),
      descProduto: Value(descProduto),
    );
  }

  factory ProdutoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ProdutoTableData(
      idProduto: serializer.fromJson<int>(json['idProduto']),
      codProduto: serializer.fromJson<String>(json['codProduto']),
      descProduto: serializer.fromJson<String>(json['descProduto']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idProduto': serializer.toJson<int>(idProduto),
      'codProduto': serializer.toJson<String>(codProduto),
      'descProduto': serializer.toJson<String>(descProduto),
    };
  }

  ProdutoTableData copyWith(
          {int? idProduto, String? codProduto, String? descProduto}) =>
      ProdutoTableData(
        idProduto: idProduto ?? this.idProduto,
        codProduto: codProduto ?? this.codProduto,
        descProduto: descProduto ?? this.descProduto,
      );
  @override
  String toString() {
    return (StringBuffer('ProdutoTableData(')
          ..write('idProduto: $idProduto, ')
          ..write('codProduto: $codProduto, ')
          ..write('descProduto: $descProduto')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idProduto.hashCode, $mrjc(codProduto.hashCode, descProduto.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProdutoTableData &&
          other.idProduto == this.idProduto &&
          other.codProduto == this.codProduto &&
          other.descProduto == this.descProduto);
}

class ProdutoTableCompanion extends UpdateCompanion<ProdutoTableData> {
  final Value<int> idProduto;
  final Value<String> codProduto;
  final Value<String> descProduto;
  const ProdutoTableCompanion({
    this.idProduto = const Value.absent(),
    this.codProduto = const Value.absent(),
    this.descProduto = const Value.absent(),
  });
  ProdutoTableCompanion.insert({
    required int idProduto,
    required String codProduto,
    required String descProduto,
  })  : idProduto = Value(idProduto),
        codProduto = Value(codProduto),
        descProduto = Value(descProduto);
  static Insertable<ProdutoTableData> custom({
    Expression<int>? idProduto,
    Expression<String>? codProduto,
    Expression<String>? descProduto,
  }) {
    return RawValuesInsertable({
      if (idProduto != null) 'id_produto': idProduto,
      if (codProduto != null) 'cod_produto': codProduto,
      if (descProduto != null) 'desc_produto': descProduto,
    });
  }

  ProdutoTableCompanion copyWith(
      {Value<int>? idProduto,
      Value<String>? codProduto,
      Value<String>? descProduto}) {
    return ProdutoTableCompanion(
      idProduto: idProduto ?? this.idProduto,
      codProduto: codProduto ?? this.codProduto,
      descProduto: descProduto ?? this.descProduto,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idProduto.present) {
      map['id_produto'] = Variable<int>(idProduto.value);
    }
    if (codProduto.present) {
      map['cod_produto'] = Variable<String>(codProduto.value);
    }
    if (descProduto.present) {
      map['desc_produto'] = Variable<String>(descProduto.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProdutoTableCompanion(')
          ..write('idProduto: $idProduto, ')
          ..write('codProduto: $codProduto, ')
          ..write('descProduto: $descProduto')
          ..write(')'))
        .toString();
  }
}

class $ProdutoTableTable extends ProdutoTable
    with TableInfo<$ProdutoTableTable, ProdutoTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ProdutoTableTable(this._db, [this._alias]);
  final VerificationMeta _idProdutoMeta = const VerificationMeta('idProduto');
  late final GeneratedColumn<int?> idProduto = GeneratedColumn<int?>(
      'id_produto', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codProdutoMeta = const VerificationMeta('codProduto');
  late final GeneratedColumn<String?> codProduto = GeneratedColumn<String?>(
      'cod_produto', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _descProdutoMeta =
      const VerificationMeta('descProduto');
  late final GeneratedColumn<String?> descProduto = GeneratedColumn<String?>(
      'desc_produto', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idProduto, codProduto, descProduto];
  @override
  String get aliasedName => _alias ?? 'produto_table';
  @override
  String get actualTableName => 'produto_table';
  @override
  VerificationContext validateIntegrity(Insertable<ProdutoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_produto')) {
      context.handle(_idProdutoMeta,
          idProduto.isAcceptableOrUnknown(data['id_produto']!, _idProdutoMeta));
    } else if (isInserting) {
      context.missing(_idProdutoMeta);
    }
    if (data.containsKey('cod_produto')) {
      context.handle(
          _codProdutoMeta,
          codProduto.isAcceptableOrUnknown(
              data['cod_produto']!, _codProdutoMeta));
    } else if (isInserting) {
      context.missing(_codProdutoMeta);
    }
    if (data.containsKey('desc_produto')) {
      context.handle(
          _descProdutoMeta,
          descProduto.isAcceptableOrUnknown(
              data['desc_produto']!, _descProdutoMeta));
    } else if (isInserting) {
      context.missing(_descProdutoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ProdutoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ProdutoTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProdutoTableTable createAlias(String alias) {
    return $ProdutoTableTable(_db, alias);
  }
}

class PropriedadeTableData extends DataClass
    implements Insertable<PropriedadeTableData> {
  final int idPropriedade;
  final String descrPropriedade;
  PropriedadeTableData(
      {required this.idPropriedade, required this.descrPropriedade});
  factory PropriedadeTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return PropriedadeTableData(
      idPropriedade: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_propriedade'])!,
      descrPropriedade: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}descr_propriedade'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_propriedade'] = Variable<int>(idPropriedade);
    map['descr_propriedade'] = Variable<String>(descrPropriedade);
    return map;
  }

  PropriedadeTableCompanion toCompanion(bool nullToAbsent) {
    return PropriedadeTableCompanion(
      idPropriedade: Value(idPropriedade),
      descrPropriedade: Value(descrPropriedade),
    );
  }

  factory PropriedadeTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return PropriedadeTableData(
      idPropriedade: serializer.fromJson<int>(json['idPropriedade']),
      descrPropriedade: serializer.fromJson<String>(json['descrPropriedade']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idPropriedade': serializer.toJson<int>(idPropriedade),
      'descrPropriedade': serializer.toJson<String>(descrPropriedade),
    };
  }

  PropriedadeTableData copyWith(
          {int? idPropriedade, String? descrPropriedade}) =>
      PropriedadeTableData(
        idPropriedade: idPropriedade ?? this.idPropriedade,
        descrPropriedade: descrPropriedade ?? this.descrPropriedade,
      );
  @override
  String toString() {
    return (StringBuffer('PropriedadeTableData(')
          ..write('idPropriedade: $idPropriedade, ')
          ..write('descrPropriedade: $descrPropriedade')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(idPropriedade.hashCode, descrPropriedade.hashCode));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PropriedadeTableData &&
          other.idPropriedade == this.idPropriedade &&
          other.descrPropriedade == this.descrPropriedade);
}

class PropriedadeTableCompanion extends UpdateCompanion<PropriedadeTableData> {
  final Value<int> idPropriedade;
  final Value<String> descrPropriedade;
  const PropriedadeTableCompanion({
    this.idPropriedade = const Value.absent(),
    this.descrPropriedade = const Value.absent(),
  });
  PropriedadeTableCompanion.insert({
    required int idPropriedade,
    required String descrPropriedade,
  })  : idPropriedade = Value(idPropriedade),
        descrPropriedade = Value(descrPropriedade);
  static Insertable<PropriedadeTableData> custom({
    Expression<int>? idPropriedade,
    Expression<String>? descrPropriedade,
  }) {
    return RawValuesInsertable({
      if (idPropriedade != null) 'id_propriedade': idPropriedade,
      if (descrPropriedade != null) 'descr_propriedade': descrPropriedade,
    });
  }

  PropriedadeTableCompanion copyWith(
      {Value<int>? idPropriedade, Value<String>? descrPropriedade}) {
    return PropriedadeTableCompanion(
      idPropriedade: idPropriedade ?? this.idPropriedade,
      descrPropriedade: descrPropriedade ?? this.descrPropriedade,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idPropriedade.present) {
      map['id_propriedade'] = Variable<int>(idPropriedade.value);
    }
    if (descrPropriedade.present) {
      map['descr_propriedade'] = Variable<String>(descrPropriedade.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PropriedadeTableCompanion(')
          ..write('idPropriedade: $idPropriedade, ')
          ..write('descrPropriedade: $descrPropriedade')
          ..write(')'))
        .toString();
  }
}

class $PropriedadeTableTable extends PropriedadeTable
    with TableInfo<$PropriedadeTableTable, PropriedadeTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $PropriedadeTableTable(this._db, [this._alias]);
  final VerificationMeta _idPropriedadeMeta =
      const VerificationMeta('idPropriedade');
  late final GeneratedColumn<int?> idPropriedade = GeneratedColumn<int?>(
      'id_propriedade', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descrPropriedadeMeta =
      const VerificationMeta('descrPropriedade');
  late final GeneratedColumn<String?> descrPropriedade =
      GeneratedColumn<String?>('descr_propriedade', aliasedName, false,
          typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idPropriedade, descrPropriedade];
  @override
  String get aliasedName => _alias ?? 'propriedade_table';
  @override
  String get actualTableName => 'propriedade_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<PropriedadeTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_propriedade')) {
      context.handle(
          _idPropriedadeMeta,
          idPropriedade.isAcceptableOrUnknown(
              data['id_propriedade']!, _idPropriedadeMeta));
    } else if (isInserting) {
      context.missing(_idPropriedadeMeta);
    }
    if (data.containsKey('descr_propriedade')) {
      context.handle(
          _descrPropriedadeMeta,
          descrPropriedade.isAcceptableOrUnknown(
              data['descr_propriedade']!, _descrPropriedadeMeta));
    } else if (isInserting) {
      context.missing(_descrPropriedadeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  PropriedadeTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return PropriedadeTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $PropriedadeTableTable createAlias(String alias) {
    return $PropriedadeTableTable(_db, alias);
  }
}

class RAtivParadaTableData extends DataClass
    implements Insertable<RAtivParadaTableData> {
  final int idRAtivParada;
  final int idAtiv;
  final int idParada;
  RAtivParadaTableData(
      {required this.idRAtivParada,
      required this.idAtiv,
      required this.idParada});
  factory RAtivParadaTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return RAtivParadaTableData(
      idRAtivParada: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_r_ativ_parada'])!,
      idAtiv: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_ativ'])!,
      idParada: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_parada'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_r_ativ_parada'] = Variable<int>(idRAtivParada);
    map['id_ativ'] = Variable<int>(idAtiv);
    map['id_parada'] = Variable<int>(idParada);
    return map;
  }

  RAtivParadaTableCompanion toCompanion(bool nullToAbsent) {
    return RAtivParadaTableCompanion(
      idRAtivParada: Value(idRAtivParada),
      idAtiv: Value(idAtiv),
      idParada: Value(idParada),
    );
  }

  factory RAtivParadaTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return RAtivParadaTableData(
      idRAtivParada: serializer.fromJson<int>(json['idRAtivParada']),
      idAtiv: serializer.fromJson<int>(json['idAtiv']),
      idParada: serializer.fromJson<int>(json['idParada']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idRAtivParada': serializer.toJson<int>(idRAtivParada),
      'idAtiv': serializer.toJson<int>(idAtiv),
      'idParada': serializer.toJson<int>(idParada),
    };
  }

  RAtivParadaTableData copyWith(
          {int? idRAtivParada, int? idAtiv, int? idParada}) =>
      RAtivParadaTableData(
        idRAtivParada: idRAtivParada ?? this.idRAtivParada,
        idAtiv: idAtiv ?? this.idAtiv,
        idParada: idParada ?? this.idParada,
      );
  @override
  String toString() {
    return (StringBuffer('RAtivParadaTableData(')
          ..write('idRAtivParada: $idRAtivParada, ')
          ..write('idAtiv: $idAtiv, ')
          ..write('idParada: $idParada')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(idRAtivParada.hashCode, $mrjc(idAtiv.hashCode, idParada.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RAtivParadaTableData &&
          other.idRAtivParada == this.idRAtivParada &&
          other.idAtiv == this.idAtiv &&
          other.idParada == this.idParada);
}

class RAtivParadaTableCompanion extends UpdateCompanion<RAtivParadaTableData> {
  final Value<int> idRAtivParada;
  final Value<int> idAtiv;
  final Value<int> idParada;
  const RAtivParadaTableCompanion({
    this.idRAtivParada = const Value.absent(),
    this.idAtiv = const Value.absent(),
    this.idParada = const Value.absent(),
  });
  RAtivParadaTableCompanion.insert({
    required int idRAtivParada,
    required int idAtiv,
    required int idParada,
  })  : idRAtivParada = Value(idRAtivParada),
        idAtiv = Value(idAtiv),
        idParada = Value(idParada);
  static Insertable<RAtivParadaTableData> custom({
    Expression<int>? idRAtivParada,
    Expression<int>? idAtiv,
    Expression<int>? idParada,
  }) {
    return RawValuesInsertable({
      if (idRAtivParada != null) 'id_r_ativ_parada': idRAtivParada,
      if (idAtiv != null) 'id_ativ': idAtiv,
      if (idParada != null) 'id_parada': idParada,
    });
  }

  RAtivParadaTableCompanion copyWith(
      {Value<int>? idRAtivParada, Value<int>? idAtiv, Value<int>? idParada}) {
    return RAtivParadaTableCompanion(
      idRAtivParada: idRAtivParada ?? this.idRAtivParada,
      idAtiv: idAtiv ?? this.idAtiv,
      idParada: idParada ?? this.idParada,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idRAtivParada.present) {
      map['id_r_ativ_parada'] = Variable<int>(idRAtivParada.value);
    }
    if (idAtiv.present) {
      map['id_ativ'] = Variable<int>(idAtiv.value);
    }
    if (idParada.present) {
      map['id_parada'] = Variable<int>(idParada.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RAtivParadaTableCompanion(')
          ..write('idRAtivParada: $idRAtivParada, ')
          ..write('idAtiv: $idAtiv, ')
          ..write('idParada: $idParada')
          ..write(')'))
        .toString();
  }
}

class $RAtivParadaTableTable extends RAtivParadaTable
    with TableInfo<$RAtivParadaTableTable, RAtivParadaTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $RAtivParadaTableTable(this._db, [this._alias]);
  final VerificationMeta _idRAtivParadaMeta =
      const VerificationMeta('idRAtivParada');
  late final GeneratedColumn<int?> idRAtivParada = GeneratedColumn<int?>(
      'id_r_ativ_parada', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idAtivMeta = const VerificationMeta('idAtiv');
  late final GeneratedColumn<int?> idAtiv = GeneratedColumn<int?>(
      'id_ativ', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idParadaMeta = const VerificationMeta('idParada');
  late final GeneratedColumn<int?> idParada = GeneratedColumn<int?>(
      'id_parada', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idRAtivParada, idAtiv, idParada];
  @override
  String get aliasedName => _alias ?? 'r_ativ_parada_table';
  @override
  String get actualTableName => 'r_ativ_parada_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<RAtivParadaTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_r_ativ_parada')) {
      context.handle(
          _idRAtivParadaMeta,
          idRAtivParada.isAcceptableOrUnknown(
              data['id_r_ativ_parada']!, _idRAtivParadaMeta));
    } else if (isInserting) {
      context.missing(_idRAtivParadaMeta);
    }
    if (data.containsKey('id_ativ')) {
      context.handle(_idAtivMeta,
          idAtiv.isAcceptableOrUnknown(data['id_ativ']!, _idAtivMeta));
    } else if (isInserting) {
      context.missing(_idAtivMeta);
    }
    if (data.containsKey('id_parada')) {
      context.handle(_idParadaMeta,
          idParada.isAcceptableOrUnknown(data['id_parada']!, _idParadaMeta));
    } else if (isInserting) {
      context.missing(_idParadaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  RAtivParadaTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return RAtivParadaTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RAtivParadaTableTable createAlias(String alias) {
    return $RAtivParadaTableTable(_db, alias);
  }
}

class REquipAtivTableData extends DataClass
    implements Insertable<REquipAtivTableData> {
  final int idREquipAtiv;
  final int idEquip;
  final int idAtiv;
  REquipAtivTableData(
      {required this.idREquipAtiv,
      required this.idEquip,
      required this.idAtiv});
  factory REquipAtivTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return REquipAtivTableData(
      idREquipAtiv: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_r_equip_ativ'])!,
      idEquip: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_equip'])!,
      idAtiv: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_ativ'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_r_equip_ativ'] = Variable<int>(idREquipAtiv);
    map['id_equip'] = Variable<int>(idEquip);
    map['id_ativ'] = Variable<int>(idAtiv);
    return map;
  }

  REquipAtivTableCompanion toCompanion(bool nullToAbsent) {
    return REquipAtivTableCompanion(
      idREquipAtiv: Value(idREquipAtiv),
      idEquip: Value(idEquip),
      idAtiv: Value(idAtiv),
    );
  }

  factory REquipAtivTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return REquipAtivTableData(
      idREquipAtiv: serializer.fromJson<int>(json['idREquipAtiv']),
      idEquip: serializer.fromJson<int>(json['idEquip']),
      idAtiv: serializer.fromJson<int>(json['idAtiv']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idREquipAtiv': serializer.toJson<int>(idREquipAtiv),
      'idEquip': serializer.toJson<int>(idEquip),
      'idAtiv': serializer.toJson<int>(idAtiv),
    };
  }

  REquipAtivTableData copyWith(
          {int? idREquipAtiv, int? idEquip, int? idAtiv}) =>
      REquipAtivTableData(
        idREquipAtiv: idREquipAtiv ?? this.idREquipAtiv,
        idEquip: idEquip ?? this.idEquip,
        idAtiv: idAtiv ?? this.idAtiv,
      );
  @override
  String toString() {
    return (StringBuffer('REquipAtivTableData(')
          ..write('idREquipAtiv: $idREquipAtiv, ')
          ..write('idEquip: $idEquip, ')
          ..write('idAtiv: $idAtiv')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(
      $mrjc(idREquipAtiv.hashCode, $mrjc(idEquip.hashCode, idAtiv.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is REquipAtivTableData &&
          other.idREquipAtiv == this.idREquipAtiv &&
          other.idEquip == this.idEquip &&
          other.idAtiv == this.idAtiv);
}

class REquipAtivTableCompanion extends UpdateCompanion<REquipAtivTableData> {
  final Value<int> idREquipAtiv;
  final Value<int> idEquip;
  final Value<int> idAtiv;
  const REquipAtivTableCompanion({
    this.idREquipAtiv = const Value.absent(),
    this.idEquip = const Value.absent(),
    this.idAtiv = const Value.absent(),
  });
  REquipAtivTableCompanion.insert({
    required int idREquipAtiv,
    required int idEquip,
    required int idAtiv,
  })  : idREquipAtiv = Value(idREquipAtiv),
        idEquip = Value(idEquip),
        idAtiv = Value(idAtiv);
  static Insertable<REquipAtivTableData> custom({
    Expression<int>? idREquipAtiv,
    Expression<int>? idEquip,
    Expression<int>? idAtiv,
  }) {
    return RawValuesInsertable({
      if (idREquipAtiv != null) 'id_r_equip_ativ': idREquipAtiv,
      if (idEquip != null) 'id_equip': idEquip,
      if (idAtiv != null) 'id_ativ': idAtiv,
    });
  }

  REquipAtivTableCompanion copyWith(
      {Value<int>? idREquipAtiv, Value<int>? idEquip, Value<int>? idAtiv}) {
    return REquipAtivTableCompanion(
      idREquipAtiv: idREquipAtiv ?? this.idREquipAtiv,
      idEquip: idEquip ?? this.idEquip,
      idAtiv: idAtiv ?? this.idAtiv,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idREquipAtiv.present) {
      map['id_r_equip_ativ'] = Variable<int>(idREquipAtiv.value);
    }
    if (idEquip.present) {
      map['id_equip'] = Variable<int>(idEquip.value);
    }
    if (idAtiv.present) {
      map['id_ativ'] = Variable<int>(idAtiv.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('REquipAtivTableCompanion(')
          ..write('idREquipAtiv: $idREquipAtiv, ')
          ..write('idEquip: $idEquip, ')
          ..write('idAtiv: $idAtiv')
          ..write(')'))
        .toString();
  }
}

class $REquipAtivTableTable extends REquipAtivTable
    with TableInfo<$REquipAtivTableTable, REquipAtivTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $REquipAtivTableTable(this._db, [this._alias]);
  final VerificationMeta _idREquipAtivMeta =
      const VerificationMeta('idREquipAtiv');
  late final GeneratedColumn<int?> idREquipAtiv = GeneratedColumn<int?>(
      'id_r_equip_ativ', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idEquipMeta = const VerificationMeta('idEquip');
  late final GeneratedColumn<int?> idEquip = GeneratedColumn<int?>(
      'id_equip', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idAtivMeta = const VerificationMeta('idAtiv');
  late final GeneratedColumn<int?> idAtiv = GeneratedColumn<int?>(
      'id_ativ', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idREquipAtiv, idEquip, idAtiv];
  @override
  String get aliasedName => _alias ?? 'r_equip_ativ_table';
  @override
  String get actualTableName => 'r_equip_ativ_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<REquipAtivTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_r_equip_ativ')) {
      context.handle(
          _idREquipAtivMeta,
          idREquipAtiv.isAcceptableOrUnknown(
              data['id_r_equip_ativ']!, _idREquipAtivMeta));
    } else if (isInserting) {
      context.missing(_idREquipAtivMeta);
    }
    if (data.containsKey('id_equip')) {
      context.handle(_idEquipMeta,
          idEquip.isAcceptableOrUnknown(data['id_equip']!, _idEquipMeta));
    } else if (isInserting) {
      context.missing(_idEquipMeta);
    }
    if (data.containsKey('id_ativ')) {
      context.handle(_idAtivMeta,
          idAtiv.isAcceptableOrUnknown(data['id_ativ']!, _idAtivMeta));
    } else if (isInserting) {
      context.missing(_idAtivMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  REquipAtivTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return REquipAtivTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $REquipAtivTableTable createAlias(String alias) {
    return $REquipAtivTableTable(_db, alias);
  }
}

class RFuncaoAtivParadaTableData extends DataClass
    implements Insertable<RFuncaoAtivParadaTableData> {
  final int idRFuncaoAtivParada;
  final int idAtivParada;
  final int codFuncao;
  final int tipoFuncao;
  RFuncaoAtivParadaTableData(
      {required this.idRFuncaoAtivParada,
      required this.idAtivParada,
      required this.codFuncao,
      required this.tipoFuncao});
  factory RFuncaoAtivParadaTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return RFuncaoAtivParadaTableData(
      idRFuncaoAtivParada: const IntType().mapFromDatabaseResponse(
          data['${effectivePrefix}id_r_funcao_ativ_parada'])!,
      idAtivParada: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_ativ_parada'])!,
      codFuncao: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_funcao'])!,
      tipoFuncao: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tipo_funcao'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_r_funcao_ativ_parada'] = Variable<int>(idRFuncaoAtivParada);
    map['id_ativ_parada'] = Variable<int>(idAtivParada);
    map['cod_funcao'] = Variable<int>(codFuncao);
    map['tipo_funcao'] = Variable<int>(tipoFuncao);
    return map;
  }

  RFuncaoAtivParadaTableCompanion toCompanion(bool nullToAbsent) {
    return RFuncaoAtivParadaTableCompanion(
      idRFuncaoAtivParada: Value(idRFuncaoAtivParada),
      idAtivParada: Value(idAtivParada),
      codFuncao: Value(codFuncao),
      tipoFuncao: Value(tipoFuncao),
    );
  }

  factory RFuncaoAtivParadaTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return RFuncaoAtivParadaTableData(
      idRFuncaoAtivParada:
          serializer.fromJson<int>(json['idRFuncaoAtivParada']),
      idAtivParada: serializer.fromJson<int>(json['idAtivParada']),
      codFuncao: serializer.fromJson<int>(json['codFuncao']),
      tipoFuncao: serializer.fromJson<int>(json['tipoFuncao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idRFuncaoAtivParada': serializer.toJson<int>(idRFuncaoAtivParada),
      'idAtivParada': serializer.toJson<int>(idAtivParada),
      'codFuncao': serializer.toJson<int>(codFuncao),
      'tipoFuncao': serializer.toJson<int>(tipoFuncao),
    };
  }

  RFuncaoAtivParadaTableData copyWith(
          {int? idRFuncaoAtivParada,
          int? idAtivParada,
          int? codFuncao,
          int? tipoFuncao}) =>
      RFuncaoAtivParadaTableData(
        idRFuncaoAtivParada: idRFuncaoAtivParada ?? this.idRFuncaoAtivParada,
        idAtivParada: idAtivParada ?? this.idAtivParada,
        codFuncao: codFuncao ?? this.codFuncao,
        tipoFuncao: tipoFuncao ?? this.tipoFuncao,
      );
  @override
  String toString() {
    return (StringBuffer('RFuncaoAtivParadaTableData(')
          ..write('idRFuncaoAtivParada: $idRFuncaoAtivParada, ')
          ..write('idAtivParada: $idAtivParada, ')
          ..write('codFuncao: $codFuncao, ')
          ..write('tipoFuncao: $tipoFuncao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      idRFuncaoAtivParada.hashCode,
      $mrjc(idAtivParada.hashCode,
          $mrjc(codFuncao.hashCode, tipoFuncao.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RFuncaoAtivParadaTableData &&
          other.idRFuncaoAtivParada == this.idRFuncaoAtivParada &&
          other.idAtivParada == this.idAtivParada &&
          other.codFuncao == this.codFuncao &&
          other.tipoFuncao == this.tipoFuncao);
}

class RFuncaoAtivParadaTableCompanion
    extends UpdateCompanion<RFuncaoAtivParadaTableData> {
  final Value<int> idRFuncaoAtivParada;
  final Value<int> idAtivParada;
  final Value<int> codFuncao;
  final Value<int> tipoFuncao;
  const RFuncaoAtivParadaTableCompanion({
    this.idRFuncaoAtivParada = const Value.absent(),
    this.idAtivParada = const Value.absent(),
    this.codFuncao = const Value.absent(),
    this.tipoFuncao = const Value.absent(),
  });
  RFuncaoAtivParadaTableCompanion.insert({
    required int idRFuncaoAtivParada,
    required int idAtivParada,
    required int codFuncao,
    required int tipoFuncao,
  })  : idRFuncaoAtivParada = Value(idRFuncaoAtivParada),
        idAtivParada = Value(idAtivParada),
        codFuncao = Value(codFuncao),
        tipoFuncao = Value(tipoFuncao);
  static Insertable<RFuncaoAtivParadaTableData> custom({
    Expression<int>? idRFuncaoAtivParada,
    Expression<int>? idAtivParada,
    Expression<int>? codFuncao,
    Expression<int>? tipoFuncao,
  }) {
    return RawValuesInsertable({
      if (idRFuncaoAtivParada != null)
        'id_r_funcao_ativ_parada': idRFuncaoAtivParada,
      if (idAtivParada != null) 'id_ativ_parada': idAtivParada,
      if (codFuncao != null) 'cod_funcao': codFuncao,
      if (tipoFuncao != null) 'tipo_funcao': tipoFuncao,
    });
  }

  RFuncaoAtivParadaTableCompanion copyWith(
      {Value<int>? idRFuncaoAtivParada,
      Value<int>? idAtivParada,
      Value<int>? codFuncao,
      Value<int>? tipoFuncao}) {
    return RFuncaoAtivParadaTableCompanion(
      idRFuncaoAtivParada: idRFuncaoAtivParada ?? this.idRFuncaoAtivParada,
      idAtivParada: idAtivParada ?? this.idAtivParada,
      codFuncao: codFuncao ?? this.codFuncao,
      tipoFuncao: tipoFuncao ?? this.tipoFuncao,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idRFuncaoAtivParada.present) {
      map['id_r_funcao_ativ_parada'] = Variable<int>(idRFuncaoAtivParada.value);
    }
    if (idAtivParada.present) {
      map['id_ativ_parada'] = Variable<int>(idAtivParada.value);
    }
    if (codFuncao.present) {
      map['cod_funcao'] = Variable<int>(codFuncao.value);
    }
    if (tipoFuncao.present) {
      map['tipo_funcao'] = Variable<int>(tipoFuncao.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RFuncaoAtivParadaTableCompanion(')
          ..write('idRFuncaoAtivParada: $idRFuncaoAtivParada, ')
          ..write('idAtivParada: $idAtivParada, ')
          ..write('codFuncao: $codFuncao, ')
          ..write('tipoFuncao: $tipoFuncao')
          ..write(')'))
        .toString();
  }
}

class $RFuncaoAtivParadaTableTable extends RFuncaoAtivParadaTable
    with TableInfo<$RFuncaoAtivParadaTableTable, RFuncaoAtivParadaTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $RFuncaoAtivParadaTableTable(this._db, [this._alias]);
  final VerificationMeta _idRFuncaoAtivParadaMeta =
      const VerificationMeta('idRFuncaoAtivParada');
  late final GeneratedColumn<int?> idRFuncaoAtivParada = GeneratedColumn<int?>(
      'id_r_funcao_ativ_parada', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idAtivParadaMeta =
      const VerificationMeta('idAtivParada');
  late final GeneratedColumn<int?> idAtivParada = GeneratedColumn<int?>(
      'id_ativ_parada', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codFuncaoMeta = const VerificationMeta('codFuncao');
  late final GeneratedColumn<int?> codFuncao = GeneratedColumn<int?>(
      'cod_funcao', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _tipoFuncaoMeta = const VerificationMeta('tipoFuncao');
  late final GeneratedColumn<int?> tipoFuncao = GeneratedColumn<int?>(
      'tipo_funcao', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [idRFuncaoAtivParada, idAtivParada, codFuncao, tipoFuncao];
  @override
  String get aliasedName => _alias ?? 'r_funcao_ativ_parada_table';
  @override
  String get actualTableName => 'r_funcao_ativ_parada_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<RFuncaoAtivParadaTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_r_funcao_ativ_parada')) {
      context.handle(
          _idRFuncaoAtivParadaMeta,
          idRFuncaoAtivParada.isAcceptableOrUnknown(
              data['id_r_funcao_ativ_parada']!, _idRFuncaoAtivParadaMeta));
    } else if (isInserting) {
      context.missing(_idRFuncaoAtivParadaMeta);
    }
    if (data.containsKey('id_ativ_parada')) {
      context.handle(
          _idAtivParadaMeta,
          idAtivParada.isAcceptableOrUnknown(
              data['id_ativ_parada']!, _idAtivParadaMeta));
    } else if (isInserting) {
      context.missing(_idAtivParadaMeta);
    }
    if (data.containsKey('cod_funcao')) {
      context.handle(_codFuncaoMeta,
          codFuncao.isAcceptableOrUnknown(data['cod_funcao']!, _codFuncaoMeta));
    } else if (isInserting) {
      context.missing(_codFuncaoMeta);
    }
    if (data.containsKey('tipo_funcao')) {
      context.handle(
          _tipoFuncaoMeta,
          tipoFuncao.isAcceptableOrUnknown(
              data['tipo_funcao']!, _tipoFuncaoMeta));
    } else if (isInserting) {
      context.missing(_tipoFuncaoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  RFuncaoAtivParadaTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    return RFuncaoAtivParadaTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $RFuncaoAtivParadaTableTable createAlias(String alias) {
    return $RFuncaoAtivParadaTableTable(_db, alias);
  }
}

class ROSAtivTableData extends DataClass
    implements Insertable<ROSAtivTableData> {
  final int idROSAtiv;
  final int nroOS;
  final int idAtiv;
  ROSAtivTableData(
      {required this.idROSAtiv, required this.nroOS, required this.idAtiv});
  factory ROSAtivTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return ROSAtivTableData(
      idROSAtiv: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_r_o_s_ativ'])!,
      nroOS: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nro_o_s'])!,
      idAtiv: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_ativ'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_r_o_s_ativ'] = Variable<int>(idROSAtiv);
    map['nro_o_s'] = Variable<int>(nroOS);
    map['id_ativ'] = Variable<int>(idAtiv);
    return map;
  }

  ROSAtivTableCompanion toCompanion(bool nullToAbsent) {
    return ROSAtivTableCompanion(
      idROSAtiv: Value(idROSAtiv),
      nroOS: Value(nroOS),
      idAtiv: Value(idAtiv),
    );
  }

  factory ROSAtivTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ROSAtivTableData(
      idROSAtiv: serializer.fromJson<int>(json['idROSAtiv']),
      nroOS: serializer.fromJson<int>(json['nroOS']),
      idAtiv: serializer.fromJson<int>(json['idAtiv']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idROSAtiv': serializer.toJson<int>(idROSAtiv),
      'nroOS': serializer.toJson<int>(nroOS),
      'idAtiv': serializer.toJson<int>(idAtiv),
    };
  }

  ROSAtivTableData copyWith({int? idROSAtiv, int? nroOS, int? idAtiv}) =>
      ROSAtivTableData(
        idROSAtiv: idROSAtiv ?? this.idROSAtiv,
        nroOS: nroOS ?? this.nroOS,
        idAtiv: idAtiv ?? this.idAtiv,
      );
  @override
  String toString() {
    return (StringBuffer('ROSAtivTableData(')
          ..write('idROSAtiv: $idROSAtiv, ')
          ..write('nroOS: $nroOS, ')
          ..write('idAtiv: $idAtiv')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(idROSAtiv.hashCode, $mrjc(nroOS.hashCode, idAtiv.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ROSAtivTableData &&
          other.idROSAtiv == this.idROSAtiv &&
          other.nroOS == this.nroOS &&
          other.idAtiv == this.idAtiv);
}

class ROSAtivTableCompanion extends UpdateCompanion<ROSAtivTableData> {
  final Value<int> idROSAtiv;
  final Value<int> nroOS;
  final Value<int> idAtiv;
  const ROSAtivTableCompanion({
    this.idROSAtiv = const Value.absent(),
    this.nroOS = const Value.absent(),
    this.idAtiv = const Value.absent(),
  });
  ROSAtivTableCompanion.insert({
    required int idROSAtiv,
    required int nroOS,
    required int idAtiv,
  })  : idROSAtiv = Value(idROSAtiv),
        nroOS = Value(nroOS),
        idAtiv = Value(idAtiv);
  static Insertable<ROSAtivTableData> custom({
    Expression<int>? idROSAtiv,
    Expression<int>? nroOS,
    Expression<int>? idAtiv,
  }) {
    return RawValuesInsertable({
      if (idROSAtiv != null) 'id_r_o_s_ativ': idROSAtiv,
      if (nroOS != null) 'nro_o_s': nroOS,
      if (idAtiv != null) 'id_ativ': idAtiv,
    });
  }

  ROSAtivTableCompanion copyWith(
      {Value<int>? idROSAtiv, Value<int>? nroOS, Value<int>? idAtiv}) {
    return ROSAtivTableCompanion(
      idROSAtiv: idROSAtiv ?? this.idROSAtiv,
      nroOS: nroOS ?? this.nroOS,
      idAtiv: idAtiv ?? this.idAtiv,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idROSAtiv.present) {
      map['id_r_o_s_ativ'] = Variable<int>(idROSAtiv.value);
    }
    if (nroOS.present) {
      map['nro_o_s'] = Variable<int>(nroOS.value);
    }
    if (idAtiv.present) {
      map['id_ativ'] = Variable<int>(idAtiv.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ROSAtivTableCompanion(')
          ..write('idROSAtiv: $idROSAtiv, ')
          ..write('nroOS: $nroOS, ')
          ..write('idAtiv: $idAtiv')
          ..write(')'))
        .toString();
  }
}

class $ROSAtivTableTable extends ROSAtivTable
    with TableInfo<$ROSAtivTableTable, ROSAtivTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ROSAtivTableTable(this._db, [this._alias]);
  final VerificationMeta _idROSAtivMeta = const VerificationMeta('idROSAtiv');
  late final GeneratedColumn<int?> idROSAtiv = GeneratedColumn<int?>(
      'id_r_o_s_ativ', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _nroOSMeta = const VerificationMeta('nroOS');
  late final GeneratedColumn<int?> nroOS = GeneratedColumn<int?>(
      'nro_o_s', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _idAtivMeta = const VerificationMeta('idAtiv');
  late final GeneratedColumn<int?> idAtiv = GeneratedColumn<int?>(
      'id_ativ', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [idROSAtiv, nroOS, idAtiv];
  @override
  String get aliasedName => _alias ?? 'r_o_s_ativ_table';
  @override
  String get actualTableName => 'r_o_s_ativ_table';
  @override
  VerificationContext validateIntegrity(Insertable<ROSAtivTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_r_o_s_ativ')) {
      context.handle(
          _idROSAtivMeta,
          idROSAtiv.isAcceptableOrUnknown(
              data['id_r_o_s_ativ']!, _idROSAtivMeta));
    } else if (isInserting) {
      context.missing(_idROSAtivMeta);
    }
    if (data.containsKey('nro_o_s')) {
      context.handle(_nroOSMeta,
          nroOS.isAcceptableOrUnknown(data['nro_o_s']!, _nroOSMeta));
    } else if (isInserting) {
      context.missing(_nroOSMeta);
    }
    if (data.containsKey('id_ativ')) {
      context.handle(_idAtivMeta,
          idAtiv.isAcceptableOrUnknown(data['id_ativ']!, _idAtivMeta));
    } else if (isInserting) {
      context.missing(_idAtivMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  ROSAtivTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return ROSAtivTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ROSAtivTableTable createAlias(String alias) {
    return $ROSAtivTableTable(_db, alias);
  }
}

class TurnoTableData extends DataClass implements Insertable<TurnoTableData> {
  final int idTurno;
  final int codTurno;
  final int nroTurno;
  final String descTurno;
  TurnoTableData(
      {required this.idTurno,
      required this.codTurno,
      required this.nroTurno,
      required this.descTurno});
  factory TurnoTableData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return TurnoTableData(
      idTurno: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id_turno'])!,
      codTurno: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}cod_turno'])!,
      nroTurno: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}nro_turno'])!,
      descTurno: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}desc_turno'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id_turno'] = Variable<int>(idTurno);
    map['cod_turno'] = Variable<int>(codTurno);
    map['nro_turno'] = Variable<int>(nroTurno);
    map['desc_turno'] = Variable<String>(descTurno);
    return map;
  }

  TurnoTableCompanion toCompanion(bool nullToAbsent) {
    return TurnoTableCompanion(
      idTurno: Value(idTurno),
      codTurno: Value(codTurno),
      nroTurno: Value(nroTurno),
      descTurno: Value(descTurno),
    );
  }

  factory TurnoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TurnoTableData(
      idTurno: serializer.fromJson<int>(json['idTurno']),
      codTurno: serializer.fromJson<int>(json['codTurno']),
      nroTurno: serializer.fromJson<int>(json['nroTurno']),
      descTurno: serializer.fromJson<String>(json['descTurno']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idTurno': serializer.toJson<int>(idTurno),
      'codTurno': serializer.toJson<int>(codTurno),
      'nroTurno': serializer.toJson<int>(nroTurno),
      'descTurno': serializer.toJson<String>(descTurno),
    };
  }

  TurnoTableData copyWith(
          {int? idTurno, int? codTurno, int? nroTurno, String? descTurno}) =>
      TurnoTableData(
        idTurno: idTurno ?? this.idTurno,
        codTurno: codTurno ?? this.codTurno,
        nroTurno: nroTurno ?? this.nroTurno,
        descTurno: descTurno ?? this.descTurno,
      );
  @override
  String toString() {
    return (StringBuffer('TurnoTableData(')
          ..write('idTurno: $idTurno, ')
          ..write('codTurno: $codTurno, ')
          ..write('nroTurno: $nroTurno, ')
          ..write('descTurno: $descTurno')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(idTurno.hashCode,
      $mrjc(codTurno.hashCode, $mrjc(nroTurno.hashCode, descTurno.hashCode))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TurnoTableData &&
          other.idTurno == this.idTurno &&
          other.codTurno == this.codTurno &&
          other.nroTurno == this.nroTurno &&
          other.descTurno == this.descTurno);
}

class TurnoTableCompanion extends UpdateCompanion<TurnoTableData> {
  final Value<int> idTurno;
  final Value<int> codTurno;
  final Value<int> nroTurno;
  final Value<String> descTurno;
  const TurnoTableCompanion({
    this.idTurno = const Value.absent(),
    this.codTurno = const Value.absent(),
    this.nroTurno = const Value.absent(),
    this.descTurno = const Value.absent(),
  });
  TurnoTableCompanion.insert({
    required int idTurno,
    required int codTurno,
    required int nroTurno,
    required String descTurno,
  })  : idTurno = Value(idTurno),
        codTurno = Value(codTurno),
        nroTurno = Value(nroTurno),
        descTurno = Value(descTurno);
  static Insertable<TurnoTableData> custom({
    Expression<int>? idTurno,
    Expression<int>? codTurno,
    Expression<int>? nroTurno,
    Expression<String>? descTurno,
  }) {
    return RawValuesInsertable({
      if (idTurno != null) 'id_turno': idTurno,
      if (codTurno != null) 'cod_turno': codTurno,
      if (nroTurno != null) 'nro_turno': nroTurno,
      if (descTurno != null) 'desc_turno': descTurno,
    });
  }

  TurnoTableCompanion copyWith(
      {Value<int>? idTurno,
      Value<int>? codTurno,
      Value<int>? nroTurno,
      Value<String>? descTurno}) {
    return TurnoTableCompanion(
      idTurno: idTurno ?? this.idTurno,
      codTurno: codTurno ?? this.codTurno,
      nroTurno: nroTurno ?? this.nroTurno,
      descTurno: descTurno ?? this.descTurno,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idTurno.present) {
      map['id_turno'] = Variable<int>(idTurno.value);
    }
    if (codTurno.present) {
      map['cod_turno'] = Variable<int>(codTurno.value);
    }
    if (nroTurno.present) {
      map['nro_turno'] = Variable<int>(nroTurno.value);
    }
    if (descTurno.present) {
      map['desc_turno'] = Variable<String>(descTurno.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TurnoTableCompanion(')
          ..write('idTurno: $idTurno, ')
          ..write('codTurno: $codTurno, ')
          ..write('nroTurno: $nroTurno, ')
          ..write('descTurno: $descTurno')
          ..write(')'))
        .toString();
  }
}

class $TurnoTableTable extends TurnoTable
    with TableInfo<$TurnoTableTable, TurnoTableData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $TurnoTableTable(this._db, [this._alias]);
  final VerificationMeta _idTurnoMeta = const VerificationMeta('idTurno');
  late final GeneratedColumn<int?> idTurno = GeneratedColumn<int?>(
      'id_turno', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _codTurnoMeta = const VerificationMeta('codTurno');
  late final GeneratedColumn<int?> codTurno = GeneratedColumn<int?>(
      'cod_turno', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _nroTurnoMeta = const VerificationMeta('nroTurno');
  late final GeneratedColumn<int?> nroTurno = GeneratedColumn<int?>(
      'nro_turno', aliasedName, false,
      typeName: 'INTEGER', requiredDuringInsert: true);
  final VerificationMeta _descTurnoMeta = const VerificationMeta('descTurno');
  late final GeneratedColumn<String?> descTurno = GeneratedColumn<String?>(
      'desc_turno', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [idTurno, codTurno, nroTurno, descTurno];
  @override
  String get aliasedName => _alias ?? 'turno_table';
  @override
  String get actualTableName => 'turno_table';
  @override
  VerificationContext validateIntegrity(Insertable<TurnoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_turno')) {
      context.handle(_idTurnoMeta,
          idTurno.isAcceptableOrUnknown(data['id_turno']!, _idTurnoMeta));
    } else if (isInserting) {
      context.missing(_idTurnoMeta);
    }
    if (data.containsKey('cod_turno')) {
      context.handle(_codTurnoMeta,
          codTurno.isAcceptableOrUnknown(data['cod_turno']!, _codTurnoMeta));
    } else if (isInserting) {
      context.missing(_codTurnoMeta);
    }
    if (data.containsKey('nro_turno')) {
      context.handle(_nroTurnoMeta,
          nroTurno.isAcceptableOrUnknown(data['nro_turno']!, _nroTurnoMeta));
    } else if (isInserting) {
      context.missing(_nroTurnoMeta);
    }
    if (data.containsKey('desc_turno')) {
      context.handle(_descTurnoMeta,
          descTurno.isAcceptableOrUnknown(data['desc_turno']!, _descTurnoMeta));
    } else if (isInserting) {
      context.missing(_descTurnoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  TurnoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return TurnoTableData.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TurnoTableTable createAlias(String alias) {
    return $TurnoTableTable(_db, alias);
  }
}

abstract class _$DataBase extends GeneratedDatabase {
  _$DataBase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $AtividadeTableTable atividadeTable = $AtividadeTableTable(this);
  late final $BocalTableTable bocalTable = $BocalTableTable(this);
  late final $ConfigTableTable configTable = $ConfigTableTable(this);
  late final $EquipSegTableTable equipSegTable = $EquipSegTableTable(this);
  late final $EquipTableTable equipTable = $EquipTableTable(this);
  late final $FrenteTableTable frenteTable = $FrenteTableTable(this);
  late final $FuncionarioTableTable funcionarioTable =
      $FuncionarioTableTable(this);
  late final $ItemCheckListTableTable itemCheckListTable =
      $ItemCheckListTableTable(this);
  late final $LeiraTableTable leiraTable = $LeiraTableTable(this);
  late final $OperMotoMecTableTable operMotoMecTable =
      $OperMotoMecTableTable(this);
  late final $OSTableTable oSTable = $OSTableTable(this);
  late final $ParadaTableTable paradaTable = $ParadaTableTable(this);
  late final $PressaoBocalTableTable pressaoBocalTable =
      $PressaoBocalTableTable(this);
  late final $ProdutoTableTable produtoTable = $ProdutoTableTable(this);
  late final $PropriedadeTableTable propriedadeTable =
      $PropriedadeTableTable(this);
  late final $RAtivParadaTableTable rAtivParadaTable =
      $RAtivParadaTableTable(this);
  late final $REquipAtivTableTable rEquipAtivTable =
      $REquipAtivTableTable(this);
  late final $RFuncaoAtivParadaTableTable rFuncaoAtivParadaTable =
      $RFuncaoAtivParadaTableTable(this);
  late final $ROSAtivTableTable rOSAtivTable = $ROSAtivTableTable(this);
  late final $TurnoTableTable turnoTable = $TurnoTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        atividadeTable,
        bocalTable,
        configTable,
        equipSegTable,
        equipTable,
        frenteTable,
        funcionarioTable,
        itemCheckListTable,
        leiraTable,
        operMotoMecTable,
        oSTable,
        paradaTable,
        pressaoBocalTable,
        produtoTable,
        propriedadeTable,
        rAtivParadaTable,
        rEquipAtivTable,
        rFuncaoAtivParadaTable,
        rOSAtivTable,
        turnoTable
      ];
}
