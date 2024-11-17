clear;
Fs = 10000; % (Hz)
duration = 1; % (s)
direction = "C:\Users\jhonn\Desktop\Datos_MNIRED\Synchronous\Connection\5 MW\180.txt";

inicios = 2 : 3 : 219;
finales = 4 : 3 : 220;

%% Set up the Import Options and import the data
opts = delimitedTextImportOptions("NumVariables", 220);

% Specify range and delimiter
opts.DataLines = [3, Inf];
opts.Delimiter = "\t";

% Specify column names and types
opts.VariableNames = ["AllCalculations", "Bus_0001", "Bus_0001_1", "Bus_0001_2", "Bus_0002", "Bus_0002_1", "Bus_0002_2", "Bus_0003", "Bus_0003_1", "Bus_0003_2", "Bus_0004", "Bus_0004_1", "Bus_0004_2", "Bus_0005", "Bus_0005_1", "Bus_0005_2", "Bus_0006", "Bus_0006_1", "Bus_0006_2", "Bus_0007", "Bus_0007_1", "Bus_0007_2", "Bus_0008", "Bus_0008_1", "Bus_0008_2", "Bus_0009", "Bus_0009_1", "Bus_0009_2", "Bus_0010", "Bus_0010_1", "Bus_0010_2", "Bus_0011", "Bus_0011_1", "Bus_0011_2", "Bus_0012", "Bus_0012_1", "Bus_0012_2", "Bus_0013", "Bus_0013_1", "Bus_0013_2", "Bus_0014", "Bus_0014_1", "Bus_0014_2", "Gen_0001", "Gen_0001_1", "Gen_0001_2", "Gen_0002", "Gen_0002_1", "Gen_0002_2", "Gen_0003", "Gen_0003_1", "Gen_0003_2", "Gen_0006", "Gen_0006_1", "Gen_0006_2", "Gen_0008", "Gen_0008_1", "Gen_0008_2", "Line_0001_00021", "Line_0001_00021_1", "Line_0001_00021_2", "Line_0001_00021_3", "Line_0001_00021_4", "Line_0001_00021_5", "Line_0001_00022", "Line_0001_00022_1", "Line_0001_00022_2", "Line_0001_00022_3", "Line_0001_00022_4", "Line_0001_00022_5", "Line_0001_0005", "Line_0001_0005_1", "Line_0001_0005_2", "Line_0001_0005_3", "Line_0001_0005_4", "Line_0001_0005_5", "Line_0002_0003", "Line_0002_0003_1", "Line_0002_0003_2", "Line_0002_0003_3", "Line_0002_0003_4", "Line_0002_0003_5", "Line_0002_0004", "Line_0002_0004_1", "Line_0002_0004_2", "Line_0002_0004_3", "Line_0002_0004_4", "Line_0002_0004_5", "Line_0002_0005", "Line_0002_0005_1", "Line_0002_0005_2", "Line_0002_0005_3", "Line_0002_0005_4", "Line_0002_0005_5", "Line_0003_0004", "Line_0003_0004_1", "Line_0003_0004_2", "Line_0003_0004_3", "Line_0003_0004_4", "Line_0003_0004_5", "Line_0004_0005", "Line_0004_0005_1", "Line_0004_0005_2", "Line_0004_0005_3", "Line_0004_0005_4", "Line_0004_0005_5", "Line_0006_0011", "Line_0006_0011_1", "Line_0006_0011_2", "Line_0006_0011_3", "Line_0006_0011_4", "Line_0006_0011_5", "Line_0006_0012", "Line_0006_0012_1", "Line_0006_0012_2", "Line_0006_0012_3", "Line_0006_0012_4", "Line_0006_0012_5", "Line_0006_0013", "Line_0006_0013_1", "Line_0006_0013_2", "Line_0006_0013_3", "Line_0006_0013_4", "Line_0006_0013_5", "Line_0009_0010", "Line_0009_0010_1", "Line_0009_0010_2", "Line_0009_0010_3", "Line_0009_0010_4", "Line_0009_0010_5", "Line_0009_0014", "Line_0009_0014_1", "Line_0009_0014_2", "Line_0009_0014_3", "Line_0009_0014_4", "Line_0009_0014_5", "Line_0010_0011", "Line_0010_0011_1", "Line_0010_0011_2", "Line_0010_0011_3", "Line_0010_0011_4", "Line_0010_0011_5", "Line_0012_0013", "Line_0012_0013_1", "Line_0012_0013_2", "Line_0012_0013_3", "Line_0012_0013_4", "Line_0012_0013_5", "Line_0013_0014", "Line_0013_0014_1", "Line_0013_0014_2", "Line_0013_0014_3", "Line_0013_0014_4", "Line_0013_0014_5", "Load_0002", "Load_0002_1", "Load_0002_2", "Load_0003", "Load_0003_1", "Load_0003_2", "Load_0004", "Load_0004_1", "Load_0004_2", "Load_0005", "Load_0005_1", "Load_0005_2", "Load_0006", "Load_0006_1", "Load_0006_2", "Load_0009", "Load_0009_1", "Load_0009_2", "Load_0010", "Load_0010_1", "Load_0010_2", "Load_0011", "Load_0011_1", "Load_0011_2", "Load_0012", "Load_0012_1", "Load_0012_2", "Load_0013", "Load_0013_1", "Load_0013_2", "Load_0014", "Load_0014_1", "Load_0014_2", "Shnt_0009", "Shnt_0009_1", "Shnt_0009_2", "Trf_0004_0007", "Trf_0004_0007_1", "Trf_0004_0007_2", "Trf_0004_0007_3", "Trf_0004_0007_4", "Trf_0004_0007_5", "Trf_0004_0009", "Trf_0004_0009_1", "Trf_0004_0009_2", "Trf_0004_0009_3", "Trf_0004_0009_4", "Trf_0004_0009_5", "Trf_0005_0006", "Trf_0005_0006_1", "Trf_0005_0006_2", "Trf_0005_0006_3", "Trf_0005_0006_4", "Trf_0005_0006_5", "Trf_0007_0008", "Trf_0007_0008_1", "Trf_0007_0008_2", "Trf_0007_0008_3", "Trf_0007_0008_4", "Trf_0007_0008_5", "Trf_0007_0009", "Trf_0007_0009_1", "Trf_0007_0009_2", "Trf_0007_0009_3", "Trf_0007_0009_4", "Trf_0007_0009_5"];
opts.VariableTypes = ["double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];

% Specify file level properties
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";

% Specify variable properties
opts = setvaropts(opts, ["AllCalculations", "Bus_0001", "Bus_0001_1", "Bus_0001_2", "Bus_0002", "Bus_0002_1", "Bus_0002_2", "Bus_0003", "Bus_0003_1", "Bus_0003_2", "Bus_0004", "Bus_0004_1", "Bus_0004_2", "Bus_0005", "Bus_0005_1", "Bus_0005_2", "Bus_0006", "Bus_0006_1", "Bus_0006_2", "Bus_0007", "Bus_0007_1", "Bus_0007_2", "Bus_0008", "Bus_0008_1", "Bus_0008_2", "Bus_0009", "Bus_0009_1", "Bus_0009_2", "Bus_0010", "Bus_0010_1", "Bus_0010_2", "Bus_0011", "Bus_0011_1", "Bus_0011_2", "Bus_0012", "Bus_0012_1", "Bus_0012_2", "Bus_0013", "Bus_0013_1", "Bus_0013_2", "Bus_0014", "Bus_0014_1", "Bus_0014_2", "Gen_0001", "Gen_0001_1", "Gen_0001_2", "Gen_0002", "Gen_0002_1", "Gen_0002_2", "Gen_0003", "Gen_0003_1", "Gen_0003_2", "Gen_0006", "Gen_0006_1", "Gen_0006_2", "Gen_0008", "Gen_0008_1", "Gen_0008_2", "Line_0001_00021", "Line_0001_00021_1", "Line_0001_00021_2", "Line_0001_00021_3", "Line_0001_00021_4", "Line_0001_00021_5", "Line_0001_00022", "Line_0001_00022_1", "Line_0001_00022_2", "Line_0001_00022_3", "Line_0001_00022_4", "Line_0001_00022_5", "Line_0001_0005", "Line_0001_0005_1", "Line_0001_0005_2", "Line_0001_0005_3", "Line_0001_0005_4", "Line_0001_0005_5", "Line_0002_0003", "Line_0002_0003_1", "Line_0002_0003_2", "Line_0002_0003_3", "Line_0002_0003_4", "Line_0002_0003_5", "Line_0002_0004", "Line_0002_0004_1", "Line_0002_0004_2", "Line_0002_0004_3", "Line_0002_0004_4", "Line_0002_0004_5", "Line_0002_0005", "Line_0002_0005_1", "Line_0002_0005_2", "Line_0002_0005_3", "Line_0002_0005_4", "Line_0002_0005_5", "Line_0003_0004", "Line_0003_0004_1", "Line_0003_0004_2", "Line_0003_0004_3", "Line_0003_0004_4", "Line_0003_0004_5", "Line_0004_0005", "Line_0004_0005_1", "Line_0004_0005_2", "Line_0004_0005_3", "Line_0004_0005_4", "Line_0004_0005_5", "Line_0006_0011", "Line_0006_0011_1", "Line_0006_0011_2", "Line_0006_0011_3", "Line_0006_0011_4", "Line_0006_0011_5", "Line_0006_0012", "Line_0006_0012_1", "Line_0006_0012_2", "Line_0006_0012_3", "Line_0006_0012_4", "Line_0006_0012_5", "Line_0006_0013", "Line_0006_0013_1", "Line_0006_0013_2", "Line_0006_0013_3", "Line_0006_0013_4", "Line_0006_0013_5", "Line_0009_0010", "Line_0009_0010_1", "Line_0009_0010_2", "Line_0009_0010_3", "Line_0009_0010_4", "Line_0009_0010_5", "Line_0009_0014", "Line_0009_0014_1", "Line_0009_0014_2", "Line_0009_0014_3", "Line_0009_0014_4", "Line_0009_0014_5", "Line_0010_0011", "Line_0010_0011_1", "Line_0010_0011_2", "Line_0010_0011_3", "Line_0010_0011_4", "Line_0010_0011_5", "Line_0012_0013", "Line_0012_0013_1", "Line_0012_0013_2", "Line_0012_0013_3", "Line_0012_0013_4", "Line_0012_0013_5", "Line_0013_0014", "Line_0013_0014_1", "Line_0013_0014_2", "Line_0013_0014_3", "Line_0013_0014_4", "Line_0013_0014_5", "Load_0002", "Load_0002_1", "Load_0002_2", "Load_0003", "Load_0003_1", "Load_0003_2", "Load_0004", "Load_0004_1", "Load_0004_2", "Load_0005", "Load_0005_1", "Load_0005_2", "Load_0006", "Load_0006_1", "Load_0006_2", "Load_0009", "Load_0009_1", "Load_0009_2", "Load_0010", "Load_0010_1", "Load_0010_2", "Load_0011", "Load_0011_1", "Load_0011_2", "Load_0012", "Load_0012_1", "Load_0012_2", "Load_0013", "Load_0013_1", "Load_0013_2", "Load_0014", "Load_0014_1", "Load_0014_2", "Shnt_0009", "Shnt_0009_1", "Shnt_0009_2", "Trf_0004_0007", "Trf_0004_0007_1", "Trf_0004_0007_2", "Trf_0004_0007_3", "Trf_0004_0007_4", "Trf_0004_0007_5", "Trf_0004_0009", "Trf_0004_0009_1", "Trf_0004_0009_2", "Trf_0004_0009_3", "Trf_0004_0009_4", "Trf_0004_0009_5", "Trf_0005_0006", "Trf_0005_0006_1", "Trf_0005_0006_2", "Trf_0005_0006_3", "Trf_0005_0006_4", "Trf_0005_0006_5", "Trf_0007_0008", "Trf_0007_0008_1", "Trf_0007_0008_2", "Trf_0007_0008_3", "Trf_0007_0008_4", "Trf_0007_0008_5", "Trf_0007_0009", "Trf_0007_0009_1", "Trf_0007_0009_2", "Trf_0007_0009_3", "Trf_0007_0009_4", "Trf_0007_0009_5"], "TrimNonNumeric", true);
opts = setvaropts(opts, ["AllCalculations", "Bus_0001", "Bus_0001_1", "Bus_0001_2", "Bus_0002", "Bus_0002_1", "Bus_0002_2", "Bus_0003", "Bus_0003_1", "Bus_0003_2", "Bus_0004", "Bus_0004_1", "Bus_0004_2", "Bus_0005", "Bus_0005_1", "Bus_0005_2", "Bus_0006", "Bus_0006_1", "Bus_0006_2", "Bus_0007", "Bus_0007_1", "Bus_0007_2", "Bus_0008", "Bus_0008_1", "Bus_0008_2", "Bus_0009", "Bus_0009_1", "Bus_0009_2", "Bus_0010", "Bus_0010_1", "Bus_0010_2", "Bus_0011", "Bus_0011_1", "Bus_0011_2", "Bus_0012", "Bus_0012_1", "Bus_0012_2", "Bus_0013", "Bus_0013_1", "Bus_0013_2", "Bus_0014", "Bus_0014_1", "Bus_0014_2", "Gen_0001", "Gen_0001_1", "Gen_0001_2", "Gen_0002", "Gen_0002_1", "Gen_0002_2", "Gen_0003", "Gen_0003_1", "Gen_0003_2", "Gen_0006", "Gen_0006_1", "Gen_0006_2", "Gen_0008", "Gen_0008_1", "Gen_0008_2", "Line_0001_00021", "Line_0001_00021_1", "Line_0001_00021_2", "Line_0001_00021_3", "Line_0001_00021_4", "Line_0001_00021_5", "Line_0001_00022", "Line_0001_00022_1", "Line_0001_00022_2", "Line_0001_00022_3", "Line_0001_00022_4", "Line_0001_00022_5", "Line_0001_0005", "Line_0001_0005_1", "Line_0001_0005_2", "Line_0001_0005_3", "Line_0001_0005_4", "Line_0001_0005_5", "Line_0002_0003", "Line_0002_0003_1", "Line_0002_0003_2", "Line_0002_0003_3", "Line_0002_0003_4", "Line_0002_0003_5", "Line_0002_0004", "Line_0002_0004_1", "Line_0002_0004_2", "Line_0002_0004_3", "Line_0002_0004_4", "Line_0002_0004_5", "Line_0002_0005", "Line_0002_0005_1", "Line_0002_0005_2", "Line_0002_0005_3", "Line_0002_0005_4", "Line_0002_0005_5", "Line_0003_0004", "Line_0003_0004_1", "Line_0003_0004_2", "Line_0003_0004_3", "Line_0003_0004_4", "Line_0003_0004_5", "Line_0004_0005", "Line_0004_0005_1", "Line_0004_0005_2", "Line_0004_0005_3", "Line_0004_0005_4", "Line_0004_0005_5", "Line_0006_0011", "Line_0006_0011_1", "Line_0006_0011_2", "Line_0006_0011_3", "Line_0006_0011_4", "Line_0006_0011_5", "Line_0006_0012", "Line_0006_0012_1", "Line_0006_0012_2", "Line_0006_0012_3", "Line_0006_0012_4", "Line_0006_0012_5", "Line_0006_0013", "Line_0006_0013_1", "Line_0006_0013_2", "Line_0006_0013_3", "Line_0006_0013_4", "Line_0006_0013_5", "Line_0009_0010", "Line_0009_0010_1", "Line_0009_0010_2", "Line_0009_0010_3", "Line_0009_0010_4", "Line_0009_0010_5", "Line_0009_0014", "Line_0009_0014_1", "Line_0009_0014_2", "Line_0009_0014_3", "Line_0009_0014_4", "Line_0009_0014_5", "Line_0010_0011", "Line_0010_0011_1", "Line_0010_0011_2", "Line_0010_0011_3", "Line_0010_0011_4", "Line_0010_0011_5", "Line_0012_0013", "Line_0012_0013_1", "Line_0012_0013_2", "Line_0012_0013_3", "Line_0012_0013_4", "Line_0012_0013_5", "Line_0013_0014", "Line_0013_0014_1", "Line_0013_0014_2", "Line_0013_0014_3", "Line_0013_0014_4", "Line_0013_0014_5", "Load_0002", "Load_0002_1", "Load_0002_2", "Load_0003", "Load_0003_1", "Load_0003_2", "Load_0004", "Load_0004_1", "Load_0004_2", "Load_0005", "Load_0005_1", "Load_0005_2", "Load_0006", "Load_0006_1", "Load_0006_2", "Load_0009", "Load_0009_1", "Load_0009_2", "Load_0010", "Load_0010_1", "Load_0010_2", "Load_0011", "Load_0011_1", "Load_0011_2", "Load_0012", "Load_0012_1", "Load_0012_2", "Load_0013", "Load_0013_1", "Load_0013_2", "Load_0014", "Load_0014_1", "Load_0014_2", "Shnt_0009", "Shnt_0009_1", "Shnt_0009_2", "Trf_0004_0007", "Trf_0004_0007_1", "Trf_0004_0007_2", "Trf_0004_0007_3", "Trf_0004_0007_4", "Trf_0004_0007_5", "Trf_0004_0009", "Trf_0004_0009_1", "Trf_0004_0009_2", "Trf_0004_0009_3", "Trf_0004_0009_4", "Trf_0004_0009_5", "Trf_0005_0006", "Trf_0005_0006_1", "Trf_0005_0006_2", "Trf_0005_0006_3", "Trf_0005_0006_4", "Trf_0005_0006_5", "Trf_0007_0008", "Trf_0007_0008_1", "Trf_0007_0008_2", "Trf_0007_0008_3", "Trf_0007_0008_4", "Trf_0007_0008_5", "Trf_0007_0009", "Trf_0007_0009_1", "Trf_0007_0009_2", "Trf_0007_0009_3", "Trf_0007_0009_4", "Trf_0007_0009_5"], "DecimalSeparator", ",");
opts = setvaropts(opts, ["AllCalculations", "Bus_0001", "Bus_0001_1", "Bus_0001_2", "Bus_0002", "Bus_0002_1", "Bus_0002_2", "Bus_0003", "Bus_0003_1", "Bus_0003_2", "Bus_0004", "Bus_0004_1", "Bus_0004_2", "Bus_0005", "Bus_0005_1", "Bus_0005_2", "Bus_0006", "Bus_0006_1", "Bus_0006_2", "Bus_0007", "Bus_0007_1", "Bus_0007_2", "Bus_0008", "Bus_0008_1", "Bus_0008_2", "Bus_0009", "Bus_0009_1", "Bus_0009_2", "Bus_0010", "Bus_0010_1", "Bus_0010_2", "Bus_0011", "Bus_0011_1", "Bus_0011_2", "Bus_0012", "Bus_0012_1", "Bus_0012_2", "Bus_0013", "Bus_0013_1", "Bus_0013_2", "Bus_0014", "Bus_0014_1", "Bus_0014_2", "Gen_0001", "Gen_0001_1", "Gen_0001_2", "Gen_0002", "Gen_0002_1", "Gen_0002_2", "Gen_0003", "Gen_0003_1", "Gen_0003_2", "Gen_0006", "Gen_0006_1", "Gen_0006_2", "Gen_0008", "Gen_0008_1", "Gen_0008_2", "Line_0001_00021", "Line_0001_00021_1", "Line_0001_00021_2", "Line_0001_00021_3", "Line_0001_00021_4", "Line_0001_00021_5", "Line_0001_00022", "Line_0001_00022_1", "Line_0001_00022_2", "Line_0001_00022_3", "Line_0001_00022_4", "Line_0001_00022_5", "Line_0001_0005", "Line_0001_0005_1", "Line_0001_0005_2", "Line_0001_0005_3", "Line_0001_0005_4", "Line_0001_0005_5", "Line_0002_0003", "Line_0002_0003_1", "Line_0002_0003_2", "Line_0002_0003_3", "Line_0002_0003_4", "Line_0002_0003_5", "Line_0002_0004", "Line_0002_0004_1", "Line_0002_0004_2", "Line_0002_0004_3", "Line_0002_0004_4", "Line_0002_0004_5", "Line_0002_0005", "Line_0002_0005_1", "Line_0002_0005_2", "Line_0002_0005_3", "Line_0002_0005_4", "Line_0002_0005_5", "Line_0003_0004", "Line_0003_0004_1", "Line_0003_0004_2", "Line_0003_0004_3", "Line_0003_0004_4", "Line_0003_0004_5", "Line_0004_0005", "Line_0004_0005_1", "Line_0004_0005_2", "Line_0004_0005_3", "Line_0004_0005_4", "Line_0004_0005_5", "Line_0006_0011", "Line_0006_0011_1", "Line_0006_0011_2", "Line_0006_0011_3", "Line_0006_0011_4", "Line_0006_0011_5", "Line_0006_0012", "Line_0006_0012_1", "Line_0006_0012_2", "Line_0006_0012_3", "Line_0006_0012_4", "Line_0006_0012_5", "Line_0006_0013", "Line_0006_0013_1", "Line_0006_0013_2", "Line_0006_0013_3", "Line_0006_0013_4", "Line_0006_0013_5", "Line_0009_0010", "Line_0009_0010_1", "Line_0009_0010_2", "Line_0009_0010_3", "Line_0009_0010_4", "Line_0009_0010_5", "Line_0009_0014", "Line_0009_0014_1", "Line_0009_0014_2", "Line_0009_0014_3", "Line_0009_0014_4", "Line_0009_0014_5", "Line_0010_0011", "Line_0010_0011_1", "Line_0010_0011_2", "Line_0010_0011_3", "Line_0010_0011_4", "Line_0010_0011_5", "Line_0012_0013", "Line_0012_0013_1", "Line_0012_0013_2", "Line_0012_0013_3", "Line_0012_0013_4", "Line_0012_0013_5", "Line_0013_0014", "Line_0013_0014_1", "Line_0013_0014_2", "Line_0013_0014_3", "Line_0013_0014_4", "Line_0013_0014_5", "Load_0002", "Load_0002_1", "Load_0002_2", "Load_0003", "Load_0003_1", "Load_0003_2", "Load_0004", "Load_0004_1", "Load_0004_2", "Load_0005", "Load_0005_1", "Load_0005_2", "Load_0006", "Load_0006_1", "Load_0006_2", "Load_0009", "Load_0009_1", "Load_0009_2", "Load_0010", "Load_0010_1", "Load_0010_2", "Load_0011", "Load_0011_1", "Load_0011_2", "Load_0012", "Load_0012_1", "Load_0012_2", "Load_0013", "Load_0013_1", "Load_0013_2", "Load_0014", "Load_0014_1", "Load_0014_2", "Shnt_0009", "Shnt_0009_1", "Shnt_0009_2", "Trf_0004_0007", "Trf_0004_0007_1", "Trf_0004_0007_2", "Trf_0004_0007_3", "Trf_0004_0007_4", "Trf_0004_0007_5", "Trf_0004_0009", "Trf_0004_0009_1", "Trf_0004_0009_2", "Trf_0004_0009_3", "Trf_0004_0009_4", "Trf_0004_0009_5", "Trf_0005_0006", "Trf_0005_0006_1", "Trf_0005_0006_2", "Trf_0005_0006_3", "Trf_0005_0006_4", "Trf_0005_0006_5", "Trf_0007_0008", "Trf_0007_0008_1", "Trf_0007_0008_2", "Trf_0007_0008_3", "Trf_0007_0008_4", "Trf_0007_0008_5", "Trf_0007_0009", "Trf_0007_0009_1", "Trf_0007_0009_2", "Trf_0007_0009_3", "Trf_0007_0009_4", "Trf_0007_0009_5"], "ThousandsSeparator", ".");

t2 = 0 : 1/Fs : duration;

% Import the data
transients = readtable(direction, opts);

%% Convert to output type
transients = table2array(transients);
t = transients(: , 1);

% ----- Bar 01 -----
V01 = transients(: , inicios(1):finales(1));
V01 = normal( t , V01 , t2);
V02 = V01;
V03 = V01;
V04 = V01;

% ----- Bar 02 -----
V05 = transients(: , inicios(2):finales(2));
V05 = normal( t , V05 , t2);
V06 = V05;
V07 = V05;
V08 = V05;
V09 = V05;
V10 = V05;
V11 = V05;
V12 = V05;

% ----- Bar 03 -----
V13 = transients(: , inicios(3):finales(3));
V13 = normal( t , V13 , t2);
V14 = V13;
V15 = V13;
V16 = V13;

% ----- Bar 04 -----
V17 = transients(: , inicios(4):finales(4));
V17 = normal( t , V17 , t2);
V18 = V17;
V19 = V17;
V20 = V17;
V21 = V17;
V22 = V17;

% ----- Bar 05 -----
V23 = transients(: , inicios(5):finales(5));
V23 = normal( t , V23 , t2);
V24 = V23;
V25 = V23;
V26 = V23;
V27 = V23;

% ----- Bar 06 -----
V28 = transients(: , inicios(6):finales(6));
V28 = normal( t , V28 , t2);
V29 = V28;
V30 = V28;
V31 = V28;
V32 = V28;
V33 = V28;

% ----- Bar 07 -----
V34 = transients(: , inicios(7):finales(7));
V34 = normal( t , V34 , t2);
V35 = V34;
V36 = V34;

% ----- Bar 08 -----
V37 = transients(: , inicios(8):finales(8));
V37 = normal( t , V37 , t2);
V38 = V37;

% ----- Bar 09 -----
V39 = transients(: , inicios(9):finales(9));
V39 = normal( t , V39 , t2);
V40 = V39;
V41 = V39;
V42 = V39;
V43 = V39;
V44 = V39;

% ----- Bar 10 -----
V45 = transients(: , inicios(10):finales(10));
V45 = normal( t , V45 , t2);
V46 = V45;
V47 = V45;

% ----- Bar 11 -----
V48 = transients(: , inicios(11):finales(11));
V48 = normal( t , V48 , t2);
V49 = V48;
V50 = V48;

% ----- Bar 12 -----
V51 = transients(: , inicios(12):finales(12));
V51 = normal( t , V51 , t2);
V52 = V51;
V53 = V51;

% ----- Bar 13 -----
V54 = transients(: , inicios(13):finales(13));
V54 = normal( t , V54 , t2);
V55 = V54;
V56 = V54;
V57 = V54;

% ----- Bar 14 -----
V58 = transients(: , inicios(14):finales(14));
V58 = normal( t , V58 , t2);
V59 = V58;
V60 = V58;

% ----- Gene 01 -----
I01 = transients(: , inicios(15):finales(15));
I01 = normal( t , I01 , t2);

% ----- Gene 02 -----
I10 = transients(: , inicios(16):finales(16));
I10 = normal( t , I10 , t2);

% ----- Gene 03 -----
I15 = transients(: , inicios(17):finales(17));
I15 = normal( t , I15 , t2);

% ----- Gene 06 -----
I32 = transients(: , inicios(18):finales(18));
I32 = normal( t , I32 , t2);

% ----- Gene 08 -----
I38 = transients(: , inicios(19):finales(19));
I38 = normal( t , I38 , t2);

% ----- Line 01-02 ----- /1
I02 = transients(: , inicios(20):finales(20));
I02 = normal( t , I02 , t2);
I05 = transients(: , inicios(21):finales(21));
I05 = normal( t , I05 , t2);

% ----- Line 01-02 ----- /2
I03 = transients(: , inicios(22):finales(22));
I03 = normal( t , I03 , t2);
I06 = transients(: , inicios(23):finales(23));
I06 = normal( t , I06 , t2);

% ----- Line 01-05 -----
I04 = transients(: , inicios(24):finales(24));
I04 = normal( t , I04 , t2);
I25 = transients(: , inicios(25):finales(25));
I25 = normal( t , I25 , t2);

% ----- Line 02-03 -----
I12 = transients(: , inicios(26):finales(26));
I12 = normal( t , I12 , t2);
I13 = transients(: , inicios(27):finales(27));
I13 = normal( t , I13 , t2);

% ----- Line 02-04 -----
I08 = transients(: , inicios(28):finales(28));
I08 = normal( t , I08 , t2);
I20 = transients(: , inicios(29):finales(29));
I20 = normal( t , I20 , t2);

% ----- Line 02-05 -----
I07 = transients(: , inicios(30):finales(30));
I07 = normal( t , I07 , t2);
I26 = transients(: , inicios(31):finales(31));
I26 = normal( t , I26 , t2);

% ----- Line 03-04 -----
I14 = transients(: , inicios(32):finales(32));
I14 = normal( t , I14 , t2);
I21 = transients(: , inicios(33):finales(33));
I21 = normal( t , I21 , t2);

% ----- Line 04-05 -----
I19 = transients(: , inicios(34):finales(34));
I19 = normal( t , I19 , t2);
I27 = transients(: , inicios(35):finales(35));
I27 = normal( t , I27 , t2);

% ----- Line 06-11 -----
I30 = transients(: , inicios(36):finales(36));
I30 = normal( t , I30 , t2);
I49 = transients(: , inicios(37):finales(37));
I49 = normal( t , I49 , t2);

% ----- Line 06-12 -----
I28 = transients(: , inicios(38):finales(38));
I28 = normal( t , I28 , t2);
I52 = transients(: , inicios(39):finales(39));
I52 = normal( t , I52 , t2);

% ----- Line 06-13 -----
I29 = transients(: , inicios(40):finales(40));
I29 = normal( t , I29 , t2);
I56 = transients(: , inicios(41):finales(41));
I56 = normal( t , I56 , t2);

% ----- Line 09-10 -----
I39 = transients(: , inicios(42):finales(42));
I39 = normal( t , I39 , t2);
I47 = transients(: , inicios(43):finales(43));
I47 = normal( t , I47 , t2);

% ----- Line 09-14 -----
I40 = transients(: , inicios(44):finales(44));
I40 = normal( t , I40 , t2);
I60 = transients(: , inicios(45):finales(45));
I60 = normal( t , I60 , t2);

% ----- Line 10-11 -----
I46 = transients(: , inicios(46):finales(46));
I46 = normal( t , I46 , t2);
I50 = transients(: , inicios(47):finales(47));
I50 = normal( t , I50 , t2);

% ----- Line 12-13 -----
I53 = transients(: , inicios(48):finales(48));
I53 = normal( t , I53 , t2);
I55 = transients(: , inicios(49):finales(49));
I55 = normal( t , I55 , t2);

% ----- Line 13-14 -----
I57 = transients(: , inicios(50):finales(50));
I57 = normal( t , I57 , t2);
I59 = transients(: , inicios(51):finales(51));
I59 = normal( t , I59 , t2);

% ----- Load 02 -----
I09 = transients(: , inicios(52):finales(52));
I09 = normal( t , I09 , t2);

% ----- Load 03 -----
I16 = transients(: , inicios(53):finales(53));
I16 = normal( t , I16 , t2);

% ----- Load 04 -----
I22 = transients(: , inicios(54):finales(54));
I22 = normal( t , I22 , t2);

% ----- Load 05 -----
I23 = transients(: , inicios(55):finales(55));
I23 = normal( t , I23 , t2);

% ----- Load 06 -----
I31 = transients(: , inicios(56):finales(56));
I31 = normal( t , I31 , t2);

% ----- Load 09 -----
I42 = transients(: , inicios(57):finales(57));
I42 = normal( t , I42 , t2);

% ----- Load 10 -----
I45 = transients(: , inicios(58):finales(58));
I45 = normal( t , I45 , t2);

% ----- Load 11 -----
I48 = transients(: , inicios(59):finales(59));
I48 = normal( t , I48 , t2);

% ----- Load 12 -----
I51 = transients(: , inicios(60):finales(60));
I51 = normal( t , I51 , t2);

% ----- Load 13 -----
I54 = transients(: , inicios(61):finales(61));
I54 = normal( t , I54 , t2);

% ----- Load 14 -----
I58 = transients(: , inicios(62):finales(62));
I58 = normal( t , I58 , t2);

% ----- Shun 09 -----
I41 = transients(: , inicios(63):finales(63));
I41 = normal( t , I41 , t2);

% ----- Traf 04-07 -----
I18 = transients(: , inicios(64):finales(64));
I18 = normal( t , I18 , t2);
I36 = transients(: , inicios(65):finales(65));
I36 = normal( t , I36 , t2);

% ----- Traf 04-09 -----
I17 = transients(: , inicios(66):finales(66));
I17 = normal( t , I17 , t2);
I43 = transients(: , inicios(67):finales(67));
I43 = normal( t , I43 , t2);

% ----- Traf 05-06 -----
I24 = transients(: , inicios(68):finales(68));
I24 = normal( t , I24 , t2);
I33 = transients(: , inicios(69):finales(69));
I33 = normal( t , I33 , t2);

% ----- Traf 07-08 -----
I35 = transients(: , inicios(70):finales(70));
I35 = normal( t , I35 , t2);
I37 = transients(: , inicios(71):finales(71));
I37 = normal( t , I37 , t2);

% ----- Traf 07-09 -----
I34 = transients(: , inicios(72):finales(72));
I34 = normal( t , I34 , t2);
I44 = transients(: , inicios(73):finales(73));
I44 = normal( t , I44 , t2);

t = t2';

%% Clear temporary variables
clear opts;
clear duration;
clear transients;
clear t2;
clear direction;
clear inicios;
clear finales;
%% Funtion
function V = normal( t , V , t2)
    temp1 = interp1( t , V(:,1) , t2 , 'spline' )';
    temp2 = interp1( t , V(:,2) , t2 , 'spline' )';
    temp3 = interp1( t , V(:,3) , t2 , 'spline' )';
    V = [ temp1 , temp2 , temp3 ];
end