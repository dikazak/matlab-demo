classdef CalculatorTest < matlab.unittest.TestCase

    properties (TestParameter)
        % Parameters for tests
    end

    methods (TestClassSetup)
        % Shared setup for the entire test class
    end

    methods (TestMethodSetup)
        % Setup for each test
    end

    methods (Test, TestTags = { 'sum' })

        function add_shouldSumTwoNumbers_whenBothNumbersPositive(testCase)
            import src.main.Calculator;

            testCase.log('Test sum 1 + 2');
            actualSum = Calculator.sum(1, 2);
            expectedSum = 3;

            testCase.verifyEqual(actualSum, expectedSum);
        end

        function add_shouldSumTwoNumbers_whenBothNumbersNegative(testCase)
            import src.main.Calculator;

            testCase.log('Test sum (-1) + (-2)');
            actualSum = Calculator.sum(-1, -2);
            expectedSum = -3;

            testCase.verifyEqual(actualSum, expectedSum);
        end

        function verificationFailed(testCase)
            testCase.verifyEqual(1, 2);
        end

        function assumptionFailed(testCase)
            testCase.assumeEqual(1, 2);
        end

    end

end