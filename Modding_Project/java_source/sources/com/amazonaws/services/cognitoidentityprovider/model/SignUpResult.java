package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class SignUpResult implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private Boolean f5876a;

    /* renamed from: b  reason: collision with root package name */
    private CodeDeliveryDetailsType f5877b;

    /* renamed from: c  reason: collision with root package name */
    private String f5878c;

    public CodeDeliveryDetailsType b() {
        return this.f5877b;
    }

    public Boolean d() {
        return this.f5876a;
    }

    public String e() {
        return this.f5878c;
    }

    public boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SignUpResult)) {
            return false;
        }
        SignUpResult signUpResult = (SignUpResult) obj;
        if (signUpResult.d() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (d() == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 ^ z11) {
            return false;
        }
        if (signUpResult.d() != null && !signUpResult.d().equals(d())) {
            return false;
        }
        if (signUpResult.b() == null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (b() == null) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 ^ z13) {
            return false;
        }
        if (signUpResult.b() != null && !signUpResult.b().equals(b())) {
            return false;
        }
        if (signUpResult.e() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (e() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (signUpResult.e() == null || signUpResult.e().equals(e())) {
            return true;
        }
        return false;
    }

    public void f(CodeDeliveryDetailsType codeDeliveryDetailsType) {
        this.f5877b = codeDeliveryDetailsType;
    }

    public void g(Boolean bool) {
        this.f5876a = bool;
    }

    public void h(String str) {
        this.f5878c = str;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int i10 = 0;
        if (d() == null) {
            hashCode = 0;
        } else {
            hashCode = d().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (b() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = b().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (e() != null) {
            i10 = e().hashCode();
        }
        return i12 + i10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (d() != null) {
            sb2.append("UserConfirmed: " + d() + ",");
        }
        if (b() != null) {
            sb2.append("CodeDeliveryDetails: " + b() + ",");
        }
        if (e() != null) {
            sb2.append("UserSub: " + e());
        }
        sb2.append("}");
        return sb2.toString();
    }
}
