# interview

This is a live coding exercise to assess your skills and familiarity with
Terraform, GitHub Actions, and Azure.

## Introduction

This repository has been set up to deploy resources to Azure i.e. the following
have been taken care of for you:

1. Authenticating to Azure from Terraform.
2. Creating a backend for Terraform within Azure.

## Tasks

Your responsibilities will be the following:

0. Create a development branch for your changes and make changes against that
   branch. NOTE: You can use `github.dev` as your editor for the time being.

1. Augment the `terraform.yml` workflow definition so that within the `plan`
   job, Terraform runs a `terraform-plan` command.

2. Augment the `terraform.yml` workflow definition so that within the `apply`
   job, Terraform runs a `terraform-apply` command.
   - The `apply` should only run whenever the workflow is triggered from the
     main branch.
   - The `apply` should run after the `plan` job is completed.

3. Create a resource group, virtual network, and subnet using Terraform.
4. Examine the `terraform-plan` output. Troubleshoot and fix any errors you see.
5. Add an NSG and Linux VM to the configuration.
6. Open a pull request with your changes (and an interviewer will review your
   changes and approve) and merge it.
7. Examine the `apply` job and troubleshoot and fix any errors you see.