# 建資料夾並進入
mkdir base-guild-verification
cd base-guild-verification

# 建 contracts 資料夾與檔案
New-Item -ItemType Directory -Path contracts
@"
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
... (把上面 BaseSimpleToken.sol 內容整段貼過來) ...
"@ > contracts\BaseSimpleToken.sol

@"
# base-guild-verification
Test repository for Guild.xyz "Builders & Founders" verification for Base.

This repo contains a minimal example smart contract `BaseSimpleToken.sol` and a short README.
It is not intended for production or deployment; only for verification and test commits.

- Contract: `contracts/BaseSimpleToken.sol`
- Purpose: Provide a simple on-chain example referencing Base (EVM compatible)
"@ > README.md

# 初始化 git、commit、設定 remote（把 URL 換成你的）
git init
git add .
git commit -m "chore: add BaseSimpleToken example and README for Guild verification"

# 加遠端並 push（若你用 HTTPS 可能會被要求輸入 GitHub 帳密或 token）
git remote add origin <YOUR_GITHUB_REPO_URL>
git branch -M main
git push -u origin main
