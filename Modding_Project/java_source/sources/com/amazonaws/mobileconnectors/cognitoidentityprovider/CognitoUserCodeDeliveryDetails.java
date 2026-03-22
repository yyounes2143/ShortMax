package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import com.amazonaws.services.cognitoidentityprovider.model.CodeDeliveryDetailsType;
/* loaded from: classes2.dex */
public class CognitoUserCodeDeliveryDetails {

    /* renamed from: a  reason: collision with root package name */
    private final String f5541a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5542b;

    /* renamed from: c  reason: collision with root package name */
    private final String f5543c;

    /* JADX INFO: Access modifiers changed from: protected */
    public CognitoUserCodeDeliveryDetails(CodeDeliveryDetailsType codeDeliveryDetailsType) {
        if (codeDeliveryDetailsType != null) {
            this.f5541a = codeDeliveryDetailsType.e();
            this.f5542b = codeDeliveryDetailsType.d();
            this.f5543c = codeDeliveryDetailsType.b();
            return;
        }
        this.f5541a = null;
        this.f5542b = null;
        this.f5543c = null;
    }
}
