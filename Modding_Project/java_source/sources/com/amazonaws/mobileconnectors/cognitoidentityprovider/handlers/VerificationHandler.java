package com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserCodeDeliveryDetails;
/* loaded from: classes2.dex */
public interface VerificationHandler {
    void a(CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetails);

    void onFailure(Exception exc);
}
