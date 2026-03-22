package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class DeviceSecretVerifierConfigType implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f5828a;

    /* renamed from: b  reason: collision with root package name */
    private String f5829b;

    public String b() {
        return this.f5828a;
    }

    public String d() {
        return this.f5829b;
    }

    public void e(String str) {
        this.f5828a = str;
    }

    public boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DeviceSecretVerifierConfigType)) {
            return false;
        }
        DeviceSecretVerifierConfigType deviceSecretVerifierConfigType = (DeviceSecretVerifierConfigType) obj;
        if (deviceSecretVerifierConfigType.b() == null) {
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
        if (deviceSecretVerifierConfigType.b() != null && !deviceSecretVerifierConfigType.b().equals(b())) {
            return false;
        }
        if (deviceSecretVerifierConfigType.d() == null) {
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
        if (deviceSecretVerifierConfigType.d() == null || deviceSecretVerifierConfigType.d().equals(d())) {
            return true;
        }
        return false;
    }

    public void f(String str) {
        this.f5829b = str;
    }

    public int hashCode() {
        int hashCode;
        int i10 = 0;
        if (b() == null) {
            hashCode = 0;
        } else {
            hashCode = b().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (d() != null) {
            i10 = d().hashCode();
        }
        return i11 + i10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (b() != null) {
            sb2.append("PasswordVerifier: " + b() + ",");
        }
        if (d() != null) {
            sb2.append("Salt: " + d());
        }
        sb2.append("}");
        return sb2.toString();
    }
}
