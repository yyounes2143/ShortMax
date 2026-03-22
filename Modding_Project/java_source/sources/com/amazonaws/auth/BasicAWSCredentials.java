package com.amazonaws.auth;
/* loaded from: classes2.dex */
public class BasicAWSCredentials implements AWSCredentials {

    /* renamed from: a  reason: collision with root package name */
    private final String f4916a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4917b;

    public BasicAWSCredentials(String str, String str2) {
        if (str != null) {
            if (str2 != null) {
                this.f4916a = str;
                this.f4917b = str2;
                return;
            }
            throw new IllegalArgumentException("Secret key cannot be null.");
        }
        throw new IllegalArgumentException("Access key cannot be null.");
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String a() {
        return this.f4916a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String b() {
        return this.f4917b;
    }
}
