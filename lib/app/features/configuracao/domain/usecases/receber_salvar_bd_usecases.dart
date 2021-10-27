import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/atividade_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/bocal_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/equip_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/equip_seg_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/frente_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/func_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/item_checklist_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/leira_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/oper_motomec_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/os_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/parada_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/pressao_bocal_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/produto_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/propriedade_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/r_ativ_parada_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/r_equip_ativ_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/r_funcao_ativ_parada_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/r_os_ativ_repository.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/turno_repository.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'receber_salvar_bd_usecases.g.dart';

mixin ReceberSalvarBDUsecases {
  Future<Either<Failure, bool>> call();
}

@Injectable(singleton: false)
class ReceberSalvarBDUsecasesImpl {
  final AtividadeRepositoryImpl atividadeRepository;
  final BocalRepositoryImpl bocalRepository;
  final EquipRepositoryImpl equipRepository;
  final EquipSegRepositoryImpl equipSegRepository;
  final FrenteRepositoryImpl frenteRepository;
  final FuncRepositoryImpl funcRepository;
  final ItemCheckListRepositoryImpl itemCheckListRepository;
  final LeiraRepositoryImpl leiraRepository;
  final OperMotoMecRepositoryImpl operMotoMecRepository;
  final OSRepositoryImpl osRepository;
  final ParadaRepositoryImpl paradaRepository;
  final PressaoBocalRepositoryImpl pressaoBocalRepository;
  final ProdutoRepositoryImpl produtoRepository;
  final PropriedadeRepositoryImpl propriedadeRepository;
  final RAtivParadaRepositoryImpl rAtivParadaRepository;
  final REquipAtivRepositoryImpl rEquipAtivRepository;
  final RFuncaoAtivParadaRepositoryImpl rFuncaoAtivParadaRepository;
  final ROSAtivRepositoryImpl rOSAtivRepository;
  final TurnoRepositoryImpl turnoRepository;

  ReceberSalvarBDUsecasesImpl(
    this.atividadeRepository,
    this.bocalRepository,
    this.equipRepository,
    this.equipSegRepository,
    this.frenteRepository,
    this.funcRepository,
    this.itemCheckListRepository,
    this.leiraRepository,
    this.operMotoMecRepository,
    this.osRepository,
    this.paradaRepository,
    this.pressaoBocalRepository,
    this.produtoRepository,
    this.propriedadeRepository,
    this.rAtivParadaRepository,
    this.rEquipAtivRepository,
    this.rFuncaoAtivParadaRepository,
    this.rOSAtivRepository,
    this.turnoRepository,
  );

  Future<Either<Failure, bool>> receberSalvarBD() async {
    var res = await receberSalvarAtividade();
    if (res.isLeft()) {
      return left(ErrorFinalWebBD());
    } else {
      res = await receberSalvarBocal();
      if (res.isLeft()) {
        return left(ErrorFinalWebBD());
      } else {
        res = await receberSalvarEquipSeg();
        if (res.isLeft()) {
          return left(ErrorFinalWebBD());
        } else {
          res = await receberSalvarFrente();
          if (res.isLeft()) {
            return left(ErrorFinalWebBD());
          } else {
            res = await receberSalvarFunc();
            if (res.isLeft()) {
              return left(ErrorFinalWebBD());
            } else {
              res = await receberSalvarLeira();
              if (res.isLeft()) {
                return left(ErrorFinalWebBD());
              } else {
                res = await receberSalvarOS();
                if (res.isLeft()) {
                  return left(ErrorFinalWebBD());
                } else {
                  res = await receberSalvarParada();
                  if (res.isLeft()) {
                    return left(ErrorFinalWebBD());
                  } else {
                    res = await receberSalvarPressaoBocal();
                    if (res.isLeft()) {
                      return left(ErrorFinalWebBD());
                    } else {
                      res = await receberSalvarProduto();
                      if (res.isLeft()) {
                        return left(ErrorFinalWebBD());
                      } else {
                        res = await receberSalvarPropriedade();
                        if (res.isLeft()) {
                          return left(ErrorFinalWebBD());
                        } else {
                          res = await receberSalvarRAtivParada();
                          if (res.isLeft()) {
                            return left(ErrorFinalWebBD());
                          } else {
                            res = await receberSalvarRFuncaoAtivParada();
                            if (res.isLeft()) {
                              return left(ErrorFinalWebBD());
                            } else {
                              res = await receberSalvarTurno();
                              if (res.isLeft()) {
                                return left(ErrorFinalWebBD());
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    return right(true);
  }

  Future<Either<Failure, bool>> receberSalvarAtividade() async {
    var data = await atividadeRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => atividadeRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarBocal() async {
    var data = await bocalRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => bocalRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarEquipSeg() async {
    var data = await equipSegRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => equipSegRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarEquip() async {
    var data = await equipRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => equipRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarFrente() async {
    var data = await frenteRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => frenteRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarFunc() async {
    var data = await funcRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => funcRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarItemCheckList() async {
    var data = await itemCheckListRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => itemCheckListRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarLeira() async {
    var data = await leiraRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => leiraRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarOperMotoMec() async {
    var data = await operMotoMecRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => operMotoMecRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarOS() async {
    var data = await osRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => osRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarParada() async {
    var data = await paradaRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => paradaRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarPressaoBocal() async {
    var data = await pressaoBocalRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => pressaoBocalRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarProduto() async {
    var data = await produtoRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => produtoRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarPropriedade() async {
    var data = await propriedadeRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => propriedadeRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarRAtivParada() async {
    var data = await rAtivParadaRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => rAtivParadaRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarREquipAtiv() async {
    var data = await rEquipAtivRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => rEquipAtivRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarRFuncaoAtivParada() async {
    var data = await rFuncaoAtivParadaRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => rFuncaoAtivParadaRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarROSAtiv() async {
    var data = await rOSAtivRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => rOSAtivRepository.addAllGeneric(r),
    );
  }

  Future<Either<Failure, bool>> receberSalvarTurno() async {
    var data = await turnoRepository.getAllGeneric();
    return data.fold(
      (l) => left(l),
      (r) => turnoRepository.addAllGeneric(r),
    );
  }
}
