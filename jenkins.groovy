pipelineJob("FusionDigital") {
organizationFolder('FusionDigital')
description("Organization folder configured with JCasC")
displayName('FusionDigital')
organizations {
 github {
   repoOwner("FusionDigital")
   credentialsId("gitHubApp")
   }
 }
