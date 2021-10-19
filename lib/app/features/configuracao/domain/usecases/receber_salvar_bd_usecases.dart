import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/atividade_repository.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'receber_salvar_bd_usecases.g.dart';

mixin ReceberSalvarBDUsecases {
  Future<Either<Failure, bool>> call();
}

@Injectable(singleton: false)
class ReceberSalvarBDUsecasesImpl {
  final AtividadeRepositoryImpl atividadeRepository;

  ReceberSalvarBDUsecasesImpl(
    this.atividadeRepository,
  );

  Future<Either<Failure, bool>> receber() async {
    var data = await atividadeRepository.getAllGeneric();
    return data.fold(
        (l) => left(l), (r) => atividadeRepository.addAllGeneric(r));
  }
}
