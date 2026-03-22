package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class UserContextDataType implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f5879a;

    /* renamed from: b  reason: collision with root package name */
    private String f5880b;

    public String b() {
        return this.f5880b;
    }

    public String d() {
        return this.f5879a;
    }

    public void e(String str) {
        this.f5880b = str;
    }

    public boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UserContextDataType)) {
            return false;
        }
        UserContextDataType userContextDataType = (UserContextDataType) obj;
        if (userContextDataType.d() == null) {
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
        if (userContextDataType.d() != null && !userContextDataType.d().equals(d())) {
            return false;
        }
        if (userContextDataType.b() == null) {
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
        if (userContextDataType.b() == null || userContextDataType.b().equals(b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i10 = 0;
        if (d() == null) {
            hashCode = 0;
        } else {
            hashCode = d().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (b() != null) {
            i10 = b().hashCode();
        }
        return i11 + i10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (d() != null) {
            sb2.append("IpAddress: " + d() + ",");
        }
        if (b() != null) {
            sb2.append("EncodedData: " + b());
        }
        sb2.append("}");
        return sb2.toString();
    }
}
