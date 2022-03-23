classdef distortion <audioPlugin
    
    properties
        Drive = 5;
    end
    properties (Constant)
        PluginInterface = ...
            audioPluginInterface(...
            audioPluginParameter('Drive',...
            'DisplayName', 'Drive', ...
            'Mapping',{'lin',0,10})) 
    end
    
    methods
   
        function out = process(plugin,in)
           
        out = (2/pi) * atan(plugin.Drive * in);   
        end
    end
end

