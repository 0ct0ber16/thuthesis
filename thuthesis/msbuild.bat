REM �Ҳ���дbat������Ǵճ�����
REM ��Ҫ���� ^_^

REM ���� thuthesis.cls �� thuthesis.cpx
latex thuthesis.ins  

REM ����ʾ���ĵ� main.pdf 
latex main
bibtex main
latex main
gbk2uni main
latex main
dvips -Ppdf -G0 -ta4 main.dvi
ps2pdf main.ps

REM �����鼹 shuji.pdf
pdflatex shuji


REM ����˵���ĵ� thuthesis.pdf
latex thuthesis.dtx
makeindex -s gind.ist -o thuthesis.ind thuthesis.idx
makeindex -s gglo.ist -o thuthesis.gls thuthesis.glo
latex thuthesis.dtx
gbk2uni thuthesis.out
latex thuthesis.dtx 
dvips -Ppdf -G0 thuthesis.dvi
ps2pdf thuthesis.ps
