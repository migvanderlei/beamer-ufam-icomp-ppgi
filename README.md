# Template Beamer IComp / UFAM (não oficial)

Template Beamer **não oficial** para apresentações do IComp / PPGI / UFAM.
A identidade visual é inspirada nas cores do logo do IComp (teal + lima) —
não é um material institucional oficial.

**Autor:** [migvanderlei](https://github.com/migvanderlei)  
**Licença:** [MIT](LICENSE) (código e exemplos) · logos de terceiros: ver abaixo  
**Site:** [GitHub Pages](https://migvanderlei.github.io/beamer-ufam-icomp-ppgi/)

## Começar rápido

1. Abra [`example.tex`](example.tex)
2. Preencha o bloco **METADADOS** no topo
3. Edite / remova os slides por seção
4. Compile com **pdfLaTeX** (duas vezes)

```bash
pdflatex example.tex
pdflatex example.tex
```

[`main.tex`](main.tex) é um exemplo completo (exame de qualificação).

### Overleaf

1. Novo projeto → upload de `beamerthemeIComp.sty`, `example.tex` e a pasta `logos/`
2. Menu → **Main document:** `example.tex`
3. Compilador: **pdfLaTeX** (compile 2× para o sumário)

## Arquivos

| Arquivo | Descrição |
|---|---|
| `example.tex` | Starter — preencha e apresente |
| `beamerthemeIComp.sty` | Tema |
| `main.tex` | Demo completa |
| `logos/` | Logos IComp/UFAM + exemplos CNPq/CAPES/FAPEAM |
| `docs/` | Site GitHub Pages |
| `LICENSE` | MIT (código / exemplos) |

## Idioma (babel)

Textos padrão do slide final (`Obrigado!` / `Thank you!`, `Apoio` / `Support`)
seguem o **babel**:

```latex
% Português (padrão do starter)
\documentclass[aspectratio=169, 11pt, brazil]{beamer}
\usepackage[brazil]{babel}

% English
\documentclass[aspectratio=169, 11pt, english]{beamer}
\usepackage[english]{babel}
```

Overrides (`\textofinal{...}`, `\rotuloapoio{...}`) têm prioridade.

## Comandos úteis

```latex
\orientador{Orientador(a): Prof.\ Dr.\ Nome}
\contato{seu.email@icomp.ufam.edu.br}
\rodape{IComp · PPGI · UFAM}

\tamanhotitulo{large}
\divisoresfalse

\hteal{texto}  \hlime{texto}  \hnavy{texto}  \hred{texto}

\begin{destaque}[Título] ... \end{destaque}
\begin{alerta}[Título] ... \end{alerta}

\begin{frame}[plain]
  \begin{figuraampla}{Figura N. Legenda}
    \includegraphics[width=0.9\paperwidth]{figura}
  \end{figuraampla}
\end{frame}

\textofinal{Obrigado!}
\apoio{%
  \imgapoio[height=0.55cm]{logo_cnpq.png}
  \imgapoio[height=0.55cm]{logo_capes.png}
  \imgapoio[height=0.72cm]{logo_fapeam.png}
}
\agradecimentos
```

Rodapé dos slides de conteúdo: `\rodape` + `n/N`. Frames `[plain]` não exibem rodapé.

## Paleta

| Nome | Hex | Uso |
|---|---|---|
| `icompTeal` | `#286880` | Estrutura |
| `icompLime` | `#A8C840` | Acentos |
| `icompTealDark` | `#1D5366` | Painéis / títulos |
| `icompRed` | `#C94B4B` | Alertas |

## Logos

- **IComp / UFAM:** marcas institucionais só para identidade visual deste template não oficial.
- **CNPq / CAPES / FAPEAM** em `logos/`: exemplos para o slide de agradecimentos.
  Substitua pelos oficiais e siga os manuais de marca de cada agência.

## Links

- [Site do template](https://migvanderlei.github.io/beamer-ufam-icomp-ppgi/)
- [IComp](https://icomp.ufam.edu.br/)
- [PPGI](https://ppgi.ufam.edu.br/)
- [UFAM](https://ufam.edu.br/)
