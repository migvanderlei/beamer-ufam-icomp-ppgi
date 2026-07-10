# Template Beamer IComp / UFAM

Tema Beamer para apresentações do **Instituto de Computação (IComp)**,
PPGI e UFAM. Paleta amostrada do logo IComp (teal + lima), tipografia
sans-serif e layouts arejados.

## Arquivos

| Arquivo | Descrição |
|---|---|
| `beamerthemeUFAM.sty` | Tema principal (paleta IComp + layouts) |
| `beamerthemeIComp.sty` | Alias (`\RequirePackage{beamerthemeUFAM}`) |
| `main.tex` / `main.pdf` | Apresentação de exemplo (Exame de Qualificação) |
| `example.tex` / `example.pdf` | Exemplo mínimo (capa, blocos, figura, tabela, full-bleed, encerramento) |
| `logos/logo_icomp.png` | Logo IComp |
| `logos/logo_ufam.png` | Brasão UFAM (fundos claros) |
| `logos/logo_ufam_white.png` | Brasão UFAM branco (fundos teal escuros) |

Nos slides de conteúdo, o cabeçalho mantém o **IComp à esquerda** e a
**UFAM à direita**, com linha teal/lima. A capa usa painel teal com
autor, orientador(a) e data; a marca institucional fica nos logos.

## Como compilar

### Overleaf
1. Faça upload de todos os arquivos (incluindo `logos/`)
2. Compile `main.tex` ou `example.tex` (duas vezes)

### Local
```bash
pdflatex example.tex
pdflatex example.tex
```

## Paleta IComp

| Nome | Hex | Uso |
|---|---|---|
| `icompTeal` | `#286880` | Estrutura, linhas e painéis |
| `icompLime` | `#A8C840` | Acentos, itens, destaques |
| `icompTealDark` | `#1D5366` | Painéis escuros / títulos |
| `icompRed` | `#C94B4B` | Alertas |

Aliases `ufam*` continuam disponíveis para slides antigos
(`ufamNavy` → teal escuro, `ufamGreen` → lima, etc.).

## Rodapé e metadados

```latex
\author[M. Vanderlei]{Miguel Vanderlei de Oliveira}
\institute[IComp · PPGI · UFAM]{...}   % short form no rodapé; capa usa logos
\icompadvisor{Orientadora: Profª Drª Nome}
\icompfooter{IComp · PPGI · UFAM}
\date{Manaus, Julho de 2026}
```

Rodapé: **autor** \| unidade + contador **i/N**.
Na capa: título → subtítulo → autor → orientador(a) → data.

## Comandos

```latex
\hteal{texto}    % destaque teal
\hlime{texto}    % destaque lima
\hnavy{texto}    % destaque teal escuro
\hred{texto}     % destaque vermelho
\hgreen{texto}   % alias de \hlime

\begin{icompbox}[Título]
  Conteúdo em lima
\end{icompbox}

\begin{icompalert}[Título]
  Conteúdo em vermelho
\end{icompalert}

% Slide full-bleed com barra de legenda (frame plain)
\begin{frame}[plain]
  \begin{icompfigure}{Figura N. Legenda}
    \includegraphics[width=0.9\paperwidth]{figura}
  \end{icompfigure}
\end{frame}

\icompthanksframe   % slide de encerramento
```

Aliases legados: `ufambox`, `ufamalert`, `ufamthanksframe`, `\ufamtitlesize`.

## Personalização

```latex
\usepackage{beamerthemeIComp}   % ou beamerthemeUFAM
\title{Seu título}
\subtitle{Tipo de apresentação}
\author[Iniciais]{Seu Nome}
\institute[IComp · PPGI · UFAM]{Instituto · Programa · Universidade}
\icompadvisor{Orientador(a): ...}
\icompfooter{IComp · PPGI · UFAM}
\date{Cidade, Mês de Ano}
```

Títulos longos: `\icomptitlesize{large}` (ou `LARGE`) no preâmbulo.

## Tipografia

Helvetica (`helvet`). Com XeLaTeX/LuaLaTeX, dá para trocar por Inter
ou Fira Sans via `fontspec`.

## Links

- [IComp](https://icomp.ufam.edu.br/)
- [PPGI](https://ppgi.ufam.edu.br/)
- [UFAM](https://ufam.edu.br/)
