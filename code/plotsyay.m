%% make some plots


%% first plot, true positive, false positive
NF=2.1e6;
NP=849;
kmeans=[753 691 692 676; 251 152 151 136];
kmeans(1,:)=kmeans(1,:)./NP;
kmeans(2,:)=kmeans(2,:)./NF;
gmm=[731 732 727 727; 167 216 205 173];
gmm(1,:)=gmm(1,:)./NP;
gmm(2,:)=gmm(2,:)./NF;
onlinear=[758/NP,123/NF];
onlinearar=[808/NP,112/NF];
onlinemcar=[830/NP,137/NF];
onlinemcarar=[845/NP,145/NF];
onlinealtdict=[826/NP,205/NF];
onlinethresh=[687/NP 145/NF];
onlinewhite=[683/NP 183/NF];
FMM=[667/NP 121/NF];
DPMM=[722/NP 186/NF];
figure(1);
mksize=34;
fs=20;
clf
hold on
plot(kmeans(2,1),kmeans(1,1),'r.','MarkerSize',mksize)
t=text(kmeans(2,1),kmeans(1,1),' K-2');set(t,'FontSize',fs)
plot(kmeans(2,2),kmeans(1,2),'r.','MarkerSize',mksize)
t=text(kmeans(2,2),kmeans(1,2),' K-3');set(t,'FontSize',fs)
plot(kmeans(2,3),kmeans(1,3),'r.','MarkerSize',mksize)
t=text(kmeans(2,3),kmeans(1,3),' K-4');set(t,'FontSize',fs)
plot(kmeans(2,4),kmeans(1,4),'r.','MarkerSize',mksize)
t=text(kmeans(2,4),kmeans(1,4),' K-5');set(t,'FontSize',fs)
plot(gmm(2,1),gmm(1,1),'b.','MarkerSize',mksize)
t=text(gmm(2,1)-1.4e-5,gmm(1,1),' GMM-2');set(t,'FontSize',fs)
plot(gmm(2,2),gmm(1,2),'b.','MarkerSize',mksize)
t=text(gmm(2,2),gmm(1,2)+.01,' GMM-3');set(t,'FontSize',fs)
plot(gmm(2,3),gmm(1,3),'b.','MarkerSize',mksize)
t=text(gmm(2,3)-.01e-5,gmm(1,3)-.01,' GMM-4');set(t,'FontSize',fs)
plot(gmm(2,4),gmm(1,4),'b.','MarkerSize',mksize)
t=text(gmm(2,4),gmm(1,4)+.01,' GMM-5');set(t,'FontSize',fs)
%online-ARN
plot(onlinear(2),onlinear(1),'k.','MarkerSize',mksize)
t=text(onlinear(2),onlinear(1),' ORGASM');set(t,'FontSize',fs)
plot(onlinearar(2),onlinearar(1),'k.','MarkerSize',mksize)
t=text(onlinearar(2),onlinearar(1),' ORGASMR');set(t,'FontSize',fs)
plot(onlinemcar(2),onlinemcar(1),'k.','MarkerSize',mksize)
t=text(onlinemcar(2),onlinemcar(1),' MORGASM');set(t,'FontSize',fs)
plot(onlinemcarar(2),onlinemcarar(1),'k.','MarkerSize',mksize)
t=text(onlinemcarar(2),onlinemcarar(1),' MORGASMR');set(t,'FontSize',fs)
plot(onlinethresh(2),onlinethresh(1),'k.','MarkerSize',mksize)
t=text(onlinethresh(2),onlinethresh(1)-.02,' FAKE-ORGASM');set(t,'FontSize',fs)
plot(onlinewhite(2),onlinewhite(1),'k.','MarkerSize',mksize)
t=text(onlinewhite(2),onlinewhite(1),' ORGASM-W');set(t,'FontSize',fs)
plot(FMM(2),FMM(1),'m.','MarkerSize',mksize)
t=text(FMM(2),FMM(1),' FMM');set(t,'FontSize',fs)
plot(DPMM(2),DPMM(1),'m.','MarkerSize',mksize)
t=text(DPMM(2)-.5e-5,DPMM(1)-.01,' DPMM');set(t,'FontSize',fs)
plot([4 12]*10^(-5),[0.75 1],'-k')
hold off
set(gca,'FontSize',24)
xlabel('False Positive Rate')
ylabel('True Positive Rate')
title('Performance on the IC Cluster')
% set(gca,'ytick'
grid on
%
wh=[2 2]*4;
set(gcf,'PaperSize',wh,'PaperPosition',[0 0 wh],'Color','w','PaperPositionMode','manual');
print('../figs/truefalsepositive','-dpdf')

