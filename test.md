---
documentclass: NUKThesisPandoc
CJKmainfont: TW-MOE-Std-Kai
monofont: TW-MOE-Std-Kai
numbersections: true
linestretch: 1.15
indent: true
author: 學生

header-includes: |
  \usepackage{lipsum}
  \usepackage{zhlipsum}
  \usepackage{mathtools}
  
  \title{中文標題}
  \etitle{English title}
  \professor{老師}
  \time{中華民國一零九年七月}

---

<!-- 標題頁、目錄、圖目錄、表目錄-->
\coverpage
\beginwatermark
\pagenumbering{roman}
\tableofcontents
\newpage
\listoffigures
\newpage
\listoftables
\newpage

# 致謝
\zhlipsum[4-5][name=nanshanjing]
\newpage
<!-- Reset the page number counter -->
\pagenumbering{arabic}

<!-- Your thesis starts here -->
# 介紹
\zhlipsum[1-4][name=nanshanjing]

$$
X(\omega) = 
  \begin{dcases*}
    1 & $\omega\in A$\\
    0 & $\omega \in A^c$
  \end{dcases*}
$$

# 各種圖和表
\zhlipsum[5][name=nanshanjing]

![當你 compile 一次就過](./images/figure.png){width=8cm}

\zhlipsum[6-8][name=nanshanjing]

![嚶嚶嚶嚶嚶](./images/figure2.jpg){width=8cm}

: 測試表格

Category  | Details | Amount
----------|---------|-------:
Category1 | Hourly  | $20
Category2 | Hourly  | $25
Category3 | Fixed   | $30

\zhlipsum[9-10][name=nanshanjing]
