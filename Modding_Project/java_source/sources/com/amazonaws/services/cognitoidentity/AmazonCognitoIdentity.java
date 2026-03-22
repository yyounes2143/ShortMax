package com.amazonaws.services.cognitoidentity;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult;
import com.amazonaws.services.cognitoidentity.model.GetIdRequest;
import com.amazonaws.services.cognitoidentity.model.GetIdResult;
/* loaded from: classes2.dex */
public interface AmazonCognitoIdentity {
    GetCredentialsForIdentityResult c(GetCredentialsForIdentityRequest getCredentialsForIdentityRequest) throws AmazonClientException, AmazonServiceException;

    GetIdResult j(GetIdRequest getIdRequest) throws AmazonClientException, AmazonServiceException;
}
