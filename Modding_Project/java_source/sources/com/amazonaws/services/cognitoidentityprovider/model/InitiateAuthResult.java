package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.Map;
/* loaded from: classes2.dex */
public class InitiateAuthResult implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f5843a;

    /* renamed from: b  reason: collision with root package name */
    private String f5844b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f5845c;

    /* renamed from: d  reason: collision with root package name */
    private AuthenticationResultType f5846d;

    public AuthenticationResultType b() {
        return this.f5846d;
    }

    public String d() {
        return this.f5843a;
    }

    public Map<String, String> e() {
        return this.f5845c;
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
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof InitiateAuthResult)) {
            return false;
        }
        InitiateAuthResult initiateAuthResult = (InitiateAuthResult) obj;
        if (initiateAuthResult.d() == null) {
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
        if (initiateAuthResult.d() != null && !initiateAuthResult.d().equals(d())) {
            return false;
        }
        if (initiateAuthResult.f() == null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (f() == null) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 ^ z13) {
            return false;
        }
        if (initiateAuthResult.f() != null && !initiateAuthResult.f().equals(f())) {
            return false;
        }
        if (initiateAuthResult.e() == null) {
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
        if (initiateAuthResult.e() != null && !initiateAuthResult.e().equals(e())) {
            return false;
        }
        if (initiateAuthResult.b() == null) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (b() == null) {
            z17 = true;
        } else {
            z17 = false;
        }
        if (z16 ^ z17) {
            return false;
        }
        if (initiateAuthResult.b() == null || initiateAuthResult.b().equals(b())) {
            return true;
        }
        return false;
    }

    public String f() {
        return this.f5844b;
    }

    public void g(AuthenticationResultType authenticationResultType) {
        this.f5846d = authenticationResultType;
    }

    public void h(String str) {
        this.f5843a = str;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i10 = 0;
        if (d() == null) {
            hashCode = 0;
        } else {
            hashCode = d().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (f() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = f().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (e() == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = e().hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        if (b() != null) {
            i10 = b().hashCode();
        }
        return i13 + i10;
    }

    public void i(Map<String, String> map) {
        this.f5845c = map;
    }

    public void j(String str) {
        this.f5844b = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (d() != null) {
            sb2.append("ChallengeName: " + d() + ",");
        }
        if (f() != null) {
            sb2.append("Session: " + f() + ",");
        }
        if (e() != null) {
            sb2.append("ChallengeParameters: " + e() + ",");
        }
        if (b() != null) {
            sb2.append("AuthenticationResult: " + b());
        }
        sb2.append("}");
        return sb2.toString();
    }
}
