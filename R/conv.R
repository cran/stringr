#' Specify the encoding of a string
#'
#' This is a convenient way to override the current encoding of a string.
#'
#' @inheritParams str_detect
#' @param encoding Name of encoding. See [stringi::stri_enc_list()]
#'   for a complete list.
#' @export
#' @examples
#' # Example from encoding?stringi::stringi
#' x <- rawToChar(as.raw(177))
#' x
#' str_conv(x, "ISO-8859-2") # Polish "a with ogonek"
#' str_conv(x, "ISO-8859-1") # Plus-minus
str_conv <- function(string, encoding) {
  check_string(encoding)

  stri_conv(string, encoding, "UTF-8")
}
