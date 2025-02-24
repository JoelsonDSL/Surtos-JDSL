##### Teotonio Soares de Carvalho
###### Universidade Federal de Lavras
###### teo.decarvalho@gmail.com
<br>

#### Curso de Introdução ao R no Swirl

<br><br>
Esse curso consiste de uma série de lições (ainda em construção)
que abordam os princípios básicos de programação e análise de dados
no R.
Essas lições foram desenvolvidas para serem utilizadas no R, utilizando um pacote chamado [swirl](http://swirlstats.com/students.html).

Para rodar esse curso, você deverá primeiro instalar o [R](https://cran.r-project.org) e o [RStudio](https://www.rstudio.com/products/rstudio/download/).


Após a instalação de ambos, será necessária ainda a instalação
do pacote [swirl](http://swirlstats.com/students.html). Isso pode ser feito abrindo o RStudio e digitando
no painel inferior esquerdo (chamado de console) o seguinte comando:

```R
install.packages("swirl")
```

Observe que é necessário estar conectado à internet para que a 
instalação seja bem sucedida.

Para começar a utilizar o swirl você deverá carregar o pacote executando o seguinte comando no console do R no RStudio (painel inferior esquerdo do RStudio):

```R
library(swirl)
```

O comando acima deverá ser executado sempre que você quiser acessar as lições desse curso.

Antes de usar o curso pela primeira vez, será necessário fazer a instalação dele executando o seguinte comando no console do R no RStudio (painel inferior esquerda do RStudio):
```R
install_course_github(github_username = "teodecarvalho", course_name = "Intro_ao_R")
```

Finalmente, você poderá começar a utilizar esse curso executando os comandos:
```R
library(swirl) # Só para ter certeza
swirl()
```
Observação: Os comandos anteriores para a instalação do swirl não são mais necessários daqui em diante. Eventualmente você poderá executar a instalação desse tutorial novamente para incluir novas lições. No final desse tutorial mostrarei como fazer isso.

Uma demonstração em vídeo da instalação do swirl e do curso pode ser encontrada [aqui](https://www.youtube.com/watch?v=9sSbt3qHDbQ).











