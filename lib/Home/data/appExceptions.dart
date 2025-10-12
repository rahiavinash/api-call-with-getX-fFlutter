class AppException implements Exception {
  final String message;
  final String? prefix;
  final String? details;

  AppException([this.message = '', this.prefix, this.details]);

  @override
  String toString() {
    String fullMessage = prefix != null ? '$prefix: $message' : message;
    if (details != null && details!.isNotEmpty) {
      fullMessage += '\nDetails: $details';
    }
    return fullMessage;
  }
}


class InternetException implements Exception {
  final String message;

  // Constructor to allow passing custom error message
  InternetException([this.message = "No internet connection"]);

  @override
  String toString() {
    return "InternetException: $message";
  }
}



class ServerException extends AppException {
  ServerException([String message = '', String? details])
      : super(message, "Server Error", details);
}


class InvalidUrlException extends AppException {
  InvalidUrlException([String message = '', String? details])
      : super(message, "InValid URl", details);
}

class FetchDataException extends AppException {
  FetchDataException([String message = '', String? details])
      : super(message, "Error while Data Communication", details);
}