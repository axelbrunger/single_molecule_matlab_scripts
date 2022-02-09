function[]=textBox1(putativeHits)

txtf1 = figure ('menu','none',...
    'Position', [850 500 450 350],...
    'visible','on',...
    'Resize', 'off');

set(txtf1,'name','Instructions','numbertitle','off')

txtFt=uicontrol('Style','text',...
    'Position',[50,240,355,55],...
    'FontSize', 20,...
    'String',['There are ', num2str(length(putativeHits)), ' potential hits.']);

txtFt=uicontrol('Style','text',...
    'Position',[25,130,405,95],...
    'FontSize', 20,...
    'String', 'Right arrow=advance, Left arrow=undo, Backspace=false positive, s=save for example, Esc=quit');
AnalyzeBtn2=uicontrol('Style','pushbutton','String','Yeah!',...
    'Position', [230 40 160 60],...
    'BackgroundColor', [.1 .0 .85],...
    'ForegroundColor', [.97 .97 .97],...
    'FontSize', 24,...
    'FontWeight', 'bold',...
    'Callback',@cancel_call);

    function cancel_call(varargin)
        
        assignin('base','cancel2',1);
        close gcf
    end

waitfor(txtf1)


end

