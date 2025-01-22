function SetPlotsPRO(varargin)

% Default variables
formfactor = 16/9;
palette = jet(6);
smooth = 'on';
dock = 'normal';
interpreter = 'tex';
fontname = 'Helvetica';
multipl = 1;
tickposition = 'tickaligned';
alphagrid = 0.08;
minorgrid = 'off';
fontweight = 'bold';
fontsize = 15;
linewidth = 1.2;
axesbox = 'on';
markersize = 5;
axeswidth = 1.5;

% Default field value
Field = ["FormFactor","Palette","Smooth","Dock","Interpreter","FontName","Multiplier","FontSize","TickPosition","AlphaGrid","MinorGrid","FontWeight","LineWidth","AxesBox","MarkerSize","AxesWidth"];
FieldValue{1} = formfactor;
FieldValue{2} = palette;
FieldValue{3} = smooth;
FieldValue{4} = dock;
FieldValue{5} = interpreter;
FieldValue{6} = fontname;
FieldValue{7} = multipl;
FieldValue{8} = fontsize;
FieldValue{9} = tickposition;
FieldValue{10} = alphagrid;
FieldValue{11} = minorgrid;
FieldValue{12} = fontweight;
FieldValue{13} = linewidth;
FieldValue{14} = axesbox;
FieldValue{15} = markersize;
FieldValue{16} = axeswidth;

% Getting arguments from varargin
if ~isempty(varargin)
    for N = 1:length(Field)
        % Check for n-field
        bTest = cellfun(@(x) strcmpi(x,Field(N)),varargin);
        if find(bTest)>0
            FieldValue{N} = varargin{1,find(bTest)+1};
        end
    end
end

% ---------- Figure ---------- %
set(0,'DefaultFigureWindowStyle',char(FieldValue(4)))
set(0,'DefaultFigurePosition',2.5e3*[0.10 0.10 0.4 0.4*cell2mat(FieldValue(1))^-1]);
set(0,'DefaultFigureColor',[1 1 1])
set(0,'DefaultFigureColormap', cell2mat(FieldValue(2)));
set(0,'DefaultFigureAlphamap', 1);
set(0,'DefaultFigureNextPlot', 'add');
set(0,'DefaultFigureGraphicsSmoothing', char(FieldValue(3)));

% ---------- Axes ---------- %
set(0,'DefaultAxesBox',char(FieldValue(14)));
set(0,'DefaultAxesFontName',char(FieldValue(6)));
set(0,'DefaultAxesFontWeight',char(FieldValue(12)));
set(0,'DefaultAxesFontSize',cell2mat(FieldValue(8))-3);
set(0,'DefaultAxesLabelFontSizeMultiplier',cell2mat(FieldValue(7)));
set(0,'DefaultAxesTitleFontSizeMultiplier',cell2mat(FieldValue(7)));
set(0,'DefaultAxesTitleFontWeight',char(FieldValue(12)));
set(0,'DefaultAxesLineWidth',cell2mat(FieldValue(16)));
set(0,'DefaultAxesTickLength',[0.03 0.03]);
set(0,'DefaultAxesXColor','k','DefaultAxesYColor','k');
set(0,'DefaultAxesXMinorTick','on','DefaultAxesYMinorTick','on');
set(0,'DefaultAxesColorOrder',palette);
set(0,'DefaultAxesTickLabelInterpreter',char(FieldValue(5)));
set(0,'DefaultAxesXLimitMethod',char(FieldValue(9)));
set(0,'DefaultAxesYLimitMethod',char(FieldValue(9)));
set(0,'DefaultAxesXAxisLocation','bottom'); %top %origin
set(0,'DefaultAxesYAxisLocation','left'); %top %origin
set(0,'DefaultAxesXDir','normal'); %reverse
set(0,'DefaultAxesYDir','normal'); %reverse
set(0,'DefaultAxesGridLineStyle','-');
set(0,'DefaultAxesGridLineWidth',0.3);
set(0,'DefaultAxesGridColor',[0.15 0.15 0.15]);
set(0,'DefaultAxesGridAlpha',cell2mat(FieldValue(10)));
set(0,'DefaultAxesXMinorGrid',char(FieldValue(11)));
set(0,'DefaultAxesYMinorGrid',char(FieldValue(11)));
set(0,'DefaultAxesMinorGridLineStyle','-');
set(0,'DefaultAxesMinorGridLineWidth',0.3);
set(0,'DefaultAxesMinorGridColor',[0.15 0.15 0.15]);
set(0,'DefaultAxesMinorGridAlpha',cell2mat(FieldValue(10)));

% ---------- Text ---------- %
set(0,'DefaultTextFontSize',cell2mat(FieldValue(8)));
set(0,'DefaultTextInterpreter',char(FieldValue(5)));
set(0,'DefaultTextFontName',char(FieldValue(6)));
set(0,'DefaultTextFontName','normal');
set(0,'DefaultTextFontAngle','normal');
set(0,'DefaultTextHorizontalAlignment','center');
set(0,'DefaultTextVerticalAlignment','middle');

% ---------- Legend ---------- %
set(0,'DefaultLegendAutoUpdate', 'on');
set(0,'DefaultLegendLocation', 'best');
set(0,'DefaultLegendOrientation', 'vertical');
set(0,'DefaultLegendDirection', 'normal');
set(0,'DefaultLegendInterpreter', char(FieldValue(5)));
set(0,'DefaultLegendFontSize', cell2mat(FieldValue(8))-4);
set(0,'DefaultLegendFontWeight', 'normal');
set(0,'DefaultLegendFontAngle', 'normal');
set(0,'DefaultLegendBox','off');

% ---------- Plot ---------- %
set(0,'DefaultLineLineWidth',cell2mat(FieldValue(13)));
set(0,'DefaultLineMarkerSize',cell2mat(FieldValue(15)));
set(0,'DefaultLineMarkerFaceColor','w');
set(0,'DefaultLineMarker','o');

end