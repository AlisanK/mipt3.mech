\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{weekly}
\ProcessOptions

\LoadClass[12pt, a4paper, twoside, final]{article}

\RequirePackage{mathtext}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage[all,warning]
               {onlyamsmath}
    \AtBeginDocument{\catcode`\$=3}
\RequirePackage{cancel}
\RequirePackage{icomma}
\RequirePackage{mathrsfs}
\RequirePackage{bigints}
\RequirePackage{mathrsfs}

\RequirePackage[T2A,OT1]           {fontenc}
\RequirePackage[utf8]              {inputenc}
\RequirePackage[english, russian]  {babel}
\RequirePackage{cmap}
\RequirePackage[ innermargin = 2.0cm,
                 outermargin = 2.0cm,
                 top      = 2.0cm,
                 bottom   = 1.25cm,
                 includefoot,
                 footskip = 1.25cm ]{geometry}
\setlength    {\parskip}        { .5em plus .15em minus .08em }
\setlength    {\parindent}      { .0em }
\renewcommand {\baselinestretch}{ 1.07 }
\hyphenpenalty=2000

\RequirePackage{graphicx}
    \graphicspath{{img/}}
\RequirePackage{float}
\RequirePackage{wrapfig}
\RequirePackage{color}
\RequirePackage{tikz}
\RequirePackage{pgfplots}
    \pgfplotsset{compat=newest}
\RequirePackage{adjustbox}

\RequirePackage{fancyref}
\RequirePackage{fancyhdr}
    \pagestyle{fancy}
    \fancyhf{}
    \renewcommand{\headrulewidth}{ .0em }
    \renewcommand{\footrulewidth}{ .0em }
    \fancyfoot[C]{\texttt{-~\thepage~-}}
\RequirePackage{secdot}
\RequirePackage{caption}

\RequirePackage{enumitem}
    \setlist{leftmargin =   1cm,
             topsep     =  .0\parskip,
             itemsep    = -.0\parskip,
             resume
            }
\RequirePackage{booktabs}
\RequirePackage{array}
    \renewcommand{\arraystretch}{ 1.20 }

\newcommand{\tw}{\textwidth}
\newcommand{\lw}{\linewidth}
\newcommand{\bs}{\baselineskip}
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\newcommand{\dd} [2]{\frac{d #1}{d #2}}
\newcommand{\pdd}[2]{\frac{\partial #1}{\partial #2}}
\newcommand{\ddc}[3]{\left( \frac{\partial #1}{\partial #2} \right)_{\! #3}}
\newcommand{\abs}[1]{\left| #1 \right|}
\newcommand{\divc}  {\mathop{\raisebox{-2pt}{\vdots}}}

\renewcommand{\iff}     {\quad \Longleftrightarrow \quad}
\newcommand  {\then}    {\quad \Longrightarrow \quad}
\newcommand  {\subst}[1]{\begin{Vmatrix} #1 \end{Vmatrix}}
\newcommand  {\qed}     {\hfill\ensuremath{\blacksquare}}

\newcommand  {\const}{\ensuremath{\mathrm{const}}}
\renewcommand{\Re}   {\operatorname{Re}}
\renewcommand{\Im}   {\operatorname{Im}}
\DeclareMathOperator {\Ker}{Ker}
\DeclareMathOperator {\Rg} {Rg}
\DeclareMathOperator {\Int}{int}
\DeclareMathOperator {\Diag}{diag}
\newcommand{\diag}[3]{\Diag \left(#1, \; #2, \; #3\right)}
\newcommand{\cvec}[3]{\small\begin{pmatrix}#1\\#2\\#3\end{pmatrix}}

\makeatletter
\newenvironment{sqcases}{%
  \matrix@check\sqcases\env@sqcases
}{%
  \endarray\right.%
}
\def\env@sqcases{%
  \let\@ifnextchar\new@ifnextchar
  \left\lbrack
  \def\arraystretch{1.2}%
  \array{@{}l@{\quad}l@{}}%
}
\makeatother

\makeatletter
\renewcommand*\env@matrix[1][*\c@MaxMatrixCols c]{%
  \hskip -\arraycolsep
  \let\@ifnextchar\new@ifnextchar
  \array{#1}}
\makeatother

\newcommand{\maketitlew}[4]{
\begin{center}
    \begin{minipage}{1.5cm}
        \includegraphics[height=1.5cm]{shield}
    \end{minipage}
    \begin{minipage}{2.5cm}
        Иван Утешев\\
        621 группа
    \end{minipage}
    
    \Large\textbf{#1}\\
    \large Задание #2. Неделя #3
    \smallskip
\end{center}
\setcounter{page}{#4}
}
