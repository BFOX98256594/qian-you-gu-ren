<#
.SYNOPSIS
  把「前有古人」装进 dsh 技能目录（Windows / PowerShell）。

.EXAMPLE
  .\install.ps1
  .\install.ps1 -SkillsDir "D:\my-profile\.dsh\skills"
#>
param(
    [string]$SkillsDir = "$env:USERPROFILE\.dsh\skills"
)

$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$dest = Join-Path $SkillsDir "qian-you-gu-ren"

New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item (Join-Path $here "SKILL.md") $dest -Force
Copy-Item (Join-Path $here "references") $dest -Recurse -Force

Write-Host "✓ 已安装到 $dest"
Write-Host "→ 新开一个 dsh 会话，技能列表里应出现 qian-you-gu-ren"
