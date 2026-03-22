package com.amazonaws.services.cognitoidentityprovider;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.regions.Region;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceResult;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordResult;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthRequest;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthResult;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeResult;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpResult;
/* loaded from: classes2.dex */
public interface AmazonCognitoIdentityProvider {
    void a(Region region) throws IllegalArgumentException;

    void b(String str) throws IllegalArgumentException;

    ResendConfirmationCodeResult d(ResendConfirmationCodeRequest resendConfirmationCodeRequest) throws AmazonClientException, AmazonServiceException;

    ConfirmDeviceResult e(ConfirmDeviceRequest confirmDeviceRequest) throws AmazonClientException, AmazonServiceException;

    SignUpResult f(SignUpRequest signUpRequest) throws AmazonClientException, AmazonServiceException;

    InitiateAuthResult m(InitiateAuthRequest initiateAuthRequest) throws AmazonClientException, AmazonServiceException;

    ForgotPasswordResult n(ForgotPasswordRequest forgotPasswordRequest) throws AmazonClientException, AmazonServiceException;

    RespondToAuthChallengeResult q(RespondToAuthChallengeRequest respondToAuthChallengeRequest) throws AmazonClientException, AmazonServiceException;
}
