classdef ZebrunnerReportingPlugin < matlab.unittest.plugins.TestRunnerPlugin

    methods (Access = protected)

        function runSession(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: runSession(plugin, pluginData)\n', pluginData.Name);
            runSession@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function runTestSuite(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: runTestSuite(plugin, pluginData)\n', pluginData.Name);
            runTestSuite@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData)
        end

        function fixture = createSharedTestFixture(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: createSharedTestFixture(plugin, pluginData)\n', pluginData.Name);
            fixture = createSharedTestFixture@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function setupSharedTestFixture(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: createSharedTestFixture(plugin, pluginData)\n', pluginData.Name);
            setupSharedTestFixture@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData)
        end

        function testCase = createTestClassInstance(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: createTestClassInstance(plugin, pluginData)\n', pluginData.Name);
            testCase = createTestClassInstance@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function setupTestClass(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: setupTestClass(plugin, pluginData)\n', pluginData.Name);
            setupTestClass@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function runTestClass(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: runTestClass(plugin, pluginData)\n', pluginData.Name);
            runTestClass@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData)
        end

        function testCase = createTestMethodInstance(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: createTestMethodInstance(plugin, pluginData)\n', pluginData.Name);
            testCase = createTestMethodInstance@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);

            testCase.addlistener('DiagnosticLogged', @plugin.printLog);
        end

        function setupTestMethod(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: setupTestMethod(plugin, pluginData)\n', pluginData.Name);
            setupTestMethod@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function runTestMethod(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: runTestMethod(plugin, pluginData)\n', pluginData.Name);
            runTestMethod@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function runTest(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: runTest(plugin, pluginData)\n', pluginData.Name);
            runTest@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function teardownTestMethod(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: teardownTestMethod(plugin, pluginData)\n', pluginData.Name);
            teardownTestMethod@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function teardownTestClass(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: teardownTestClass(plugin, pluginData)\n', pluginData.Name);
            teardownTestClass@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function teardownSharedTestFixture(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: teardownSharedTestFixture(plugin, pluginData)\n', pluginData.Name);
            teardownSharedTestFixture@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function reportFinalizedResult(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: reportFinalizedResult(plugin, pluginData)\n', pluginData.Name);
            reportFinalizedResult@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

        function reportFinalizedSuite(plugin, pluginData)
            % fprintf('[ZebrunnerReportingPlugin] %s: reportFinalizedSuite(plugin, pluginData)\n', pluginData.Name);
            reportFinalizedSuite@matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end

    end

    methods(Access = private)

        function printLog(~, ~, event)
            fprintf('Intercept log event: %s\n', event.Diagnostic);
        end

    end

end
