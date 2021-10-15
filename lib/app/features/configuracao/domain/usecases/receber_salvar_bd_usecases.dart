import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_pmm/app/features/configuracao/infra/repositories/atividade_repository.dart';
import 'package:flutter_pmm/app/shared/errors/errors.dart';

part 'receber_salvar_bd_usecases.g.dart';

mixin ReceberSalvarBDUsecases {
  Future<Either<ErrorException, bool>> call();
}

@Injectable(singleton: false)
class ReceberSalvarBDUsecasesImpl {
  final AtividadeRepositoryImpl atividadeRepository;

  ReceberSalvarBDUsecasesImpl(
    this.atividadeRepository,
  );

  Future<bool> receber() async {
    // print('teste2');
    await atividadeRepository.getAllGeneric();
    return true;
  }
}
