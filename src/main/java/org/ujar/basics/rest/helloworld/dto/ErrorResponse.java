package org.ujar.basics.rest.helloworld.dto;

import java.util.List;
import lombok.Value;

@Value
public class ErrorResponse {

  List<Error> errors;

  @Value
  public static class Error {
    String message;
  }

}
