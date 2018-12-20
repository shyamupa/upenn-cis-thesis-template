Thesis template for organizing chapters and

I also have a makefile that compiles chapters separately (with bibliography)


### Compile Entire Thesis

Ensure that the correct biblio setting is active, 

```latex
%% TO TURN ON BIB FOR CHAPTER (when compiling chapters separately)
% \def\biblio{\bibliographystyle{abbrvnat}\bibliography{thesis}}
%% TO TURN OFF BIB FOR EACH CHAPTER, (for compiling the whole thesis)
\def\biblio{}
```

And then run 

```
make clean; make
```

### Compile Chapter
To compiling a single chapter for proofreading. 

Ensure that the correct biblio setting is active, 

```latex
%% TO TURN ON BIB FOR CHAPTER (when compiling chapters separately)
\def\biblio{\bibliographystyle{abbrvnat}\bibliography{thesis}}
%% TO TURN OFF BIB FOR EACH CHAPTER, (for compiling the whole thesis)
% \def\biblio{}
```

And then run 

```
make clean; make chapter1.pdf
```

### Remove Line Numbering

Line numbers are useful for getting comments from people. Remove them for the final version by commenting out the following

```
% FOR ADDING LINE NO. I have checked, this does not mess with margins (i.e. the # appears outside the margins, so no new orphans/widows are introduced)
\usepackage{lineno}
\linenumbers

```
