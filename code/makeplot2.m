load truepos
NP=849;
NF=2.1e6;
plot(K4_FP./NF,K4_TP./NP,'+-r',...
    OARno_FP./NF,OARno_TP./NP,'k.--',OAR_FP./NF,OAR_TP./NP,'k.-',...
    OMCAR_FP./NF,OMCAR_TP./NP,'b+-.','LineWidth',2,'MarkerSize',20)
axis([0,1e-4,0 1])
a=legend('K-4','ORGASM-R,nooverlap','ORGASM-R','MORGASM-R','Location','SouthEast');
set(a,'FontSize',26);
set(gca,'FontSize',24);
xlabel('False Positives','FontSize',28)
ylabel('True Positives','FontSize',28)
title('True and False Positives for the IC Cluster','FontSize',28)
print -dpdf icroc
!pdfcrop icroc.pdf icroc.pdf


