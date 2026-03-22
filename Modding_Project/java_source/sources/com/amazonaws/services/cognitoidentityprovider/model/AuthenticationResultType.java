package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class AuthenticationResultType implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f5814a;

    /* renamed from: b  reason: collision with root package name */
    private Integer f5815b;

    /* renamed from: c  reason: collision with root package name */
    private String f5816c;

    /* renamed from: d  reason: collision with root package name */
    private String f5817d;

    /* renamed from: e  reason: collision with root package name */
    private String f5818e;

    /* renamed from: f  reason: collision with root package name */
    private NewDeviceMetadataType f5819f;

    public String b() {
        return this.f5814a;
    }

    public Integer d() {
        return this.f5815b;
    }

    public String e() {
        return this.f5818e;
    }

    public boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean z21;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AuthenticationResultType)) {
            return false;
        }
        AuthenticationResultType authenticationResultType = (AuthenticationResultType) obj;
        if (authenticationResultType.b() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (b() == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 ^ z11) {
            return false;
        }
        if (authenticationResultType.b() != null && !authenticationResultType.b().equals(b())) {
            return false;
        }
        if (authenticationResultType.d() == null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (d() == null) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 ^ z13) {
            return false;
        }
        if (authenticationResultType.d() != null && !authenticationResultType.d().equals(d())) {
            return false;
        }
        if (authenticationResultType.h() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (h() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (authenticationResultType.h() != null && !authenticationResultType.h().equals(h())) {
            return false;
        }
        if (authenticationResultType.g() == null) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (g() == null) {
            z17 = true;
        } else {
            z17 = false;
        }
        if (z16 ^ z17) {
            return false;
        }
        if (authenticationResultType.g() != null && !authenticationResultType.g().equals(g())) {
            return false;
        }
        if (authenticationResultType.e() == null) {
            z18 = true;
        } else {
            z18 = false;
        }
        if (e() == null) {
            z19 = true;
        } else {
            z19 = false;
        }
        if (z18 ^ z19) {
            return false;
        }
        if (authenticationResultType.e() != null && !authenticationResultType.e().equals(e())) {
            return false;
        }
        if (authenticationResultType.f() == null) {
            z20 = true;
        } else {
            z20 = false;
        }
        if (f() == null) {
            z21 = true;
        } else {
            z21 = false;
        }
        if (z20 ^ z21) {
            return false;
        }
        if (authenticationResultType.f() == null || authenticationResultType.f().equals(f())) {
            return true;
        }
        return false;
    }

    public NewDeviceMetadataType f() {
        return this.f5819f;
    }

    public String g() {
        return this.f5817d;
    }

    public String h() {
        return this.f5816c;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int i10 = 0;
        if (b() == null) {
            hashCode = 0;
        } else {
            hashCode = b().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (d() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = d().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (h() == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = h().hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        if (g() == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = g().hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        if (e() == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = e().hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        if (f() != null) {
            i10 = f().hashCode();
        }
        return i15 + i10;
    }

    public void i(String str) {
        this.f5814a = str;
    }

    public void j(Integer num) {
        this.f5815b = num;
    }

    public void k(String str) {
        this.f5818e = str;
    }

    public void n(NewDeviceMetadataType newDeviceMetadataType) {
        this.f5819f = newDeviceMetadataType;
    }

    public void q(String str) {
        this.f5817d = str;
    }

    public void r(String str) {
        this.f5816c = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (b() != null) {
            sb2.append("AccessToken: " + b() + ",");
        }
        if (d() != null) {
            sb2.append("ExpiresIn: " + d() + ",");
        }
        if (h() != null) {
            sb2.append("TokenType: " + h() + ",");
        }
        if (g() != null) {
            sb2.append("RefreshToken: " + g() + ",");
        }
        if (e() != null) {
            sb2.append("IdToken: " + e() + ",");
        }
        if (f() != null) {
            sb2.append("NewDeviceMetadata: " + f());
        }
        sb2.append("}");
        return sb2.toString();
    }
}
