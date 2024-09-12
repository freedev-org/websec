# websec

Esse livro é uma coleção de exercícios para a prática de análise de
vulnerabilidades em aplicações web. Nele você contará com dois capítulos:

- O primeiro com uma série de códigos vulneráveis, escritos em várias
  linguagens, onde você poderá analisar e identificar as vulnerabilidades;
- o segundo com *designs* inseguros onde você precisará ler e identificar a
  falha de *design*.

---

Você pode ler este livro em HTML ou PDF, como preferir:

- Versão em PDF: <https://fd1.in/websec-pdf>
- Versão HTML (online): <https://websec.freedev.com.br>


## Renderização

Se quiser renderizar o livro em sua máquina, basta usar o `Makefile` presente
neste repositório.


### Sem docker

Primeiro você precisará instalar algumas dependências:

```console
sudo apt install texlive-latex-extra \
    texlive-lang-portuguese \
    texlive-latex-recommended
```

Você também precisará instalar o [pandoc] 3.3 ou superior.

Depois:

```console
$ make pdf      # Build PDF sem docker
$ make html     # Build HTML sem docker
```

### Com docker

Para fazer o *build* da imagem docker:

```console
make docker-build
```

Depois, para renderizar o livro:

```console
$ make docker ARGS=pdf      # Build PDF usando docker
$ make docker ARGS=html     # Build HTML usando docker
```


[pandoc]: https://github.com/jgm/pandoc/releases
