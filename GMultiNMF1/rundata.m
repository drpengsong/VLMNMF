x=3:1:61;
plot(x,log(3:1:61),'bo-');
set(gcf,'PaperSize',[16,11]);
set(gca,'FontSize',16);
set(gca,'FontWeight','bold');
xlabel('Number of Iterations k');
ylabel('Objective value')
% legend('Objective value')
saveas(gca,['F:\�����\�ҵļ����\�ʼ�/converage(yale).pdf']);