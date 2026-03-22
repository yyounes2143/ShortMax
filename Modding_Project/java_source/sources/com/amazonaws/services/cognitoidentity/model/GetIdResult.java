package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class GetIdResult implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f5807a;

    public String b() {
        return this.f5807a;
    }

    public void d(String str) {
        this.f5807a = str;
    }

    public boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetIdResult)) {
            return false;
        }
        GetIdResult getIdResult = (GetIdResult) obj;
        if (getIdResult.b() == null) {
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
        if (getIdResult.b() == null || getIdResult.b().equals(b())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        if (b() == null) {
            hashCode = 0;
        } else {
            hashCode = b().hashCode();
        }
        return 31 + hashCode;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (b() != null) {
            sb2.append("IdentityId: " + b());
        }
        sb2.append("}");
        return sb2.toString();
    }
}
