%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ГОУ ВПО "Удмуртский государственный университет"                  %
%  Факультет информационных технологий и вычислительной техники      %
%  Кафедра теоретических основ информатики                           %
%                                                                    %
%  Авторы: Дунаев Дмитрий, didal@pisem.net                            %
%          Маслов Сергей,  msh.sci.it@gmail.com                       %
%  июль    2011                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%********** Идентификация *******************************************%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{../IncArticle}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%********** Начальный код *******************************************%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Выбор формата вывода: PDF/DVI ---------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ifx\pdfoutput\undefined                                   %DVI-формат
  \LoadClass[14pt,a4paper,oneside,fleqn]{extarticle}
  \RequirePackage{graphicx}
  \RequirePackage[dvipsnames]{color}
\else                                                      %PDF-формат
  \LoadClass[pdftex,14pt,a4paper,oneside,fleqn]{extarticle}
  \RequirePackage[pdftex]{graphicx}
  \RequirePackage[dvipsnames]{color}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%********** Загрузка пакетов ****************************************%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Выбор кодовой страницы и языка --------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\RequirePackage [cp866]   {inputenc} % DOS
%\RequirePackage [koi8-r]  {inputenc} % UNIX
%\RequirePackage [cp1251]  {inputenc} % Windows
%\RequirePackage{pscyr}

