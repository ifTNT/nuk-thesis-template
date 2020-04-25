\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NUKThesis}[2020/04/26 Thesis format of National University of Kaohsiung]

\LoadClass[12pt, a4paper]{article}

% For Chinese
\usepackage{xeCJK}

% For graphics
\usepackage{graphicx}
\graphicspath{{./images/}}

\usepackage[a4paper]{geometry} % showframe is just for the example

% For generate title
%\usepackage{titling}

% Define Variables
\def\etitle#1{\def\@etitle{#1}}
\def\title#1{\def\@title{#1}}
\def\author#1{\def\@author{#1}}
\def\professor#1{\def\@professor{#1}}
\def\time#1{\def\@time{#1}}


\newcommand{\coverpage}{
  \begin{titlepage}
  \newgeometry{margin=2.54cm}
  \begin{large}
  \centering
  \includegraphics[width=3cm, height=3cm]{nuk_logo}\\
  \vspace{0.5cm}
  \begin{LARGE}
    \fontsize{20}{30} \selectfont 國立高雄大學資訊工程學系\\
    \vspace{0.5em}
    碩士論文
  \end{LARGE}
  
  \vspace{\stretch{2}}

  \@title\\
  \vspace{1em}
  \@etitle

  \vspace{\stretch{2}}

  \begin{tabular}{ll}
  研究生： & \@author\ 撰\\
  指導教授： & \@professor\ 博士 \\
  \end{tabular}

  \vspace{3cm}

  \@time

  \end{large}
  \end{titlepage}
  \restoregeometry
}