---
title: Exercícios de Web Security
lang: pt-BR
date: \today
keywords:
    - appsec
    - offensive-security
    - owasp-top-ten
    - security
    - web-security
author:
    - Luiz Felipe Silva ([Silva97])
abstract: |
    Esse livro é uma coleção de exercícios para a prática de análise de vulnerabilidades em
    aplicações web. Nele você contará com dois capítulos: O primeiro com uma série de
    códigos vulneráveis, escritos em várias linguagens, onde você poderá analisar e
    identificar as vulnerabilidades; o segundo com *designs* inseguros onde você
    precisará ler e identificar a falha de *design*.
nocite: '@*'
numbersections: true
colorlinks: true
linkcolor: link
urlcolor: url
header-includes: |
    \usepackage{xcolor}
    \usepackage{fancyhdr}
    \usepackage{mdframed}
    \usepackage{xstring}

    \pagestyle{fancy}

    \definecolor{link}{RGB}{25, 25, 150}
    \definecolor{url}{RGB}{25, 150, 25}

    \lhead{Exercícios de Web Security}

    \renewcommand{\footrulewidth}{0.5pt}
    \cfoot{\Large\textbf{\thepage}}
---

[Silva97]: https://github.com/Silva97

<!---------- Custom commands ---------->

<!----- Text boxes ----->

<!-- \textbox{color}{title}{content} -->
\newcommand{\textbox}[3]{
    \begin{mdframed}[
        linewidth=1pt,
        linecolor=#1,
        backgroundcolor=#1!10,
        leftmargin=5pt,
        rightmargin=5pt,
        innertopmargin=8pt,
        innerbottommargin=8pt,
        skipabove=12pt,
        skipbelow=12pt,
    ]
        \textbf{\underline{#2}}
        #3
    \end{mdframed}
}

<!-- \infobox{content} -->
\newcommand{\infobox}[1] {
    \textbox{blue}{Info}{#1}
}

<!-- \notebox{content} -->
\newcommand{\notebox}[1] {
    \textbox{lightgray}{Nota}{#1}
}

<!-- \challengebox{content} -->
\newcommand{\challengebox}[1] {
    \textbox{yellow}{Desafio}{#1}
}


<!----- Special links ----->

<!-- \cwe{cwe-id} -->
\newcommand{\cwe}[1]{%
    \href{https://cwe.mitre.org/data/definitions/#1.html}{CWE-#1}
}

<!-- \owasptopten{slug} -->
\newcommand{\owasptopten}[1]{%
    \href{https://owasp.org/Top10/\detokenize{#1}/}{%
        \StrSubstitute[1]{\detokenize{#1}}{\detokenize{_}}{\detokenize{:}}
    }
}
