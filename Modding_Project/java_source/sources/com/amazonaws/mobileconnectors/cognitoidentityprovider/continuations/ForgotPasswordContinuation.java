package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserCodeDeliveryDetails;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class ForgotPasswordContinuation {

    /* renamed from: a  reason: collision with root package name */
    private final ForgotPasswordHandler f5598a;

    /* renamed from: b  reason: collision with root package name */
    private final CognitoUser f5599b;

    /* renamed from: c  reason: collision with root package name */
    private final CognitoUserCodeDeliveryDetails f5600c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5601d;

    /* renamed from: f  reason: collision with root package name */
    private String f5603f = null;

    /* renamed from: g  reason: collision with root package name */
    private String f5604g = null;

    /* renamed from: e  reason: collision with root package name */
    private final Map<String, String> f5602e = new HashMap();

    public ForgotPasswordContinuation(CognitoUser cognitoUser, CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetails, boolean z10, ForgotPasswordHandler forgotPasswordHandler) {
        this.f5598a = forgotPasswordHandler;
        this.f5599b = cognitoUser;
        this.f5600c = cognitoUserCodeDeliveryDetails;
        this.f5601d = z10;
    }
}
