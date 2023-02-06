class ApiException implements Exception {
  int code = 0;
  String message = "";
  Exception innerException = Exception();

  ApiException(this.code, this.message);

  ApiException.withInner(this.code, this.message, this.innerException);
}
