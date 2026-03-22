package com.applovin.impl.privacy.cmp;

import com.applovin.sdk.AppLovinCmpError;
/* loaded from: classes2.dex */
public class CmpErrorImpl implements AppLovinCmpError {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinCmpError.Code f9238a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9239b;

    /* renamed from: c  reason: collision with root package name */
    private final int f9240c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9241d;

    public CmpErrorImpl(AppLovinCmpError.Code code, String str) {
        this(code, str, -1, "");
    }

    @Override // com.applovin.sdk.AppLovinCmpError
    public int getCmpCode() {
        return this.f9240c;
    }

    @Override // com.applovin.sdk.AppLovinCmpError
    public String getCmpMessage() {
        return this.f9241d;
    }

    @Override // com.applovin.sdk.AppLovinCmpError
    public AppLovinCmpError.Code getCode() {
        return this.f9238a;
    }

    @Override // com.applovin.sdk.AppLovinCmpError
    public String getMessage() {
        return this.f9239b;
    }

    public String toString() {
        return "CmpErrorImpl(code=" + getCode() + ", message=" + getMessage() + ", cmpCode=" + getCmpCode() + ", cmpMessage=" + getCmpMessage() + ")";
    }

    public CmpErrorImpl(AppLovinCmpError.Code code, String str, int i10, String str2) {
        this.f9238a = code;
        this.f9239b = str;
        this.f9240c = i10;
        this.f9241d = str2;
    }
}
