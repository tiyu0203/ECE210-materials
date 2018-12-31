function Hd = getFilter3()
    %GETFILTER Returns a discrete-time filter System object.

    % MATLAB Code
    % Generated by MATLAB(R) 9.4 and DSP System Toolbox 9.6.
    % Generated on: 28-Mar-2018 16:27:42

    Fpass = 1000;  % Passband Frequency
    Fstop = 2000;  % Stopband Frequency
    Apass = 1;     % Passband Ripple (dB)
    Astop = 80;    % Stopband Attenuation (dB)
    Fs    = 8192;  % Sampling Frequency

    h = fdesign.lowpass('fp,fst,ap,ast', Fpass, Fstop, Apass, Astop, Fs);

    Hd = design(h, 'butter', ...
        'MatchExactly', 'stopband', ...
        'SystemObject', true);
end