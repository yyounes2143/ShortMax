package com.amazonaws.mobile.client.internal.oauth2;
/* loaded from: classes2.dex */
public class OAuth2Exception extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    String f5395a;

    /* renamed from: b  reason: collision with root package name */
    String f5396b;

    /* renamed from: c  reason: collision with root package name */
    String f5397c;

    public OAuth2Exception(String str, String str2, String str3, String str4) {
        super(str);
        this.f5395a = str2;
        this.f5396b = str3;
        this.f5397c = str4;
    }
}
