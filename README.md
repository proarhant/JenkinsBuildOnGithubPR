![Build Status](http://provungshu.baeldungtest.com:8080/buildStatus/icon?job=JenkinsBuildOnGithubPR)
# Set up an automated build on Jenkins CI from a GitHub PR

The DevOps workflow deployed in this scenario configures the integration between GitHub and the Jenkins tool that automatically triggers a build and executes the script when a PR is raised on GitHub. The CI tool, Jenkins in this case, then update the build status back to GitHub.

# A Simple Code  with cURL
```
curl --head https://www.baeldungtest.com
```

## Test 1: GitHub PR Triggers Successful Build on Jenkins CI

The PR with the following code in `curl-baeldungtest.sh` triggers successful CI build in Jenkins.

https://github.com/proarhant/JenkinsBuildOnGithubPR/blob/9dee71f22a362a17751c004f5b221579791fa6b7/curl-baeldungtest.sh#L1-L4

### All checks have passed

On the GitHub portal, the PR Status shows `successful` CI build. The `Details` link on the right end of the status line references to the build status page on the Jenkins portal.

![image](https://github.com/proarhant/JenkinsBuildOnGithubPR/assets/2681229/10ded9ec-2c64-48b0-951a-b6da5e9f16e9)

### Embeddable Build Status Icon

Through a Plugin, Jenkins exposes the current status of the build as an image in a fixed URL. This URL is embedded in to the `README` so that the current state of the build can be displayed.

![image](https://github.com/proarhant/JenkinsBuildOnGithubPR/assets/2681229/910210d8-84d2-4e5b-abc2-5fe1b1935c58)

## Test 2: GitHub PR Triggers Failed Build on Jenkins CI

- To test the integration, we can update the script to introduce a syntax error and create a PR
- The PR should execute a build and PR status should show that the PR failed the check

```
curl --head https://www.baeldungtest.com -Y SyntaxErrorTestForJenkinsBuild
```

With an error in syntax in the code as shown above [ Ref: https://github.com/proarhant/JenkinsBuildOnGithubPR/commit/611b4430cdb8f29522b7e9fc5f8ba71ce6574e05 ], the PR will trigger a failed build on Jenkins CI.
On the GitHub portal, the PR Status shows `All checks have failed` and also through a Jenkins Plugin, the `README` page shows the current state of the build as an image. Attached below are the screenshots caputred during the conducted test.

### All checks have failed

For any `unsuccessful` CI build, the PR Status shows `All checks have failed` on the GitHub portal. The `Details` link on the right end of the status line references to the build status page on the Jenkins portal.

![image](https://github.com/proarhant/JenkinsBuildOnGithubPR/assets/2681229/7bf82c10-b802-449a-91e1-989b379ba7e9)

![image](https://github.com/proarhant/JenkinsBuildOnGithubPR/assets/2681229/563e8d8c-b6d5-46d1-b169-5fcc60418913)

### Embeddable Build Status Icon

The `README` page has an embedded URL that shows the current status of the build exposed by Jenkins as an image.

![image](https://github.com/proarhant/JenkinsBuildOnGithubPR/assets/2681229/18d73284-d819-4bf0-b3f6-266b2913ba75)
