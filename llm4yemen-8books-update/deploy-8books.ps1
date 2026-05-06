# LLM4Yemen -- Add 8th book (Claude Code) + new slides to documents page
# Run from the folder containing this script
# If blocked: Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

$ErrorActionPreference = "Stop"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$repoRoot = "C:\Users\FUJITSU-T902\Downloads\llm4yemen-site\site"

Write-Host "=== LLM4Yemen -- 8th Book + New Slides Update ===" -ForegroundColor Cyan

# Copy updated HTML files
foreach ($f in @("documents.html","curriculum.html","index.html")) {
  Copy-Item -Path "$scriptDir\$f" -Destination "$repoRoot\$f" -Force
  Write-Host "  Copied: $f" -ForegroundColor Green
}

# Copy new files into docs folder
$newFiles = @(
  "claude-code-from-zero-to-deployed.pdf",
  "claude-code-from-zero-to-deployed.docx",
  "claude-code-from-zero-to-deployed.epub",
  "AI-Freelancing-Lecture-Bilingual.pptx",
  "Week2-NotebookLM-Complete-Guide.pptx",
  "Week4-TrackB-Claude-Code-From-Zero-to-Deployed.pptx"
)

foreach ($f in $newFiles) {
  $src = "$scriptDir\$f"
  $dst = "$repoRoot\docs\$f"
  if (Test-Path $src) {
    Copy-Item -Path $src -Destination $dst -Force
    Write-Host "  Copied to docs/: $f" -ForegroundColor Green
  } else {
    Write-Host "  WARNING: $f not found next to this script -- add it manually to docs/" -ForegroundColor Yellow
  }
}

Set-Location $repoRoot
git add .
git commit -m "Add 8th textbook (Claude Code Week 4B) + NotebookLM + Freelancing slides"
git push

Write-Host ""
Write-Host "=== Done! Live at: https://fadhlyemen.github.io/llm4yemen/documents.html ===" -ForegroundColor Cyan
