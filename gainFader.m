classdef gainFader <audioPlugin
    
    properties
        GainFader = 0;
    end
    properties (Constant)
        PluginInterface = ...
            audioPluginInterface(...
            audioPluginParameter('GainFader',...
            'DisplayName', 'Gain', ...
            'Label', 'dB', ...
            'Mapping',{'lin',-48,12})) % 0= silence, 
    end
    
    methods
   
        function out = process(plugin,in)
            linAmp = 10 ^ (plugin.GainFader/20);
        out = linAmp * in;   
        end
        
       
    end
end
