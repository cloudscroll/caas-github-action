![logo](https://cloudscroll.io/image/cover-logo-header.png)

# Cover as a Service GitHub Action (for Maven)
This GitHub Action automates the process of measuring code coverage for Java projects built with Maven.

## Usage
This GitHub Action requires the Workspace's API Key from Cover as a Service (CaaS). 
Please visit https://cloudscroll.io to create a Workspace and use it accordingly.

### Envs:
| Name                  | Requirement | Description |
|-----------------------|-------------|-------------|
| CAAS_API_KEY          | _required_  | CaaS Workspace API KEY|

### Inputs:
| Name                  | Requirement | Description |
|-----------------------|-------------|-------------|
| maven_goal          | _optional_        | Default is 'compile test package'. Please provide the goals used for building and testing in a Maven project. |

### Standard Example:
```yaml
on: ["push", "pull_request"]

name: Code Coverage by CaaS

jobs:

  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v3
    - name: Set up JDK 17
      uses: actions/setup-java@v3
      with:
        java-version: '17'
        distribution: 'temurin'
        cache: maven
    - name: "Github Action with CAAS"
      uses: cloudscroll/caas-github-action@main
      env:
        CAAS_API_KEY: ${{ secrets.CAAS_API_KEY }}
```

##  Badge:
To register a badge, follow the steps below:
1. Access to [Cover as a Service](https://cloudscroll.io/).
2. Login with your account.
3. Find a workspace to connect to in My Workspaces.
4. Copy the code from the Badge section on the workspace settings page.
5. Paste the copied Badge code into your Readme file.
6. Click on the badge to go to the connected workspace and check coverage

### Badge Example:
Click to coverage badge: [![Coverage](https://api.cloudscroll.io/workspace-management/workspace/badge?domainName=pandora-coverage)](https://app.cloudscroll.io/pandora-coverage)