\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template-book/class}[2023/07/27 Buch und Skript]


\newcommand{\booktitle}{}
\newcommand{\booksubtitle}{}
\newcommand{\bookauthor}{}
\newcommand{\booktexedby}{}
\newcommand{\bookcoverpicture}{}
\newcommand{\bookreview}{}
\newcommand{\bookauthorbio}{}
\newcommand{\authorbiosource}{}

\newcommand{\frontmatterchaptername}{}


\LoadClass[12pt,openany]{book}

\input{template-book/preamble}
\input{template-book/macros-letterfonts/letterfonts}
\input{template-book/macros-letterfonts/macros}

\definecolor{tyellow}{HTML}{FFD05B}
\definecolor{tyellowlight}{HTML}{FFE39D}
\definecolor{tyellowlighter}{HTML}{FFFBF0}
\definecolor{tyellowdark}{HTML}{D09B18}
\definecolor{tyellowdarker}{HTML}{715000}

\definecolor{tturq}{HTML}{3EAF7F}
\definecolor{tturqlight}{HTML}{86DAB6}
\definecolor{tturqlighter}{HTML}{EEFCF6}
\definecolor{tturqdark}{HTML}{118F59}
\definecolor{tturqdarker}{HTML}{004D2C}

\definecolor{tblue}{HTML}{3E83A1}
\definecolor{tbluelight}{HTML}{86BCD4}
\definecolor{tbluelighter}{HTML}{EEF8FC}
\definecolor{tbluedark}{HTML}{156283}
\definecolor{tbluedarker}{HTML}{033247}

\usetikzlibrary{calc}

\newcommand{\frontcover}{%
\frontmatter
\pagestyle{plain}
\input{template-book/frontcover}
\setcounter{page}{0}
\pagestyle{plain}
}

\renewcommand{\maketitle}{%
\frontmatter
\pagestyle{plain}
\input{template-book/titlepage}
\setcounter{page}{0}
\pagestyle{plain}
}

\newcommand{\preface}[1][Vorwort]{%
\frontmatter
\setcounter{page}{1}
\pagestyle{fancy_frontmatter}
\renewcommand{\frontmatterchaptername}{Vorwort}
\chapter*{#1}
\addcontentsline{toc}{chapter}{Vorwort}
\input{preface}
\newpage
}

\newcommand{\maketoc}{%
\pagestyle{fancy_frontmatter}
\renewcommand{\frontmatterchaptername}{Inhalt}
\pdfbookmark[section]{\contentsname}{toc}
\tableofcontents
}

\let\MainmatterOld\mainmatter
\renewcommand{\mainmatter}{%
\pagestyle{fancy_frontmatter}
\renewcommand{\frontmatterchaptername}{}
\MainmatterOld
\pagestyle{fancy}
}

\let\PrintindexOld\printindex
\renewcommand{\printindex}{%
\backmatter
\pagestyle{plain}
\PrintindexOld\label{index}
}

\newcommand{\backcover}{%
\input{template-book/backcover}
}

\raggedbottom