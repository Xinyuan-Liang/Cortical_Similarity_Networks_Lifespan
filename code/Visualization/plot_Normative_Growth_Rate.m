%% plot growth rate
flag = 'global mean of MIND';
load('/data/Growth_curve_global_mean_of_MIND.mat');

for i = 2:6 % plot 5%, 25%, 75%, and 95% centiles
    delta_y(:,i) = Y_centiles(2:8001,i) - Y_centiles(1:8000,i);
    rate(:,i) =  delta_y(:,i) / 0.01;
end

fig=figure;
% amount of shift of x and y axis in normalized coordinates
dx=0.02;
dy=0.03;
plotAx=axes('Position',[0.15 0.17 0.8 0.8],'Color','none');
% create shifted y axis
yax=axes('Position',plotAx.Position-[dx 0 -dx 0],'Color','none','XColor','none');
yax.XGrid='off';
yax.TickDir='out';
% create shifted x axis
xax=axes('Position',plotAx.Position-[0 dy 0 -dy],'Color','none','YColor','none');
xax.YGrid='off';
xax.TickDir='out';
axes(plotAx); % set curr axis

fig.Color='w';fig.Position=[100 100 1000 400]; 
hp=plot(X(2:8001),rate(:,3),'Color',[0 0 0],'LineWidth',4);
hold on;
hp=plot(X(2:8001),zeros(8000,1),'Color',[0 0 1 0.4],'LineWidth',4,'LineStyle','--');
box off;

max_data = max(max(rate(:,3)));
min_data = min(min(rate(:,3)));
max_min_range = max_data - min_data;

linkaxes([plotAx,yax,xax]);
yticklabels([]);
xticklabels([]);
% remove rulers
plotAx.XColor='none';
plotAx.YColor='none';
xax.XLim = [-1,80];

yax.YLim = [min_data - max_min_range/5, max_data + max_min_range/5];
xax.FontSize = 28;
yax.FontSize = 28;
xax.XAxis.TickLength = [0.025, 0];
yax.YAxis.TickLength = [0.025, 0];
xax.LineWidth = 2.5;
yax.LineWidth = 2.5;
xax.XAxis.TickValues = [0, 5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80]; 
xax.XAxis.TickLabels = {'0','','10','','20','','30','','40','','50','','60', '','70','','80'};
xlabel(xax, 'Age', 'FontSize', 28);
