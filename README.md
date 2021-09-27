# App5

## Overview

This repository creates an Okta application App5 using Terraform. 

## Why?

Creating an application in Okta and groups can be rather tedious. It also 
requires an Okta administrator to be available to apply it. By doing 
creating an application using Terraform and running it in Jenkins, you 
could [innersource](https://resources.github.com/whitepapers/introduction-to-innersource/)
the management of the applications, allowing the actual owners of the 
application to maintain it, and have security and other folks review the
changes. And when your next audit comes along, you can just point them to
the pull requests of evidence of change control. 

This repository is used as an example that is used in other demonstrations.

