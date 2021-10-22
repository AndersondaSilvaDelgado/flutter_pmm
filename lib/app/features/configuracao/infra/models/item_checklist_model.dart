import 'dart:convert';

import 'package:flutter_pmm/app/features/configuracao/domain/entities/item_checklist.dart';
import 'package:flutter_pmm/app/shared/database/database.dart';

class ItemCheckListModel extends ItemCheckList {
  ItemCheckListModel({
    idItemCheckList,
    idCheckList,
    descrItemCheckList,
  }) : super(
          idItemCheckList: idItemCheckList,
          idCheckList: idCheckList,
          descrItemCheckList: descrItemCheckList,
        );

  ItemCheckListTableData itemCheckListTableData() => ItemCheckListTableData(
        idItemCheckList: idItemCheckList,
        idCheckList: idCheckList,
        descrItemCheckList: descrItemCheckList,
      );

  Map<String, dynamic> toMap() {
    return {
      'idItemCheckList': idItemCheckList,
      'idCheckList': idCheckList,
      'descrItemCheckList': descrItemCheckList,
    };
  }

  factory ItemCheckListModel.fromMap(Map<String, dynamic> map) {
    return ItemCheckListModel(
      idItemCheckList: map['idItemCheckList'],
      idCheckList: map['idCheckList'],
      descrItemCheckList: map['descrItemCheckList'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemCheckListModel.fromJson(String source) =>
      ItemCheckListModel.fromMap(json.decode(source));
}
