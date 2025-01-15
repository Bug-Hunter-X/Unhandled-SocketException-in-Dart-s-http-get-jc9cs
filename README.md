# Unhandled SocketException in Dart's http.get

This example demonstrates a common issue in Dart: insufficient error handling for network requests, specifically the lack of specific handling for `SocketException`.  The provided code uses Dart's `http` package to make a GET request.  However, the error handling is insufficient to provide the user with clear error messages in cases of network connectivity issues.

The solution refines the error handling to provide more context-specific information for `SocketException` exceptions, resulting in a better user experience.