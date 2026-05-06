# LLM4Yemen -- Update homepage curriculum timeline
# Run from the folder containing this script
# If blocked: Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

$ErrorActionPreference = "Stop"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = "C:\Users\FUJITSU-T902\Downloads\llm4yemen-site\site"

Write-Host "=== LLM4Yemen Homepage Timeline Update ===" -ForegroundColor Cyan

Copy-Item -Path "$scriptDir\index.html" -Destination "$repoRoot\index.html" -Force
Write-Host "  Copied: index.html" -ForegroundColor Green

Set-Location $repoRoot
git add index.html
git commit -m "Update homepage curriculum timeline: Mawari Week 4A, Yousif Week 5A, Wail Week 6 only"
git push

Write-Host ""
Write-Host "=== Done! Live at: https://fadhlyemen.github.io/llm4yemen/ ===" -ForegroundColor Cyan
