
%% Task 1
config;
sim_out = sim("model1.slx", 2);

time = sim_out.tout;
outy = sim_out.y;
y = outy(:, 1);
plot(time, y);

%%
task_number = 1;
set_number = 1;
path = "out/";

X1 = time;
Y1 = y;
y_lable = "$Time, s$";
x_lable = "$y(t)$";

% Create figure
figure1 =  figure();
% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');
% Create plot
plot(X1,Y1,'LineWidth',1.5,'Color',[0 0 0]);

% Create ylabel
ylabel(y_lable,...
'LineStyle','none',...
'HorizontalAlignment','center',...
'Interpreter','latex');
 
% Create xlabel
xlabel(x_lable,'HorizontalAlignment','center','Interpreter','latex');
 
% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0 10]);
% Set the remaining axes properties
set(axes1,'FontSize',14,'GridAlpha',0.5,'GridColor',[0 0 0],'XColor',...
[0 0 0],'XGrid','on','XMinorGrid','on','YColor',[0 0 0],'YGrid','on',...
'YMinorGrid','on','ZColor',[0 0 0]);

plot(X1, [1.05*ones(size(X1)) 0.95*ones(size(X1))],'--','LineWidth',0.5,'Color',[0.1 0.1 0.1]);
% plot(X1, 0.95*ones(size(X1)),'--','LineWidth',0.5,'Color',[0.1 0.1 0.1]);
index = sum(y < 0.955);
plot([(time(index)+time(index-1))/2 (time(index)+time(index-1))/2],[0, 0.95],'--','LineWidth',1,'Color',[0.5 0.5 0.5]);

hold(axes1,'off');

saveas(gcf, path+'task'+string(task_number)+'_'+string(set_number)+'.png')





