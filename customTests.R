notify <- function() {
  e <- get("e", parent.frame())
  if(e$val == "No") return(TRUE)
  
  good <- FALSE
  while(!good) {
    # Obter informações
    name <- readline_clean("Qual o seu nome completo?")
    address <- readline_clean(" Quem você deseja notificar sobre a conclusão da lição?")
    
    # Repetir
    message("\nDoes everything look good?\n")
    message("Seu Nome: ", name, "\n", "Enviar para: ", address)
    
    yn <- select.list(c("Sim", "Não"), graphics = FALSE)
    if(yn == "Sim") good <- TRUE
  }
  
  # Adicionar curso e nome da lição
  course_name <- attr(e$les, "Surtos-JDSL")
  lesson_name <- attr(e$les, "Conceitos Básicos")
  
  subject <- paste(name, "acabei de concluir", course_name, "-", lesson_name)
  body = ""
  
  # Enviar email
  swirl:::email(address, subject, body)
  
  hrule()
  message("Acabei de tentar criar um novo email com as seguintes informações:\n")
  message("Para: ", address)
  message("Assunto: ", subject)
  message("Corpo: <empty>")
  
  message("\nSe não funcionou, você pode enviar o email manualmente.")
  hrule()
  
  # Retorne TRUE para concluir o swirl e voltar ao menu principal
  TRUE
}

readline_clean <- function(prompt = "") {
  wrapped <- strwrap(prompt, width = getOption("width") - 2)
  mes <- stringr::str_c("| ", wrapped, collapse = "\n")
  message(mes)
  readline()
}

hrule <- function() {
  message("\n", paste0(rep("#", getOption("width") - 2), collapse = ""), "\n")
}
