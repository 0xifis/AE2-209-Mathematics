\LoadClass[11pt, twoside]{report}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{summary_notes}[2018/01/11 Latex Class for Simple Module Summary Notes. Works better with <3.]

\RequirePackage[left=1.2cm,right=1.2cm,top=2.2cm,bottom=2cm]{geometry}
\RequirePackage{setspace}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{units}
\RequirePackage{tcolorbox}
\RequirePackage{mparhack}
\RequirePackage{graphicx}
\RequirePackage{gensymb}
\RequirePackage{ar}
\graphicspath{ {figs/} }
\RequirePackage{commath}
\RequirePackage[ddmmyy]{datetime}
\RequirePackage{newclude}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{float}
\RequirePackage{pbox}
\RequirePackage{array}
\RequirePackage{xargs}

\RequirePackage{multicol}
\setlength{\columnsep}{1cm}

% Hyperlinks/Bookmarks in TOC
\RequirePackage[pagebackref]{hyperref}
\hypersetup{
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

\allowdisplaybreaks

% Command to add info about lecture number in sidebar
\newcommand{\mymarginpar}[1]{\marginpar{\setstretch{1}\textit{\scriptsize{#1}}}}

% New counter for lecture number
\newcounter{lecture}

% Command to display text showing lecture no. and date
\newcommand{\lecture}[5][]{%
  \addtocounter{lecture}{1}%
  \newdate{@date\arabic{lecture}}{#3}{#4}{#5}%
  \mymarginpar{Lecture \arabic{lecture}\\\displaydate{@date\arabic{lecture}}\\(#2 hour)}
  }

% Setting style of equation numbers
\numberwithin{equation}{section}

% Styling for vectors - bold
\renewcommand{\vec}[1]{\mathbf{#1}}

% Removing paragraph indent and linebreak after each paragraph
\setlength{\parskip}{5pt}%
\setlength{\parindent}{0pt}%

% Setting vertical space inside align environment
\setlength{\jot}{15pt}

% A command to use giant curly braces (right)
\newenvironment{rcases}
  {\left.\begin{aligned}}
  {\end{aligned}\hspace{3pt}\right\rbrace\hspace{5pt}}


\newcommand{\makeheader}[2]{
  \pagestyle{fancy}{
  \fancyhf{}
  \fancyhead[L]{\slshape \leftmark}
  \fancyhead[R]{\slshape #2}
  \fancyfoot[C]{\thepage}
  \fancyfoot[LE]{\textbf{Leaving your home empty this summer?}\\Sublet hassle-free on www.uteepi.com}
  \fancyfoot[RO]{\textbf{Know someone who wants to sublet?}\\Refer your friend and get \textsterling20 each}
  }
}
\newcommand{\cimg}[2][]{
  \begin{center}
    \ifthenelse{\equal{#1}{}}{
      \includegraphics[width=\linewidth]{figs/#2}
    }{
      \includegraphics[width=#1]{figs/#2}
    }
  \end{center}
}

