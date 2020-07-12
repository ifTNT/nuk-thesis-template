\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NUKThesisPandoc}[2020/04/26 Thesis format of National University of Kaohsiung]

% Declare Options
\newif\if@draftmark\@draftmarkfalse
\DeclareOption{draft}{\@draftmarktrue}
\ProcessOptions\relax


% Use article as base class
\LoadClass[12pt, a4paper]{article}

% For table caption
\usepackage[tableposition=top]{caption}

% For graphics
\usepackage{graphicx}
\graphicspath{{./images/}}

% For layout
\usepackage[a4paper]{geometry}

% For watermark
\usepackage{background}

% For TOC, LOF and LOT
\usepackage{tocloft}
% Use dot to fill space between section name and page number
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}

% For indent
\usepackage{indentfirst}


\backgroundsetup{contents={}}
\newcommand{\beginwatermark}{
  % Show watermarker
  \if@draftmark
    % Show the DRAFT in background
    \backgroundsetup{contents=DRAFT}
    %\SetWatermarkText{DRAFT}
  \else
    % Show the NUK logo as watermark
    %\SetWatermarkAngle{0}
    \backgroundsetup{contents=\includegraphics{nuk_logo_bg}, scale=0.5, angle=0}
  \fi
}

% Define Variables
\def\etitle#1{\def\@etitle{#1}}
\def\title#1{\def\@title{#1}}
\def\author#1{\def\@author{#1}}
\def\professor#1{\def\@professor{#1}}
\def\time#1{\def\@time{#1}}

% Translate to Chinese
\renewcommand{\contentsname}{目錄}
\renewcommand{\listfigurename}{圖目錄}
\renewcommand{\listtablename }{表目錄}
\renewcommand{\figurename}{圖}
\renewcommand{\tablename}{表}

\newcommand{\coverpage}{
  \begin{titlepage}
  \newgeometry{margin=2.54cm}
  % No watermark in this page
  \fontsize{20pt}{20pt}\selectfont
  \centering
  \includegraphics[width=3cm, height=3cm]{nuk_logo}\\
  \vspace{0.5cm}
  國立高雄大學資訊工程學系\\
  碩士論文
  
  \vspace{\stretch{2}}
  \fontsize{18pt}{18pt}\selectfont

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

  \restoregeometry
  \end{titlepage}
}