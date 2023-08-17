Template für Skripte/Bücher, für Mathematik geeignet, deutschsprachig.

## How to use (in einer git-repository):
```bat
git submodule add https://github.com/simon14264/template-book.git
git submodule update --init --recursive
```
zum Aktualisieren:
```bat
git submodule update --remote --recursive
```

## How to use (im .tex Dokument):
```tex
\documentclass{template-book/class}
```

**Wichtig!** Bevor das erste Kapitel beginnt:
```tex
\mainmatter
```

### Buch cover:
Frontcover: Am Anfang im Dokument
```tex
\frontcover
```
Backcover: Am Ende im Dokument
```tex
\backcover
```
Informationen für Frontcover (Preamble, optional)
```tex
\renewcommand{\booktitle}{<Titel>}
\renewcommand{\booksubtitle}{<Untertitel>} % Nicht im maketitle
\renewcommand{\bookauthor}{<Autor>}
\renewcommand{\booktexedby}{<Unterer Bereich>}
\renewcommand{\bookcoverpicture}{<Coverbild>} % z.b. \includegraphics, Auch nicht im maketitle
```
Informationen für Backcover (Preamble, optional)
```tex
\renewcommand{\bookreview}{<Im Blauen Bereich>}
\renewcommand{\bookauthorbio}{<Im Gelben Bereich>}
\renewcommand{\authorbiosource}{<Quellen>} % am besten: (Quellen: <...>)
```

### Maketitle
Nach `frontcover`
```tex
\maketitle
```
Benutzt `\booktitle, \bookauthor, \booktexedby`, eine nicht farbige Version von `\frontcover`

### Vorwort
Nach `maketitle`
```tex
\preface
```
Bindet den Text aus `preface.tex` ein.

### Inhaltsverzeichnis
Nach `preface`
```tex
\maketoc
```
Normales LaTeX tableofcontents. Nützlich: `\substoc`

### Index
In der Preamble
```tex
\makeindex
```
und am Ende im Dokument vor `backcover`
```tex
\printindex
```

### Nützliches
`includeonly{<...>}` in Preamble

`.gitignore`:
```gitignore
*.aux
*.fdb_latexmk
*.fls
*.idx
*.ilg
*.ind
*.log
*.synctex.gz
*.toc
```