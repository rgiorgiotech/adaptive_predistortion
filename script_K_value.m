close all
clear variables
clc

% Set common plot properties
SetPlotsPRO('FormFactor',16/9,'FontSize',16,'TickPosition','padded','Dock','docked');

%% Get K values

% Generate a linear space
x = linspace(0.4,1.1,1e3);

% Define CF
rms = 2;
sPeak = 1*x;
CF = sPeak/rms;
CF_log = 20*log10(CF);

% Plot CF in lin-lin scale
figure(1)
clf
hold on
axis square
plot(x,abs(CF_log),'-','Color','red','LineWidth',1.5)
yline(6, '--','LineWidth',1.2,'Alpha',1)
yline(8, '--','LineWidth',1.2,'Alpha',1)
yline(9, '--','LineWidth',1.2,'Alpha',1)
xlabel('K')
ylabel('CF [dB]')
ylim([0 15])
xlim([0.4 1.1])

% Extrapolate K value from CF values
CF_vec_dB = [6 8 9];
for ii=1:length(CF_vec_dB)
    index = find(round(abs(CF_log),2) == CF_vec_dB(ii));
    K(ii)= x(index(1));
    plot([K(ii) K(ii)],[0 CF_vec_dB(ii)],'--','Color','black')
    text(K(ii)+0.04,CF_vec_dB(ii)+0.4,['K = ',num2str(round(K(ii),2))],'FontSize',12)
end
plot(K,[6,8,9],'o','color','blue','markersize',7,'LineWidth',1.7,'MarkerFaceColor','blue')


