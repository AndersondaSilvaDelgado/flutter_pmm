class Failure implements Exception {}

class ErrorHttpException extends Failure {}

class ErrorDesconhecido extends Failure {}

class EmptyList extends Failure {}

class ErroReturnRepository extends Failure {}

class ErroInsertBDInternal extends Failure {}
