load truepos
onlinemcarar=[845/NP,145/NF];
onlinearar=[808/NP,112/NF];
mksize=40;
figure(1), clf
hold on
NP=849;
NF=2.1e6;
plot(K4_FP./NF,K4_TP./NP,'-r',...%OARno_FP./NF,OARno_TP./NP,'k.--',...
    OAR_FP./NF,OAR_TP./NP,'k-',...
    OMCAR_FP./NF,OMCAR_TP./NP,'b-','LineWidth',2,'MarkerSize',20)
plot(onlinearar(2),onlinearar(1),'k.','MarkerSize',mksize)
plot(onlinemcarar(2),onlinemcarar(1),'b.','MarkerSize',mksize)
axis([0,1e-4,0 1])
a=legend('K-4','OR','MOR','Location','SouthEast');
set(a,'FontSize',28);
set(gca,'FontSize',28);
grid on
xlabel('False Positive Rates','FontSize',28)
ylabel('True Positive Rates','FontSize',28)
title('ROC Curves for the IC Cluster','FontSize',28)
box off
print('../figs/new/icroc','-dpdf')
% !pdfcrop icroc.pdf icroc.pdf


