\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{NUKThesis}[2020/04/26 Thesis format of National University of Kaohsiung]

% Declare Options
\newif\if@draftmark\@draftmarkfalse
\DeclareOption{draft}{\@draftmarktrue}
\ProcessOptions\relax


% Use article as base class
\LoadClass[12pt, a4paper]{article}

% For Chinese
\usepackage{xeCJK}

% 教育部標準楷書
% Windows 上面要換成標楷體
\setCJKmainfont{TW-MOE-Std-Kai}
\setCJKmonofont{TW-MOE-Std-Kai}

% For graphics
\usepackage{graphicx}
\graphicspath{{./images/}}

\usepackage[a4paper]{geometry}

%\usepackage{draftwatermark}
\usepackage{lineno,xcolor}
\usepackage[printwatermark]{xwatermark}

\if@draftmark
  \newwatermark[allpages,color=red!50,angle=45,fontsize=5cm,xpos=-3.5cm,ypos=3.5cm]{DRAFT}
  %\SetWatermarkAngle{45} 
  %\SetWatermarkLightness{.8} 
  %\SetWatermarkFontSize{5cm} 
  %\SetWatermarkText{DRAFT}
\else
  \newwatermark[allpages,xpos=0,ypos=0]{
    \includegraphics[width=7cm, height=7cm]{nuk_logo_bg}
  }
  %\SetWatermarkAngle{0} 
  %\SetWatermarkLightness{.9} 
  %\SetWatermarkText{\includegraphics[width=7cm, height=7cm]{nuk_logo_bg}}
\fi

% Define Variables
\def\etitle#1{\def\@etitle{#1}}
\def\title#1{\def\@title{#1}}
\def\author#1{\def\@author{#1}}
\def\professor#1{\def\@professor{#1}}
\def\time#1{\def\@time{#1}}

\linespread{2}

\newcommand{\coverpage}{
  \begin{titlepage}
  \newgeometry{margin=2.54cm}
  \xwmwatermarkoff
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