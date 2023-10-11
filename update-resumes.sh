#!/usr/bin/env bash 
set -xe
dir=`pwd`

for file in Resume_*.tex; do
	pdflatex -halt-on-error "$file"
	ln -sf "$dir/${file%.tex}.pdf" ~/Documents/Resumes/ #
done

# Now we link the CpE resume as the default resume
ln -sf ~/Documents/Resumes/Resume_CpE.pdf ~/Documents/Resumes/Resume.pdf
ln -sf Resume_CpE.pdf Resume.pdf
