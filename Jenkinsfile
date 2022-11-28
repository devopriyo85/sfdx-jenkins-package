#!groovy

import groovy.json.JsonSlurperClassic

node {

    def SF_CONSUMER_KEY='3MVG9vvlaB0y1YsIbhM9xtvqdmzKKoHcvUXQL34fLNv7c2_xaPfYYPIdOJRcL6.qUr82dDCGgPDMwAo0lyDRe'//env.CONNECTED_APP_CONSUMER_KEY_DH
    def SF_USERNAME='devopriyo.seal@resilient-goat-3h0xx8.com'//env.HUB_ORG_DH
    def SERVER_KEY_CREDENTALS_ID=env.JWT_CRED_ID_DH
    def TEST_LEVEL='RunLocalTests'
    def PACKAGE_NAME='0Ho68000000000fCAA'
    def PACKAGE_VERSION
    def SF_INSTANCE_URL = env.SF_INSTANCE_URL ?: "https://login.salesforce.com"

    def toolbelt = tool 'toolbelt'


    // -------------------------------------------------------------------------
    // Check out code from source control.
    // -------------------------------------------------------------------------

    stage('checkout source') {
        checkout scm
    }


    // -------------------------------------------------------------------------
    // Run all the enclosed stages with access to the Salesforce
    // JWT key credentials.
    // -------------------------------------------------------------------------
    
    withEnv(["HOME=${env.WORKSPACE}"]) {
        
        withCredentials([file(credentialsId: SERVER_KEY_CREDENTALS_ID, variable: 'server_key_file')]) {

            // -------------------------------------------------------------------------
            // Authorize the Dev Hub org with JWT key and give it an alias.
            // -------------------------------------------------------------------------

            stage('Authorize DevHub') {

               if (isUnix()) {
               rc = command "${toolbelt}/sfdx force:auth:jwt:grant --instanceurl ${SF_INSTANCE_URL} --clientid ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwtkeyfile ${server_key_file} --setdefaultdevhubusername --setalias HubOrg"
                }else{
                    rc = bat returnStatus: true, script: "\"${toolbelt}/sfdx\" force:auth:jwt:grant --instanceurl ${SF_INSTANCE_URL} --clientid ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwtkeyfile ${server_key_file} --setdefaultdevhubusername --setalias HubOrg"
                }

               
                if (rc != 0) {

                    rc = bat returnStatus: true, script: "\"${toolbelt}/sfdx\" force:source:deploy -x package/package.xml --postdestructivechanges destructiveChanges/destructiveChanges.xml --u HubOrg"
                    error 'Salesforce dev hub org authorization failed.'
                }
            }
            
           

            // -------------------------------------------------------------------------
            // Create new scratch org to test your code.
            // -------------------------------------------------------------------------

            
        }
    }
}

def command(script) {
    if (isUnix()) {
        return sh(returnStatus: true, script: script);
    } else {
        return bat(returnStatus: true, script: script);
    }
}
