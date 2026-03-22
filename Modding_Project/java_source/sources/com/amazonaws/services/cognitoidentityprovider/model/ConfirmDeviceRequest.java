package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class ConfirmDeviceRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f5823f;

    /* renamed from: g  reason: collision with root package name */
    private String f5824g;

    /* renamed from: h  reason: collision with root package name */
    private DeviceSecretVerifierConfigType f5825h;

    /* renamed from: i  reason: collision with root package name */
    private String f5826i;

    public void A(DeviceSecretVerifierConfigType deviceSecretVerifierConfigType) {
        this.f5825h = deviceSecretVerifierConfigType;
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
        if (obj == null || !(obj instanceof ConfirmDeviceRequest)) {
            return false;
        }
        ConfirmDeviceRequest confirmDeviceRequest = (ConfirmDeviceRequest) obj;
        if (confirmDeviceRequest.r() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (r() == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 ^ z11) {
            return false;
        }
        if (confirmDeviceRequest.r() != null && !confirmDeviceRequest.r().equals(r())) {
            return false;
        }
        if (confirmDeviceRequest.s() == null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (s() == null) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 ^ z13) {
            return false;
        }
        if (confirmDeviceRequest.s() != null && !confirmDeviceRequest.s().equals(s())) {
            return false;
        }
        if (confirmDeviceRequest.u() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (u() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (confirmDeviceRequest.u() != null && !confirmDeviceRequest.u().equals(u())) {
            return false;
        }
        if (confirmDeviceRequest.t() == null) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (t() == null) {
            z17 = true;
        } else {
            z17 = false;
        }
        if (z16 ^ z17) {
            return false;
        }
        if (confirmDeviceRequest.t() == null || confirmDeviceRequest.t().equals(t())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i10 = 0;
        if (r() == null) {
            hashCode = 0;
        } else {
            hashCode = r().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (s() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = s().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (u() == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = u().hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        if (t() != null) {
            i10 = t().hashCode();
        }
        return i13 + i10;
    }

    public String r() {
        return this.f5823f;
    }

    public String s() {
        return this.f5824g;
    }

    public String t() {
        return this.f5826i;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (r() != null) {
            sb2.append("AccessToken: " + r() + ",");
        }
        if (s() != null) {
            sb2.append("DeviceKey: " + s() + ",");
        }
        if (u() != null) {
            sb2.append("DeviceSecretVerifierConfig: " + u() + ",");
        }
        if (t() != null) {
            sb2.append("DeviceName: " + t());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public DeviceSecretVerifierConfigType u() {
        return this.f5825h;
    }

    public void v(String str) {
        this.f5823f = str;
    }

    public void y(String str) {
        this.f5824g = str;
    }

    public void z(String str) {
        this.f5826i = str;
    }
}
