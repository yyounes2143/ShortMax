package com.amazonaws.mobile.client;

import com.amazonaws.auth.AWSAbstractCognitoIdentityProvider;
import com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity;
/* compiled from: AWSMobileClient.java */
/* loaded from: classes2.dex */
class AWSMobileClientCognitoIdentityProvider extends AWSAbstractCognitoIdentityProvider {

    /* renamed from: h  reason: collision with root package name */
    boolean f5353h;

    public AWSMobileClientCognitoIdentityProvider(String str, String str2, AmazonCognitoIdentity amazonCognitoIdentity) {
        super(str, str2, amazonCognitoIdentity);
    }

    @Override // com.amazonaws.auth.AWSIdentityProvider
    public String g() {
        if (this.f5353h) {
            return this.f4895e;
        }
        d();
        return null;
    }

    @Override // com.amazonaws.auth.AWSAbstractCognitoIdentityProvider
    protected String k() {
        return "AWSMobileClient";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(String str, String str2) {
        super.l(str);
        super.m(str2);
        this.f5353h = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o() {
        this.f5353h = false;
    }
}
