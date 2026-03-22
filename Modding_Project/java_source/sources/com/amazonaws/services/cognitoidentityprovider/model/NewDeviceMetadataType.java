package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class NewDeviceMetadataType implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f5847a;

    /* renamed from: b  reason: collision with root package name */
    private String f5848b;

    public String b() {
        return this.f5848b;
    }

    public String d() {
        return this.f5847a;
    }

    public void e(String str) {
        this.f5848b = str;
    }

    public boolean equals(Object obj) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NewDeviceMetadataType)) {
            return false;
        }
        NewDeviceMetadataType newDeviceMetadataType = (NewDeviceMetadataType) obj;
        if (newDeviceMetadataType.d() == null) {
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
        if (newDeviceMetadataType.d() != null && !newDeviceMetadataType.d().equals(d())) {
            return false;
        }
        if (newDeviceMetadataType.b() == null) {
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
        if (newDeviceMetadataType.b() == null || newDeviceMetadataType.b().equals(b())) {
            return true;
        }
        return false;
    }

    public void f(String str) {
        this.f5847a = str;
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
            sb2.append("DeviceKey: " + d() + ",");
        }
        if (b() != null) {
            sb2.append("DeviceGroupKey: " + b());
        }
        sb2.append("}");
        return sb2.toString();
    }
}
