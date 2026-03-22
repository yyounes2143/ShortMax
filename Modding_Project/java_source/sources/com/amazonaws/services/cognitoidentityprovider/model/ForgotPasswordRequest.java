package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes2.dex */
public class ForgotPasswordRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f5830f;

    /* renamed from: g  reason: collision with root package name */
    private String f5831g;

    /* renamed from: h  reason: collision with root package name */
    private UserContextDataType f5832h;

    /* renamed from: i  reason: collision with root package name */
    private String f5833i;

    /* renamed from: j  reason: collision with root package name */
    private AnalyticsMetadataType f5834j;

    /* renamed from: k  reason: collision with root package name */
    private Map<String, String> f5835k;

    public void A(String str) {
        this.f5830f = str;
    }

    public void B(Map<String, String> map) {
        this.f5835k = map;
    }

    public void C(String str) {
        this.f5831g = str;
    }

    public void D(UserContextDataType userContextDataType) {
        this.f5832h = userContextDataType;
    }

    public void E(String str) {
        this.f5833i = str;
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
        if (obj == null || !(obj instanceof ForgotPasswordRequest)) {
            return false;
        }
        ForgotPasswordRequest forgotPasswordRequest = (ForgotPasswordRequest) obj;
        if (forgotPasswordRequest.s() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (s() == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 ^ z11) {
            return false;
        }
        if (forgotPasswordRequest.s() != null && !forgotPasswordRequest.s().equals(s())) {
            return false;
        }
        if (forgotPasswordRequest.u() == null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (u() == null) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 ^ z13) {
            return false;
        }
        if (forgotPasswordRequest.u() != null && !forgotPasswordRequest.u().equals(u())) {
            return false;
        }
        if (forgotPasswordRequest.v() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (v() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (forgotPasswordRequest.v() != null && !forgotPasswordRequest.v().equals(v())) {
            return false;
        }
        if (forgotPasswordRequest.y() == null) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (y() == null) {
            z17 = true;
        } else {
            z17 = false;
        }
        if (z16 ^ z17) {
            return false;
        }
        if (forgotPasswordRequest.y() != null && !forgotPasswordRequest.y().equals(y())) {
            return false;
        }
        if (forgotPasswordRequest.r() == null) {
            z18 = true;
        } else {
            z18 = false;
        }
        if (r() == null) {
            z19 = true;
        } else {
            z19 = false;
        }
        if (z18 ^ z19) {
            return false;
        }
        if (forgotPasswordRequest.r() != null && !forgotPasswordRequest.r().equals(r())) {
            return false;
        }
        if (forgotPasswordRequest.t() == null) {
            z20 = true;
        } else {
            z20 = false;
        }
        if (t() == null) {
            z21 = true;
        } else {
            z21 = false;
        }
        if (z20 ^ z21) {
            return false;
        }
        if (forgotPasswordRequest.t() == null || forgotPasswordRequest.t().equals(t())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int i10 = 0;
        if (s() == null) {
            hashCode = 0;
        } else {
            hashCode = s().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (u() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = u().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (v() == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = v().hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        if (y() == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = y().hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        if (r() == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = r().hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        if (t() != null) {
            i10 = t().hashCode();
        }
        return i15 + i10;
    }

    public AnalyticsMetadataType r() {
        return this.f5834j;
    }

    public String s() {
        return this.f5830f;
    }

    public Map<String, String> t() {
        return this.f5835k;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (s() != null) {
            sb2.append("ClientId: " + s() + ",");
        }
        if (u() != null) {
            sb2.append("SecretHash: " + u() + ",");
        }
        if (v() != null) {
            sb2.append("UserContextData: " + v() + ",");
        }
        if (y() != null) {
            sb2.append("Username: " + y() + ",");
        }
        if (r() != null) {
            sb2.append("AnalyticsMetadata: " + r() + ",");
        }
        if (t() != null) {
            sb2.append("ClientMetadata: " + t());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public String u() {
        return this.f5831g;
    }

    public UserContextDataType v() {
        return this.f5832h;
    }

    public String y() {
        return this.f5833i;
    }

    public void z(AnalyticsMetadataType analyticsMetadataType) {
        this.f5834j = analyticsMetadataType;
    }
}
