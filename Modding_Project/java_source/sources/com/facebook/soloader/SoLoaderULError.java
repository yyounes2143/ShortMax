package com.facebook.soloader;
/* loaded from: classes2.dex */
public class SoLoaderULError extends UnsatisfiedLinkError {

    /* renamed from: a  reason: collision with root package name */
    private String f16831a;

    public SoLoaderULError(String str, String str2) {
        super(str2);
        this.f16831a = str;
    }

    public String b() {
        return this.f16831a;
    }
}
