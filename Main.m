clc; clear variables;

import matlab.unittest.TestSuite;
import matlab.unittest.TestRunner;

import src.main.ZebrunnerReportingPlugin;

runner = TestRunner.withNoPlugins;

% plugins must have strict order: the last added will be the first
% during tests execution
runner.addPlugin(ZebrunnerReportingPlugin);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% using supplied logging plugin
% 
%
% import matlab.unittest.plugins.LoggingPlugin;
% 
% runner.addPlugin(LoggingPlugin.withVerbosity(2));
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% using supplied test report plugin (example uses pdf report format)
% 
% import matlab.unittest.plugins.TestReportPlugin;
% 
% if (~exist('tmp/reports', 'dir'))
%     mkdir('tmp/reports');
% end
% 
% runner.addPlugin(TestReportPlugin.producingPDF('tmp/reports/TestsReport.pdf'));
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

suite = TestSuite.fromNamespace('src.tests');
results = runner.run(suite);
