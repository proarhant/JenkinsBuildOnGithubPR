#The below curl command is an expected syntax for a successful CI build on PR.
curl --head https://www.baeldungtest.com
#Introduce syntax error like the one below for a faild CI build on PR.
#curl --head https://www.baeldungtest.com -Y SyntaxErrorTestForJenkinsBuild
