Write-Host "===================================================" -ForegroundColor Cyan
Write-Host "      Hotel Nilima Paribar - Git Auto Updater" -ForegroundColor Cyan
Write-Host "===================================================" -ForegroundColor Cyan
Write-Host ""

git status

Write-Host "`nStaging all changes..." -ForegroundColor Yellow
git add .

$msg = Read-Host "Enter commit message (Press ENTER for default)"
if ([string]::IsNullOrWhiteSpace($msg)) {
    $msg = "Updated website content"
}

Write-Host "`nCommitting changes..." -ForegroundColor Yellow
git commit -m "$msg"

Write-Host "`nPushing to GitHub..." -ForegroundColor Yellow
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n===================================================" -ForegroundColor Green
    Write-Host "SUCCESS: Repository updated successfully!" -ForegroundColor Green
    Write-Host "===================================================" -ForegroundColor Green
} else {
    Write-Host "`n===================================================" -ForegroundColor Red
    Write-Host "ERROR: Push failed! Check your connection or credentials." -ForegroundColor Red
    Write-Host "===================================================" -ForegroundColor Red
}

Read-Host -Prompt "Press Enter to exit..."
