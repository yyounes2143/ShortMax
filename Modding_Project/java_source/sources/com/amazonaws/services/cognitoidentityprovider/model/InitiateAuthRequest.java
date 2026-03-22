package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class InitiateAuthRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f5837f;

    /* renamed from: g  reason: collision with root package name */
    private Map<String, String> f5838g;

    /* renamed from: h  reason: collision with root package name */
    private Map<String, String> f5839h;

    /* renamed from: i  reason: collision with root package name */
    private String f5840i;

    /* renamed from: j  reason: collision with root package name */
    private AnalyticsMetadataType f5841j;

    /* renamed from: k  reason: collision with root package name */
    private UserContextDataType f5842k;

    public void A(AnalyticsMetadataType analyticsMetadataType) {
        this.f5841j = analyticsMetadataType;
    }

    public void B(String str) {
        this.f5837f = str;
    }

    public void C(Map<String, String> map) {
        this.f5838g = map;
    }

    public void D(String str) {
        this.f5840i = str;
    }

    public void E(Map<String, String> map) {
        this.f5839h = map;
    }

    public void F(UserContextDataType userContextDataType) {
        this.f5842k = userContextDataType;
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
        if (obj == null || !(obj instanceof InitiateAuthRequest)) {
            return false;
        }
        InitiateAuthRequest initiateAuthRequest = (InitiateAuthRequest) obj;
        if (initiateAuthRequest.t() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (t() == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 ^ z11) {
            return false;
        }
        if (initiateAuthRequest.t() != null && !initiateAuthRequest.t().equals(t())) {
            return false;
        }
        if (initiateAuthRequest.u() == null) {
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
        if (initiateAuthRequest.u() != null && !initiateAuthRequest.u().equals(u())) {
            return false;
        }
        if (initiateAuthRequest.y() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (y() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (initiateAuthRequest.y() != null && !initiateAuthRequest.y().equals(y())) {
            return false;
        }
        if (initiateAuthRequest.v() == null) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (v() == null) {
            z17 = true;
        } else {
            z17 = false;
        }
        if (z16 ^ z17) {
            return false;
        }
        if (initiateAuthRequest.v() != null && !initiateAuthRequest.v().equals(v())) {
            return false;
        }
        if (initiateAuthRequest.s() == null) {
            z18 = true;
        } else {
            z18 = false;
        }
        if (s() == null) {
            z19 = true;
        } else {
            z19 = false;
        }
        if (z18 ^ z19) {
            return false;
        }
        if (initiateAuthRequest.s() != null && !initiateAuthRequest.s().equals(s())) {
            return false;
        }
        if (initiateAuthRequest.z() == null) {
            z20 = true;
        } else {
            z20 = false;
        }
        if (z() == null) {
            z21 = true;
        } else {
            z21 = false;
        }
        if (z20 ^ z21) {
            return false;
        }
        if (initiateAuthRequest.z() == null || initiateAuthRequest.z().equals(z())) {
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
        if (t() == null) {
            hashCode = 0;
        } else {
            hashCode = t().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (u() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = u().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (y() == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = y().hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        if (v() == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = v().hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        if (s() == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = s().hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        if (z() != null) {
            i10 = z().hashCode();
        }
        return i15 + i10;
    }

    public InitiateAuthRequest r(String str, String str2) {
        if (this.f5838g == null) {
            this.f5838g = new HashMap();
        }
        if (!this.f5838g.containsKey(str)) {
            this.f5838g.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public AnalyticsMetadataType s() {
        return this.f5841j;
    }

    public String t() {
        return this.f5837f;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (t() != null) {
            sb2.append("AuthFlow: " + t() + ",");
        }
        if (u() != null) {
            sb2.append("AuthParameters: " + u() + ",");
        }
        if (y() != null) {
            sb2.append("ClientMetadata: " + y() + ",");
        }
        if (v() != null) {
            sb2.append("ClientId: " + v() + ",");
        }
        if (s() != null) {
            sb2.append("AnalyticsMetadata: " + s() + ",");
        }
        if (z() != null) {
            sb2.append("UserContextData: " + z());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public Map<String, String> u() {
        return this.f5838g;
    }

    public String v() {
        return this.f5840i;
    }

    public Map<String, String> y() {
        return this.f5839h;
    }

    public UserContextDataType z() {
        return this.f5842k;
    }
}
