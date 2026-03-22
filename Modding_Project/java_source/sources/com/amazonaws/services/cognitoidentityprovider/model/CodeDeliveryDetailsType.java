package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class CodeDeliveryDetailsType implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f5820a;

    /* renamed from: b  reason: collision with root package name */
    private String f5821b;

    /* renamed from: c  reason: collision with root package name */
    private String f5822c;

    public String b() {
        return this.f5822c;
    }

    public String d() {
        return this.f5821b;
    }

    public String e() {
        return this.f5820a;
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
        if (obj == null || !(obj instanceof CodeDeliveryDetailsType)) {
            return false;
        }
        CodeDeliveryDetailsType codeDeliveryDetailsType = (CodeDeliveryDetailsType) obj;
        if (codeDeliveryDetailsType.e() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (e() == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 ^ z11) {
            return false;
        }
        if (codeDeliveryDetailsType.e() != null && !codeDeliveryDetailsType.e().equals(e())) {
            return false;
        }
        if (codeDeliveryDetailsType.d() == null) {
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
        if (codeDeliveryDetailsType.d() != null && !codeDeliveryDetailsType.d().equals(d())) {
            return false;
        }
        if (codeDeliveryDetailsType.b() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (b() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (codeDeliveryDetailsType.b() == null || codeDeliveryDetailsType.b().equals(b())) {
            return true;
        }
        return false;
    }

    public void f(String str) {
        this.f5822c = str;
    }

    public void g(String str) {
        this.f5821b = str;
    }

    public void h(String str) {
        this.f5820a = str;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int i10 = 0;
        if (e() == null) {
            hashCode = 0;
        } else {
            hashCode = e().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (d() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = d().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (b() != null) {
            i10 = b().hashCode();
        }
        return i12 + i10;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (e() != null) {
            sb2.append("Destination: " + e() + ",");
        }
        if (d() != null) {
            sb2.append("DeliveryMedium: " + d() + ",");
        }
        if (b() != null) {
            sb2.append("AttributeName: " + b());
        }
        sb2.append("}");
        return sb2.toString();
    }
}
