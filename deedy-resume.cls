% Intro Options
\ProvidesClass{deedy-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}%
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}

\definecolor{green}{HTML}{006600}
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=[rgb]{0,0.3,0.15}%[html]{006600}
}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}

% Cite publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

\definecolor{dark1}{HTML}{000000}
\definecolor{dark2}{HTML}{222222}
\definecolor{dark3}{HTML}{333333}
\definecolor{dark4}{HTML}{444444}
\definecolor{dark5}{HTML}{666666}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/lato/]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

%\setmainfont[Color=primary]{Helvetica Light}
%\setsansfont[Scale=MatchLowercase,Mapping=tex-text]{Helvetica Neue UltraLight}

% Date command
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\textblockorigin{0mm}{2.5mm} % start everyth
\newcommand{\lastupdated}{\begin{textblock}{60}(155,0)
\color{date}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{8pt}{10pt}\selectfont
Last Updated on
\today
\end{textblock}}

\newcommand{\leftdetails}[1]{\begin{textblock}{60}(170,5)
\color{date}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{8pt}{10pt}\selectfont
#1
\end{textblock}}


% Name command
\newcommand{\namesection}[3]{
    \centering{
        \color{dark2}
        \sffamily
        \fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{25pt}{10cm}\selectfont #1
        \fontspec[Path = fonts/lato/]{Lato-Bol}\selectfont #2
    } \\
    \vspace{5pt}
    \centering{ \color{dark2}\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{14pt}\selectfont #3}
    \noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
    \vspace{-20pt}
}
\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{dark1}
\scshape\fontspec[Path = fonts/lato/]{Lato-Bla}\fontsize{16pt}{24pt}\selectfont \raggedright}{} {0em}{}

% Subeadings command
%\titleformat{\subsection}{\color{dark3}
%\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
%\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
%\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}

\newcommand{\runsubsection}[1]{\color{dark3} % Add here \uppercase
\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{dark3}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{\color{dark4}\raggedright\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}
\newcommand{\locationnb}[1]{\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1} \normalfont}

% Text command
\newcommand{\textsec}[1]{\color{dark5}\raggedright\fontspec[Path = fonts/lato/]{Lato-Lig}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

\newcommand{\textsecita}[1]{\color{dark5}\raggedright\fontspec[Path = fonts/lato/]{Lato-LigIta}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{8pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}

