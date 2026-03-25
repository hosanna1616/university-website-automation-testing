#!/bin/bash

echo "========================================"
echo "DTU Website Test Suite Execution"
echo "========================================"
echo ""

echo "Cleaning previous build..."
mvn clean

echo ""
echo "Running tests..."
mvn test

echo ""
echo "========================================"
echo "Test execution completed!"
echo "Check target/surefire-reports for detailed results"
echo "========================================"

