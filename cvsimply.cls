\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cvsimply}[2022/03/12 v1.0 A Simple CV Class]

% Based on the report class
\LoadClass[12pt]{report}

% Page set up and no paragraphs indented
\usepackage[a4paper, total={7.3in, 11.2in}]{geometry}
\setlength\parindent{0pt}

% Keep bullets tightly together
\usepackage{enumitem}
\setitemize{noitemsep,topsep=0pt}

% identity command to define your
% #1 name
% #2 email
% #3 phone
% #4 website url
% #5 location or address
\newcommand{\identity}[5]{
	\begin{center}
		{\huge \textbf{#1}}
	\end{center}
	\begin{center}
		\begin{tabular}{ c|c|c|c } 
			#2 & #3 & #4 & #5
		\end{tabular}
	\end{center}
}

% For section headings
\newcommand{\heading}[1]{
	\smallskip{\Large \textbf{#1}}\hrulefill
	\smallskip
}

% For job or education listings
\newcommand{\sublisting}[2]{
	\small{\textit{#1} \hfill \textit{#2}}
}
\newcommand{\listing}[4]{
	\vspace{5pt}
	\textbf{#1} \hfill #2 \break
	\small{\textit{#3} \hfill \textit{#4}}
}
