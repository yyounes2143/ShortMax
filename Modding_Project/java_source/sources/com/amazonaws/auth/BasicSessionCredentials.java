package com.amazonaws.auth;
/* loaded from: classes2.dex */
public class BasicSessionCredentials implements AWSSessionCredentials {

    /* renamed from: a  reason: collision with root package name */
    private final String f4918a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4919b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4920c;

    public BasicSessionCredentials(String str, String str2, String str3) {
        this.f4918a = str;
        this.f4919b = str2;
        this.f4920c = str3;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String a() {
        return this.f4918a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String b() {
        return this.f4919b;
    }

    @Override // com.amazonaws.auth.AWSSessionCredentials
    public String getSessionToken() {
        return this.f4920c;
    }
}
