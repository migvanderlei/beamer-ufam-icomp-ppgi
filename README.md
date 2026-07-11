# Template Beamer IComp / UFAM (não oficial)

Template Beamer **não oficial** destinado a apresentações acadêmicas no âmbito do
IComp / PPGI / UFAM. A identidade visual inspira-se nas cores do logotipo do IComp
(teal e lima); trata-se de material de uso comunitário, **sem vínculo institucional oficial**.

**Autor:** [migvanderlei](https://github.com/migvanderlei)  
**Licença:** [MIT](LICENSE) (código e exemplos) · quanto aos logotipos, ver a seção correspondente  
**Página do projeto:** [GitHub Pages](https://migvanderlei.github.io/beamer-ufam-icomp-ppgi/)

## Como usar

### Overleaf (recomendado)

1. Crie um novo projeto e envie `beamerthemeIComp.sty`, `example.tex` e a pasta `logos/`.
   Em planos com sincronização GitHub, o repositório também pode ser importado
   diretamente (New Project → Import from GitHub).
2. Em Menu → **Main document**, selecione `example.tex`.
3. Preencha o bloco **METADADOS** e adapte os slides conforme necessário.
4. Utilize o compilador **pdfLaTeX** e compile o documento duas vezes
   (atualização do sumário e da numeração total de slides).

O arquivo [`main.tex`](main.tex) contém uma demonstração mais completa
da estrutura típica de uma apresentação acadêmica.

### Compilação local

```bash
pdflatex example.tex
pdflatex example.tex
# alternativa: make
```

## Organização do repositório

| Arquivo | Descrição |
|---|---|
| `example.tex` | Documento inicial — base recomendada para novas apresentações |
| `beamerthemeIComp.sty` | Definição do tema Beamer |
| `main.tex` | Demonstração completa |
| `logos/` | Logotipos IComp/UFAM e exemplos de agências de fomento |
| `docs/` | Página do projeto (GitHub Pages) |
| `Makefile` | Compilação local (`make` / `make all`) |

## Idioma (babel)

Os textos padrão do slide final (`Obrigado!` / `Thank you!`, `Apoio` / `Support`)
acompanham o idioma definido via **babel**:

```latex
% Português (configuração do documento inicial)
\documentclass[aspectratio=169, 11pt, brazil]{beamer}
\usepackage[brazil]{babel}

% English
\documentclass[aspectratio=169, 11pt, english]{beamer}
\usepackage[english]{babel}
```

Comandos de sobrescrita (`\textofinal{...}`, `\rotuloapoio{...}`) têm precedência
sobre os valores padrão.

## Comandos principais

```latex
\author[S.\ Nome]{Seu Nome Completo}
\orientador{Orientador(a): Prof.\ Dr.\ Nome}
\contato{seu.email@icomp.ufam.edu.br}
\rodape{texto opcional}              % complemento no rodapé (após o autor)

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

Nos slides de conteúdo, o rodapé exibe a **forma curta** do autor
(`\author[S.\ Nome]{Nome Completo}`) e a numeração `n/N`. A forma longa
aparece na capa e nos agradecimentos. O comando `\rodape{...}` acrescenta um
texto opcional após o autor. Quadros `[plain]` (capa, divisores, agradecimentos)
não exibem rodapé.

## Paleta de cores

| Nome | Hex | Função |
|---|---|---|
| `icompTeal` | `#286880` | Elementos estruturais |
| `icompLime` | `#A8C840` | Destaques |
| `icompTealDark` | `#1D5366` | Painéis e títulos |
| `icompRed` | `#C94B4B` | Alertas |

## Logotipos

- **IComp / UFAM:** marcas institucionais empregadas apenas para a identidade
  visual deste template não oficial.
- **CNPq / CAPES / FAPEAM** (em `logos/`): arquivos de exemplo para o slide de
  agradecimentos. Substitua-os pelos arquivos oficiais e observe os manuais de
  marca de cada agência.

## Referências

- [Página do template](https://migvanderlei.github.io/beamer-ufam-icomp-ppgi/)
- [IComp](https://icomp.ufam.edu.br/)
- [PPGI](https://ppgi.ufam.edu.br/)
- [UFAM](https://ufam.edu.br/)

## Integração contínua

A cada *push* ou *pull request* na branch `main`, o GitHub Actions compila
`example.tex` e `main.tex` (pdfLaTeX, duas passagens) e executa um teste
auxiliar com babel `english`.
