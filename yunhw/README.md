# yunhw
> A template class for typing assignment.

## Usage
Use `yunhw` as the document class, and set keywords arguments in bracket.

Note that there are default values for arguments `semester`, `name`, and `uid`.

### Example
```latex
\documentclass[
    courselabel = STAT2021,
    coursetitle = Title\space of\space course,
    hwnum = 1
]{yunhw}
```
## Suggestions
Some of my habits
1. Use `\section*{Question 1}` to make title for each question.
2. Use enumerate environment for subquestions as below,
```latex
\begin{enumerate}[label=\textbf{(\alph*)}, align=left, leftmargin=*]
    \item answer for Q1 (a)
    \item answer for Q1 (b)
\end{enumerate}
```
