# Infrastructure as Code

This repository is more than just configurations and code. Changes to this repo **can** and
**will** create/destroy/update actual infrastructure, which can impose real money costs.
Please read everything below before interacting with this repo.

## What is Terraform?

TL;DR, it is a tool that manages infrastructure (servers and more) declaratively. That is to say,
how many servers/etc and what kinds are described (or "declared"), and then that description is
used to make changes to the actual servers/etc. If you remove a server's configuration from here,
it will be deleted.

## How to use?

1. Make a branch, and add your changes to the Terraform code
2. Push and open a PR. The PR will validate your code and tag reviewers
3. After reviewed, merge.

Some changes will have extra steps, like reviewing for financial changes.
