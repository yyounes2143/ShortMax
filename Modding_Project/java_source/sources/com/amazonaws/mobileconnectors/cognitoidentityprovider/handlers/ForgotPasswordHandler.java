package com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ForgotPasswordContinuation;
/* loaded from: classes2.dex */
public interface ForgotPasswordHandler {
    void a(ForgotPasswordContinuation forgotPasswordContinuation);

    void onFailure(Exception exc);
}
