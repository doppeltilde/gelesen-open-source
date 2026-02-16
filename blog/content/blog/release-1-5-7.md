---
title: Release 1.5.7
description: Gelesen Release 1.5.7
date: 2026-02-21
date_key: 20250221
sitemap:
  lastmod: 2025-02-21
---

Download the update: [gelesen.app](https://gelesen.app)

## What's new?
- The old ”Conditions” feature has been replaced with the new ”Conditional Statement” action. You can now create nonlinear paths by checking conditions against character stats or custom variables.
- Variables and Character Stats are now back and have been completely reworked.
- You can now change the grid style.
- You can now change the grid color.

## What's changed?
- The legacy database engine is now fully removed, but old database files will still continue to be migrated.


## Technical Insight
- The old conditions system was linked directly to a single message, making it tedious to work with, hard to use and prone to breaking. The new ”Conditional Statement” system builds upon the already mature and established modular ”Choices” system, allowing for nonlinear & branching conditions.
- The variables and character stats were seperate systems, making it hard to internally keep track of, it also introducing overlapping code and technical debt. Both systems have been merged into one single modular system.

Download the update: [gelesen.app](https://gelesen.app)
