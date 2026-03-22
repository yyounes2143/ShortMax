package com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserSession;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.MultiFactorAuthenticationContinuation;
/* loaded from: classes2.dex */
public interface AuthenticationHandler {
    void a(ChallengeContinuation challengeContinuation);

    void b(MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation);

    void c(AuthenticationContinuation authenticationContinuation, String str);

    void d(CognitoUserSession cognitoUserSession, CognitoDevice cognitoDevice);

    void onFailure(Exception exc);
}
