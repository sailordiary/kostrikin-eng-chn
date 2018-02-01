prologues := 3;
u := 1cm;
l := 1.4u;

verbatimtex
%&latex 
\documentclass[10pt]{article}
\begin{document}
etex

beginfig(1);
draw (0,0)..(l,0);
draw (3l,0)--(4l,0)--(4l,l)--(3l,l)--cycle;
draw (6l,0)--(7l,0)--(7l,l)--(6l,l)--cycle;
draw (6.35l,0.35l)--(6.35l,1.35l) dashed evenly scaled 1.5;

transform tt;
(0, 0) transformed tt = (6l, l);
(0, 1) transformed tt = (6.35l, 1.35l);
(1, 0) transformed tt = (7l, l);
draw (begingroup (0,0)--(0,1)--(1,1)--(1,0) endgroup) transformed tt;

transform tr;
(0, 0) transformed tr = (7l, 0);
(0, 1) transformed tr = (7l, l);
(1, 0) transformed tr = (7.35l, 0.35l);
draw (begingroup (0,0)--(1,0)--(1,1) endgroup) transformed tr;

transform tb;
(0, 0) transformed tb = (6l, 0);
(0, 1) transformed tb = (6.35l, 0.35l);
(1, 0) transformed tb = (7l, 0);
draw (begingroup (0,0)--(0,1)--(1,1) endgroup) transformed tb dashed evenly scaled 1.5;

pickup pencircle scaled 3pt;
drawdot (0,0);
label.bot(btex $0$ etex, (0,0));
drawdot (l,0);
label.bot(btex $1$ etex, (l,0));
label.bot(btex $n=1$ etex, (0.5l,-0.5u));
label.bot(btex $V_1 = \{0\}$ etex, (0.5l,-u));

drawdot (3l,0);
label.bot(btex $(0,0)$ etex, (3l,0));
drawdot (4l,0);
label.bot(btex $(1,0)$ etex, (4l,0));
drawdot (3l,l);
label.top(btex $(0,1)$ etex, (3l,l));
drawdot (4l,l);
label.top(btex $(1,1)$ etex, (4l,l));
label.bot(btex $n=2$ etex, (3.5l,-0.5u));
label.bot(btex $V_2 = \{(0,0), (1,1)\}$ etex, (3.5l,-u));

drawdot (6l,0);
label.bot(btex $(0,0,0)$ etex, (6l,0));
drawdot (6.35l,0.35l);
label.urt(btex ${\scriptstyle (0,1,0)}$ etex, (6.35l,0.35l));
drawdot (7l,0);
label.lrt(btex $(1,0,0)$ etex, (7l,0));
drawdot (7.35l,0.35l);
label.rt(btex $(1,1,0)$ etex, (7.35l,0.35l));
drawdot (7.35l,1.35l);
label.urt(btex $(1,1,1)$ etex, (7.35l,1.35l));
drawdot (6.35l,1.35l);
label.ulft(btex $(0,1,1)$ etex, (6.35l,1.35l));
drawdot (6l,l);
label.lft(btex $(0,0,1)$ etex, (6l,l));
drawdot (7l,l);
label.ulft(btex ${\scriptstyle (1,0,1)}$ etex, (7l,l));
label.bot(btex $n=3$ etex, (6.5l,-0.5u));
label.bot(btex \begin{tabular}{r}$V_3 = \{(0,0,0), (1,1,0),$ \\ $(1,0,1), (0,1,1)\}$\end{tabular} etex, (6.5l,-u));
endfig;

verbatimtex
\end{document}
etex
end
