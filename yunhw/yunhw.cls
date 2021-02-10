\ProvidesClass{yunhw}[2021/02/10 ZHANG Yun, Copyright (C) 2021]
\NeedsTeXFormat{LaTeX2e}[2021/02/10]
\LoadClass[a4paper]{article}
%\DeclareOption{twoside}{\PassOptionsToPackage{twoside}{article}}
%\ProcessOptions

\addtolength{\hoffset}{-2.25cm}
\addtolength{\textwidth}{4.5cm}
\addtolength{\voffset}{-3.25cm}
\addtolength{\textheight}{5cm}
\setlength{\parskip}{0pt}
\setlength{\parindent}{0in}


\RequirePackage[utf8]{inputenc}
\RequirePackage{amsthm}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{float} % Improved interface for floating objects
\RequirePackage[final, colorlinks = true, 
            linkcolor = black, 
            citecolor = black]{hyperref} % For hyperlinks in the PDF
\RequirePackage{graphicx, multicol} % Enhanced support for graphics
\RequirePackage{multirow} % Enhanced support for tables
\RequirePackage{enumitem}
% \usepackage{listings, style/lstlisting} % Environment for non-formatted code, !uses style file!
% \usepackage{booktabs} % Enhances quality of tables
\RequirePackage[yyyymmdd]{datetime} % Uses YEAR-MONTH-DAY format for dates
%\RequirePackage[orig, british, cleanlook]{isodate}
\RequirePackage{fancyhdr} % Headers and footers
\pagestyle{fancy} % All pages have headers and footers
\fancyhead{}\renewcommand{\headrulewidth}{0pt} % Blank out the default header
\fancyfoot[L]{The University of Hong Kong} % Custom footer text
\fancyfoot[C]{} % Custom footer text
\fancyfoot[R]{\thepage} % Custom footer text
\renewcommand{\footrulewidth}{1pt}

\everymath{\displaystyle} % Displaystyle for evert equation

\def\short@month@english{\ifcase\month\or
    Jan\or Feb\or Mar\or Apr\or May\or Jun\or
    Jul\or Aug\or Sep\or Oct\or Nov\or Dec\fi}


%% Keyword arguments
\def\courselabel{CourseLabel}
\define@key{yunhw.cls}{courselabel}[CourseLabel]{
    \def\courselabel{#1}
}
\def\coursetitle{CourseTitle}
\define@key{yunhw.cls}{coursetitle}[CourseTitle]{
    \def\coursetitle{#1}
}
\def\semester{Spring 2021}
\define@key{yunhw.cls}{semester}[Spring 2021]{
    \def\semester{#1}
}
\def\name{ZHANG Yun}
\define@key{yunhw.cls}{name}[ZHANG Yun]{
    \def\name{#1}
}
\def\uid{3035802483}
\define@key{yunhw.cls}{uid}[3035802483]{
    \def\uid{#1}
}
\def\hwnum{0}
\define@key{yunhw.cls}{hwnum}[0]{
    \def\hwnum{#1}
}

\ExecuteOptionsX{courselabel, coursetitle, semester, name, uid, hwnum}
\ProcessOptionsX%

\AtBeginDocument{
    \fancyhead[C]{}
    \noindent
    \begin{center}
       \framebox{
          \vbox{\vspace{2mm}
        \hbox to 6.28in { {\bf \courselabel \space \coursetitle \hfill \semester} }
           \vspace{4mm}
           \hbox to 6.28in { {\Large \hfill Assignment \hwnum \hfill} }
           \vspace{2mm}
           \hbox to 6.28in { {\it \name \space \uid \hfill \today} }
          \vspace{2mm}}
       }
    \end{center}
    \bigskip
}

\endinput
