# Template Beamer UFAM/IComp/PPGI

Template moderno para apresentações acadêmicas seguindo o
**Manual de Identidade Visual UFAM (MIV-UFAM-2020-v3)**.

## Arquivos

| Arquivo | Descrição |
|---|---|
| `beamerthemeUFAM.sty` | Tema Beamer (cores, layouts, elementos) |
| `main.tex` | Apresentação de exemplo (Exame de Qualificação) |
| `logo_ufam.png` | ⚠️ Baixe manualmente (ver abaixo) |
| `logo_icomp.png` | ⚠️ Baixe manualmente (ver abaixo) |

## Como obter os logos

```bash
# Logo UFAM
wget -O logo_ufam.png "https://ufam.edu.br/images/marca_ufam/logo_ufam_horizontal.png"

# Logo IComp (use o PNG do site)
# https://icomp.ufam.edu.br/images/logo.png
wget -O logo_icomp.png "https://icomp.ufam.edu.br/images/logo.png"
```

O tema detecta automaticamente se os arquivos existem e usa fallback
textual caso contrário — **o PDF compila sem os logos**.

## Como compilar

### Overleaf
1. Crie novo projeto → faça upload de `beamerthemeUFAM.sty` e `main.tex`
2. Faça upload dos logos (opcional)
3. Clique em **Compile** — pronto

### Local
```bash
pdflatex main.tex
pdflatex main.tex   # segunda passagem para referências cruzadas
```

## Paleta de Cores (MIV-UFAM-2020-v3)

### Cores Primárias da Marca
| Nome | Hex | Uso |
|---|---|---|
| `ufamGreen` | `#00A551` | Verde UFAM — Pantone 354 C |
| `ufamRed` | `#EC1C24` | Vermelho — Pantone Bright Red C |
| `ufamPink` | `#CD3E68` | Rosa — Pantone 191 C |
| `ufamYellow` | `#FFF100` | Amarelo — Pantone 3955 C |
| `ufamBlack` | `#231F20` | Preto — Pantone Neutral Black C |

### Paleta de Destaque (MIV p.20)
| Nome | Hex | Pantone |
|---|---|---|
| `ufamNavy` | `#0D3049` | 7463 |
| `ufamNavyUnit` | `#06304C` | — (assinaturas de unidades) |
| `ufamTeal` | `#176073` | 7470 C |
| `ufamOrange` | `#EB6C1D` | 1585 C |
| `ufamPurplePPG` | `#5F2568` | 255 C (Programas de Pós-Grad.) |
| `ufamAmber` | `#FAA040` | 1375 C |

## Comandos Personalizados

```latex
\hgreen{texto}   % destaque verde negrito
\hnavy{texto}    % destaque azul navy negrito
\hred{texto}     % destaque vermelho negrito

\begin{ufambox}[Título opcional]
  Conteúdo em verde (equivale a exampleblock)
\end{ufambox}

\begin{ufamalert}[Título opcional]
  Conteúdo em vermelho (equivale a alertblock)
\end{ufamalert}
```

## Personalização Rápida

Para adaptar para outra dissertação/defesa, edite em `main.tex`:
```latex
\title{Seu título aqui}
\subtitle{Tipo de apresentação}
\author{Seu Nome}
\institute{Orientador + Programa + Instituto + Universidade}
\date{Cidade, Mês de Ano}
```

## Tipografia Oficial (MIV-UFAM-2020)

| Contexto | Fonte oficial | Equivalente LaTeX |
|---|---|---|
| Marca UFAM | Arial Rounded MT Bold | `helvet` (Helvetica) |
| Assinaturas de unidades | Myriad Pro Bold/Condensed | `helvet` |
| Corpo de documentos | Arial | `helvet` |

O tema usa `\usepackage[scaled=0.92]{helvet}` como aproximação
disponível no LaTeX padrão. No XeLaTeX/LuaLaTeX você pode usar
Arial diretamente com `fontspec`.

## Referências

- Manual de Identidade Visual UFAM — MIV-UFAM-2020-v3.pdf
- Site PPGI: https://ppgi.ufam.edu.br/
- Site IComp: https://icomp.ufam.edu.br/
- Site UFAM: https://ufam.edu.br/
