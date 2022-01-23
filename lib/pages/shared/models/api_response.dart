import 'request_status.dart';

class ApiResponse<T> {
  final T? data;
  final RequestStatus status;
  ApiResponse.error()
      : status = RequestStatus.error,
        data = null;
  ApiResponse.loading()
      : status = RequestStatus.loading,
        data = null;
  ApiResponse.success(this.data) : status = RequestStatus.success;
}