\RequirePackage{mathtext}
\RequirePackage{amsmath}
\RequirePackage{ifthen}
%\RequirePackage{head}
%\RequirePackage{cite}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Гиперссылки ---------------------------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage {makeidx,latexsym}
\RequirePackage[backref,
                pdfstartview=Fit,
                colorlinks=true,
                linkcolor=ForestGreen,
                urlcolor=ForestGreen,
                citecolor=ForestGreen,
                % pagecolor=ForestGreen, % Package hyperref Warning: Option `pagecolor' is not available anymore.
                filecolor=ForestGreen,
                bookmarks=true,
                bookmarksopen=false,
                unicode=true,
                hyperindex=true,
                pagebackref=false,
                bookmarksopenlevel=all]{hyperref}
\makeindex

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amssymb}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%********** Декларация опций ****************************************%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\inc@inputencoding{utf8}

\DeclareOption{cp1251}{
  \def\inc@inputencoding{cp1251}
  \PassOptionsToPackage{cp1251}{inputenc}
}

\DeclareOption{koi8-r}{
  \def\inc@inputencoding{koi8-r}
  \PassOptionsToPackage{koi8-r}{inputenc}
}

\DeclareOption{utf8}{
  \def\inc@inputencoding{utf8}
  \PassOptionsToPackage{utf8}{inputenc}
}

\DeclareOption{dos}{
  \def\inc@inputencoding{dos}
  \PassOptionsToPackage{dos}{inputenc}
}

\DeclareOption{Color}{ %Цветной документ
     \definecolor{ForestGreen}   {cmyk}{0.91,0,0.88,0.12}
     \definecolor{bg}        {cmyk}{.09,.70,.97,0}

}

\DeclareOption{Black}{ % Черно-белый документ
     \definecolor{Orchid}      {rgb}{0.0,0.0,0.0}
     \definecolor{ForestGreen} {rgb}{0.0,0.0,0.0}
     \definecolor{blue}        {rgb}{0.0,0.0,0.0}
}

\provideboolean{inc@russianenv}
\setboolean{inc@russianenv}{false}

\DeclareOption{Russian}
  {
    \PassOptionsToPackage{english,russian}{babel}
    \PassOptionsToPackage{Russian}{../IncProposition}
    \def\inc@language{Russian}
    \def\inc@lang{russian}
    \setboolean{inc@russianenv}{true}
}

\DeclareOption{English}{
\PassOptionsToPackage{russian,english}{babel}
\PassOptionsToPackage{English}{../IncProposition}
\def\inc@language{English}
  \def\inc@lang{english}
  \def\abstractname{Abstract}
  \def\introductionname{Introduction}
  \def\conclusionname{Conclusion}
  \def\contentsname{Contents}
  \def\listfigurename{List of figures}
  \def\listtablename{List of tables}
  \def\bibname{Bibliography}
  \def\subjectindexname{Subject index}
  \def\indexname{Subject index}
  \def\alphabeticalindexname{Name list}
  \def\glossaryname{Glossary}
  \def\thanksname{Thanks}
  \def\UDKname{UDC}
}

\DeclareOption{Margin}{
\def\Margin{True}
\PassOptionsToPackage{Margin}{../IncProposition}
\setlength {\hoffset}        {-1in}  %0mm
\setlength {\voffset}        {-1in}  %0mm
\setlength {\oddsidemargin}  {20mm}
\setlength {\evensidemargin} {20mm}
\setlength {\topmargin}      {15mm}
\setlength {\headheight}     {6mm}
\setlength {\headsep}        {3mm}
\setlength {\textheight}     {245mm}
\setlength {\textwidth}      {180mm}
\setlength {\footskip}       {15mm}
\setlength {\marginparsep}   {2mm}
\setlength {\marginparwidth} {5mm}
\setlength {\marginparpush}  {5mm}
}


\DeclareOption{NoMargin}{
\def\Margin{False}
\PassOptionsToPackage{NoMargin}{../IncProposition}
\setlength {\hoffset}        {-1in}  %0mm
\setlength {\voffset}        {-1in}  %0mm
\setlength {\oddsidemargin}  {20mm}
\setlength {\evensidemargin} {20mm}
\setlength {\topmargin}      {15mm}
\setlength {\headheight}     {6mm}
\setlength {\headsep}        {3mm}
\setlength {\textheight}     {245mm}
\setlength {\textwidth}      {180mm}
\setlength {\footskip}       {15mm}
\setlength {\marginparsep}   {0mm}
\setlength {\marginparwidth} {0mm}
\setlength {\marginparpush}  {0mm}
}

\DeclareOption{WideIndex}{
\renewenvironment{theindex}
               {\if@twocolumn
                  \@restonecolfalse
                \else
                  \@restonecoltrue
                \fi
                \columnseprule \z@
                \columnsep 35\p@
                \section*{\indexname}%
                \@mkboth{\MakeUppercase\indexname}%
                        {\MakeUppercase\indexname}%
%                \thispagestyle{plain}
                \parindent\z@
                \parskip\z@ \@plus .3\p@\relax
                \let\item\@idxitem}
               {\if@restonecol\onecolumn\else\clearpage\fi}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Определение опций по умолчанию --------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ExecuteOptions{Color,Russian,Margin,WideIndex,cp1251}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%********** Исполнение опций ****************************************%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProcessOptions

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{mathtext}
\RequirePackage[T2A]{fontenc}
\DeclareSymbolFont{T2Aletters}{T2A}{cmr}{m}{it} % Italic cyrillic
                                % letters in the fomulae (?)
\RequirePackage{inputenc}
\RequirePackage{babel}    % язык
\@setcyrillicencoding
\inputencoding{\inc@inputencoding}


\RequirePackage{tabularx}

\newcounter{thanks}
\def\thanks#1{\gdef\@thanks{#1}\setcounter{thanks}{1}}
\def\@thanks{\@latex@warning@no@line{No \noexpand\thanks given}}

\newcounter{author}
% \def\author#1{\gdef\@author{#1}\setcounter{author}{1}}
% \def\@author{\@latex@warning@no@line{No \noexpand\author given}}

\newcounter{title}
\def\title#1{\gdef\@title{#1}\setcounter{title}{1}}
\def\@title{\@latex@warning@no@line{No \noexpand\title given}}

\newcounter{UDK}
\def\UDK#1{\gdef\@UDK{#1}\setcounter{UDK}{1}}
\def\@UDK{\@latex@warning@no@line{No \noexpand\UDK given}}

\AtBeginDocument{
%%%%\noindent{\bfseries\UDKname\ \@UDK}  %2011
\csname\inc@language\endcsname

\inputencoding{utf8}

\ifthenelse{\boolean{inc@russianenv}}{
    \def\abstractname{Аннотация}
  \def\introductionname{Введение}
  \def\conclusionname{Заключение}
  \def\contentsname{Оглавление}
  \def\listfigurename{Список иллюстраций}
  \def\listtablename{Список таблиц}
  \def\bibname{Список литературыss}
  \def\subjectindexname{Предметный указатель}
  \def\indexname{Предметный указатель}
  \def\alphabeticalindexname{Алфавитный указатель}
  \def\glossaryname{Глоссарий}
  \def\thanksname{Благодарности}
  \def\UDKname{УДК}
}{}

\inputencoding{\inc@inputencoding}


\begin{center}
{\large\bfseries\@title}\par
\vspace{2pt}
\normalsize
\begingroup
\ifnum \arabic{AuthorsCount}=0
\Large Please add authors to the paper!\par
\@latex@warning@no@line{No \noexpand\author given}
\else
\itshape
\begin{tabular}[t]{c}%
\@author
\end{tabular}\par
\fi
\endgroup
 \vspace{2pt}
 \normalfont
 \@date\par
\end{center}

\def\@listi{\leftmargin\leftmargini
%            \setlength{\itemindent}{1.5em}
%            \setlength{\labelwidth}{0.5em}
%            \setlength{\labelsep}{0.2em}
            \parsep=0pt
            \topsep=0pt
            \itemsep=0pt}
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
            \parsep=0pt
            \topsep=0pt
            \itemsep=0pt}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \partopsep \p@ \@plus\z@ \@minus\p@
            \parsep=0pt
            \topsep=0pt
            \itemsep=0pt}
\pagestyle{myheadings}
\startheadings
}

\AtEndDocument{\newpage\printindex}

\newcounter{AuthorsCount}
\setcounter{AuthorsCount}{0}

%\def\initial#1{%\setbox3=\hbox{#1}\hskip -\wd3%
%        %\phantom{\def\first##1{\gdef\bukva{##1}}\first #1\bukva}\bukva
%}

\def\initial#1{#1}

\edef\@author{}
\newcommand{\AddAuthor}[6]{
\ifnum \arabic{AuthorsCount}=0
  \edef\@author{\inc@format@author{#1}{#2}{#4}{#6}}
\else
  \edef\@author{\@author\inc@add \inc@format@author{#1}{#2}{#4}{#6}}
\fi
\addtocounter{AuthorsCount}{1}
}

\newcommand{\inc@format@author}[4]{
\mbox{%
{#1~\initial{#2}.\,\!\initial{#3}.% Small space between the initials.
  \ifx&#4&%
% empty
  \else
, #4% Better add a "\\" but in a tabular environment it does'nt work now.
\fi
}%
}%
}

\def\inc@add{, }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Определение вида аннотации ------------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewenvironment{abstract}[1][\inc@lang]
   {\ifthenelse{\equal{\inc@language}{Russian}\and\equal{#1}{english}}
         {\selectlanguage{english}%
          \centerline{\textbf{\abstractname}}%\addcontentsline{toc}{section}{\abstractname}%
          \selectlanguage{russian}%
         }
         {\centerline{\textbf{\abstractname}}%\addcontentsline{toc}{section}{\abstractname}%
         }
    \small
    \list{}{\listparindent 1.5em%
            \setlength{\partopsep}{0em}
            \setlength{\itemindent}{1.5em}
            \setlength{\listparindent}{1.5em}
            \setlength{\rightmargin}{0em}
            \setlength{\leftmargin}{0em}
            \setlength{\parsep}{0em}}%
    \item\relax   }
   {\endlist\Russian}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Определение вида оглавления, списка таблиц и рисунков ---%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setcounter {tocdepth}    {3} %Младший уровень вложенности в оглавлении
\renewcommand {\@pnumwidth} {2em} %Место под номер страницы в содержании

\renewcommand {\l@table}         {\@dottedtocline{1}{0pt}{1.5em}}
\renewcommand {\l@figure}        {\@dottedtocline{1}{0pt}{1.5em}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Определение вида заголовков -----------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setcounter {secnumdepth} {5} %Младший уровень вложенности, который нумируется

\def\postsection{.}
\def\postsubsection{.}
\def\postsubsubsection{.}
\def\postparagraph{.}
\def\postsubparagraph{.}

\def\@startsection#1#2#3#4#5#6{%
  \if@noskipsec \leavevmode \fi
  \par
  \@tempskipa #4\relax
  \@afterindenttrue
  \ifdim \@tempskipa <\z@
    \@tempskipa -\@tempskipa %\@afterindentfalse
  \fi
  \if@nobreak
    \everypar{}%
  \else
    \addpenalty\@secpenalty\addvspace\@tempskipa
  \fi
  \@ifstar
    {\@ssect{#3}{#4}{#5}{#6}}%
    {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}}
%%%%%%%%%%%%
\def\@sect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M \ignorespaces#8\@@par}%Вставил \ignorespaces
    \endgroup
    \csname #1mark\endcsname{\protect\ignorespaces #7}%
    \addcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname\csname post#1\endcsname}%
      \fi
    %  \protect #7
    }%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec #8}%
      \csname #1mark\endcsname{\protect\ignorespaces #7}%
      \addcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname\csname post#1\endcsname}%
        \fi
        %\protect #7
      }}%
  \fi
  \@xsect{#5}}
%%%%%%
\def\@xsect#1{%
  \@tempskipa #1\relax
  \ifdim \@tempskipa>\z@
    \par \nobreak
    \vskip \@tempskipa
    \@afterheading
  \else
    \@nobreakfalse
    \global\@noskipsectrue
    \everypar{%
      \if@noskipsec
        \global\@noskipsecfalse
       {\setbox\z@\lastbox}%
        \clubpenalty\@M
        \begingroup \@svsechd \endgroup
        \unskip
        \@tempskipa #1\relax
        \hskip -\@tempskipa
      \else
        \clubpenalty \@clubpenalty
        \everypar{}%
      \fi}%
  \fi
  \ignorespaces}
\def\@seccntformat#1{\csname the#1\endcsname\csname post#1\endcsname\ }
\def\@ssect#1#2#3#4#5{%
  \@tempskipa #3\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #4{%
        \@hangfrom{\hskip #1}%
          \interlinepenalty \@M #5\@@par}%
    \endgroup
  \else
    \def\@svsechd{#4{\hskip #1\relax #5}}%
  \fi
  \@xsect{#3}}

\renewcommand\section{\@startsection {section}{1}{\parindent}%
                                   {-1.6ex \@plus -0.1ex \@minus -.2ex}%
                                   {1.2ex \@plus.2ex}%
                                   {\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\parindent}%
                                     {-1.6ex\@plus -0.1ex \@minus -.2ex}%
                                     {1.2ex \@plus .2ex}%
                                     {\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\parindent}%
                                     {-1.5ex\@plus -0.1ex \@minus -.2ex}%
                                     {1.2ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\parindent}%
                                    {-1.5ex \@plus 0.1ex \@minus.2ex}%
                                    {1.2ex \@plus.2ex}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {-1.5ex \@plus 0.1ex \@minus .2ex}%
                                       {1.2ex \@plus.2ex}%
                                       {\normalfont\normalsize\bfseries}}

\def\introduction{\addcontentsline{toc}{section}{\introductionname}\section*{\introductionname}}
\def\conclusion{\addcontentsline{toc}{section}{\conclusionname}\section*{\conclusionname}}
\def\thanks{\addcontentsline{toc}{section}{\thanksname}\section*{\thanksname}}

\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraph}{\thesubsubsection.\arabic{paragraph}}
\renewcommand{\thesubparagraph}{\theparagraph.\arabic{subparagraph}}

\newcommand\newappendix{\par
  \setcounter{section}{0}%
}

\renewcommand{\appendix}[1]{
\refstepcounter{section}
\vspace{1.8ex \@plus -0.1ex \@minus -.2ex}
\hfill{\normalfont\Large\bfseries\appendixname\ \thesection\postsection\par
\begin{center}#1\end{center}}
\vspace{1.3ex \@plus.2ex}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Определение вида заголовка таблиц и рисунков-------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\posttable{.}
\def\postfigure{.}

\long\def\@makecaption#1#2#3{%
  \sbox\@tempboxa{\textbf{#2\csname post#1\endcsname\ #3}}%
  \ifdim \wd\@tempboxa >\hsize
    \begin{center}
    \textbf{#2\csname post#1\endcsname \ #3}
    \end{center}
    \vspace{-1.5em}
  \else
    \global \@minipagefalse
  \vskip\belowcaptionskip
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \vspace{0.5em}%\belowcaptionskip
  \fi
}

\long\def\@caption#1[#2]#3{%
  \par
  \addcontentsline{\csname ext@#1\endcsname}{#1}%
    {\protect\numberline{\csname the#1\endcsname\csname post#1\endcsname}
                        {\ignorespaces #2}}%
  \begingroup
    \@parboxrestore
    \if@minipage
      \@setminipage
    \fi
    \normalsize
    \@makecaption{#1}{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Определение вида нумерации таблиц, рисунков и формул ----%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\@addtoreset{table}{section}
%\renewcommand{\thetable}%Сквозная нумерация в пределах раздела
%{\arabic{table}}

%\@addtoreset{figure}{section}
%\renewcommand{\thefigure}%Сквозная нумерация в пределах раздела
%{\arabic{figure}}

%\@addtoreset{equation}{section}
%\renewcommand{\theequation}%Сквозная нумерация в пределах раздела
%{\arabic{equation}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------- Определение вида списка литературы ----------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand{\@biblabel}[1]{#1.}

\renewenvironment{thebibliography}[1]
     {%
      \section*{\refname
        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
      \addcontentsline{toc}{section}{\refname}
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\theenumii}{\asbuk{enumii}} % Второй уровень enumerate
                                          % русскими буквами
\renewcommand{\labelenumi}{\theenumi )}   % Первый уровень enumerate с )
\renewcommand{\labelenumii}{\theenumii )} % Второй уровень enumerate с )


\newcommand{\term}[2][]{\ifthenelse{\equal{#1}{}}
           {#2\index{#2}}
           {#2\index{#1}}%
}

%\newif\if@ismathexplain \@ismathexplainfalse
%\newdimen\@amthexplabelwidth
%\setbox0=\hbox{\csname wherename\endcsname~}
%\@amthexplabelwidth\wd0

\def\explainline#1{\item #1 \renewcommand{\labelitemi}{~}}

\newenvironment{mathexplain}{%
  \renewcommand{\labelitemi}{\wherename~}
  \@ismathexplaintrue
  \begin{itemize}
}{
  \end{itemize}
  \@ismathexplainfalse
}


\renewcommand\indexspace{\par \vskip 8\p@ \@plus5\p@ \@minus3\p@\relax}



\RequirePackage{../IncProposition}
\RequirePackage{head}

\def\startheadings{
\head
%верхний колонтитул на страницах с четными номерами
\renewcommand{\@oddfoot}
   {\raisebox{0pt}[\headheight][0pt]{% начало блока
    \vbox{\hrule\smallskip\hbox to\textwidth{%
          {\hfill\tiny
           \begin{tabularx}{180mm}{lXr}
          % \begin{longtable}[h]{lcr}
\begin{minipage}[h]{60mm}
{\Russian
{ТРУДЫ КОНФЕРЕНЦИИ}

{<<ТЕХНОЛОГИИ ИНФОРМАТИЗАЦИИ}

{ПРОФЕССИОНАЛЬНОЙ ДЕЯТЕЛЬНОСТИ>>}

{ТОМ 2, ИЖЕВСК, 6--8 НОЯБРЯ, 2014}
}
\end{minipage}
&
\hfil
\begin{minipage}[h]{15mm}
\includegraphics[draft=false,width=12mm]{itpa.png}
\end{minipage}
\hfill
&
\begin{minipage}[h]{60mm}
{%\Russian
\uppercase{Proceedings of conference}

``\uppercase{Technologies of informatisation}

\uppercase{in professional activity}''

\uppercase{Vol.2, Izhevsk, November 6--8, 2014}
}
\end{minipage}
           \end{tabularx}\hfill
          }%
          \hfil}}}% конец блока
   }% конец макроопределения
}

\inputencoding{\inc@inputencoding}
