\newpage

# Introdução

Ainda esse ano (2024) eu escrevi um artigo[^art-sec] sobre cibersegurança para desenvolvedores.
Embora seja um artigo bem completo que guia desde o início até níveis mais avançados, ele é apenas
teoria e nada de prática. O artigo dá sugestões de como praticar mas ainda sim ficou um "buraco"
no conteúdo que não foi possível de ser preenchido.

Foi pensando nisso que resolvi escrever uma sequência do artigo com exercícios. Só que no formato
de artigo não funcionaria, pois seria superficial demais propor exercícios em um artigo (mesmo que
fosse um artigo bem longo). E então resolvi escrever esse livro, que é uma "continuação" do artigo
mencionado.

:::infobox
Por esse motivo eu sugiro com **veemência** ao leitor que leia o artigo primeiro (link no
rodapé dessa página), pois o conteúdo que já está lá não será repetido aqui.
:::

Nesse livro você irá ver uma série de exercícios para desenvolver o raciocínio para a análise de
vulnerabilidades em aplicações web. Começando com exercícios muito fáceis e aumentando a
dificuldade aos poucos. Assim, aqueles que se interessarem por web security, poderão ser capazes
de ver e analisar vulnerabilidades em códigos; e desenvolverão o pensamento analítico necessário
para a identificação de vulnerabilidades em aplicações web.

:::notebox
Esse livro é focado em web security, porém futuramente também pretendo escrever outro focado
em segurança de binários (*native security*).
:::


[^art-sec]: O artigo mencionado é esse:
    <https://blog.freedev.com.br/ciberseguran%C3%A7a-para-desenvolvedores-a37385cf5d23>


\newpage
## Pré-requisitos

É importante informar ao leitor que o conteúdo deste livro não é voltado para aqueles que estão
iniciando do zero, mas sim para aqueles que tenham algum conhecimento sobre desenvolvimento
web e tecnologias web; bem como também para aqueles que têm algum conhecimento sobre web security
e desejam aprimorar seu pensamento analítico.

Alguns exemplos de conhecimento prévio que é esperado do leitor:

- Programação web usando linguagens como PHP, JavaScript ou Python;
- Algum entendimento de como tecnologias web funcionam, como: HTML, protocolo HTTP, navegadores e
  relacionados;
- Algum entendimento sobre banco de dados e SQL;
- Algum entendimento — mesmo que básico — sobre como servidores HTTP funcionam, como um nginx ou
  apache;
- Pelo menos algum conhecimento básico sobre web security e vulnerabilidades mais comuns na web;
- etc.

Sugiro àqueles que estejam iniciando do zero, que antes estudem no mínimo os tópicos mencionados
acima antes de tentar resolver os exercícios deste livro.

Obs.: Exercícios mais avançados podem exigir bem mais conhecimento do que isso para serem
resolvidos. Porém esse conhecimento acima é o bastante para pelo menos começar.


\newpage
## Autor

Luiz Felipe Silva (Silva97)

- GitHub: <https://github.com/Silva97>
- LinkedIn: <https://www.linkedin.com/in/silva97/>
- Twitter (X): <https://x.com/Vilas_79>
- E-mail: `silva97@freedev.com.br`

## Doações

Se você gostou do conteúdo e quer mostrar seu apoio para que eu continue produzindo conteúdo
gratuito e de qualidade, você pode fazer uma doação da maneira que achar melhor:

**Pix**: `0a442eab-f8c6-410f-90ff-8dec390ae5f4`

![](figures/qrcode-pix.jpeg){width=100px}\

**Bitcoin**: `15FMHdBzzW2HoYETiCZQSbTmfYku3fCqS4`

![](figures/qrcode-bitcoin.png){width=100px}\

**Ethereum**: `0xceC713dfB30d7d88bB81d8A650d136c6a21d71A1`

![](figures/qrcode-ethereum.png){width=100px}\


\newpage
## Licença

Todo o conteúdo desse livro é produzido sob a licença [CC BY-SA 4.0]. Para resumir isso significa
que você pode copiar, modificar, distribuir e até mesmo usar esse conteúdo comercialmente. Desde
que o autor original seja devidamente creditado.

Caso você modifique o conteúdo desse livro e redistribua, você deve compartilhar o novo material sob
os termos da mesma licença, sem restrições adicionais.


[CC BY-SA 4.0]: https://creativecommons.org/licenses/by-sa/4.0/deed.pt-br
