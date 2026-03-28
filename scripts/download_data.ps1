$ErrorActionPreference = 'Stop'

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')
$targetDir = Join-Path $repoRoot 'data\raw\telco'

if (-not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir | Out-Null
}

$targetFile = Join-Path $targetDir 'WA_Fn-UseC_-Telco-Customer-Churn.csv'

$sourceUrl = 'https://raw.githubusercontent.com/grokify/dataset-telco-customer-churn/main/data/WA_Fn-UseC_-Telco-Customer-Churn.csv'

Write-Host "Downloading dataset from $sourceUrl"
Invoke-WebRequest -Uri $sourceUrl -OutFile $targetFile -UseBasicParsing

Write-Host "Saved: $targetFile"
