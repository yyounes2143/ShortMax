package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class SignUpRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f5867f;

    /* renamed from: g  reason: collision with root package name */
    private String f5868g;

    /* renamed from: h  reason: collision with root package name */
    private String f5869h;

    /* renamed from: i  reason: collision with root package name */
    private String f5870i;

    /* renamed from: j  reason: collision with root package name */
    private List<AttributeType> f5871j;

    /* renamed from: k  reason: collision with root package name */
    private List<AttributeType> f5872k;

    /* renamed from: l  reason: collision with root package name */
    private AnalyticsMetadataType f5873l;

    /* renamed from: m  reason: collision with root package name */
    private UserContextDataType f5874m;

    /* renamed from: n  reason: collision with root package name */
    private Map<String, String> f5875n;

    public String A() {
        return this.f5869h;
    }

    public List<AttributeType> B() {
        return this.f5872k;
    }

    public void C(AnalyticsMetadataType analyticsMetadataType) {
        this.f5873l = analyticsMetadataType;
    }

    public void D(Collection<AttributeType> collection) {
        if (collection == null) {
            this.f5871j = null;
        } else {
            this.f5871j = new ArrayList(collection);
        }
    }

    public void E(Collection<AttributeType> collection) {
        if (collection == null) {
            this.f5872k = null;
        } else {
            this.f5872k = new ArrayList(collection);
        }
    }

    public SignUpRequest F(String str) {
        this.f5867f = str;
        return this;
    }

    public SignUpRequest G(Map<String, String> map) {
        this.f5875n = map;
        return this;
    }

    public SignUpRequest H(String str) {
        this.f5870i = str;
        return this;
    }

    public SignUpRequest I(String str) {
        this.f5868g = str;
        return this;
    }

    public SignUpRequest J(Collection<AttributeType> collection) {
        D(collection);
        return this;
    }

    public SignUpRequest K(UserContextDataType userContextDataType) {
        this.f5874m = userContextDataType;
        return this;
    }

    public SignUpRequest L(String str) {
        this.f5869h = str;
        return this;
    }

    public SignUpRequest M(Collection<AttributeType> collection) {
        E(collection);
        return this;
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
        boolean z22;
        boolean z23;
        boolean z24;
        boolean z25;
        boolean z26;
        boolean z27;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SignUpRequest)) {
            return false;
        }
        SignUpRequest signUpRequest = (SignUpRequest) obj;
        if (signUpRequest.s() == null) {
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
        if (signUpRequest.s() != null && !signUpRequest.s().equals(s())) {
            return false;
        }
        if (signUpRequest.v() == null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (v() == null) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 ^ z13) {
            return false;
        }
        if (signUpRequest.v() != null && !signUpRequest.v().equals(v())) {
            return false;
        }
        if (signUpRequest.A() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (A() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (signUpRequest.A() != null && !signUpRequest.A().equals(A())) {
            return false;
        }
        if (signUpRequest.u() == null) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (u() == null) {
            z17 = true;
        } else {
            z17 = false;
        }
        if (z16 ^ z17) {
            return false;
        }
        if (signUpRequest.u() != null && !signUpRequest.u().equals(u())) {
            return false;
        }
        if (signUpRequest.y() == null) {
            z18 = true;
        } else {
            z18 = false;
        }
        if (y() == null) {
            z19 = true;
        } else {
            z19 = false;
        }
        if (z18 ^ z19) {
            return false;
        }
        if (signUpRequest.y() != null && !signUpRequest.y().equals(y())) {
            return false;
        }
        if (signUpRequest.B() == null) {
            z20 = true;
        } else {
            z20 = false;
        }
        if (B() == null) {
            z21 = true;
        } else {
            z21 = false;
        }
        if (z20 ^ z21) {
            return false;
        }
        if (signUpRequest.B() != null && !signUpRequest.B().equals(B())) {
            return false;
        }
        if (signUpRequest.r() == null) {
            z22 = true;
        } else {
            z22 = false;
        }
        if (r() == null) {
            z23 = true;
        } else {
            z23 = false;
        }
        if (z22 ^ z23) {
            return false;
        }
        if (signUpRequest.r() != null && !signUpRequest.r().equals(r())) {
            return false;
        }
        if (signUpRequest.z() == null) {
            z24 = true;
        } else {
            z24 = false;
        }
        if (z() == null) {
            z25 = true;
        } else {
            z25 = false;
        }
        if (z24 ^ z25) {
            return false;
        }
        if (signUpRequest.z() != null && !signUpRequest.z().equals(z())) {
            return false;
        }
        if (signUpRequest.t() == null) {
            z26 = true;
        } else {
            z26 = false;
        }
        if (t() == null) {
            z27 = true;
        } else {
            z27 = false;
        }
        if (z26 ^ z27) {
            return false;
        }
        if (signUpRequest.t() == null || signUpRequest.t().equals(t())) {
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
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int i10 = 0;
        if (s() == null) {
            hashCode = 0;
        } else {
            hashCode = s().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (v() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = v().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (A() == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = A().hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        if (u() == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = u().hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        if (y() == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = y().hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        if (B() == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = B().hashCode();
        }
        int i16 = (i15 + hashCode6) * 31;
        if (r() == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = r().hashCode();
        }
        int i17 = (i16 + hashCode7) * 31;
        if (z() == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = z().hashCode();
        }
        int i18 = (i17 + hashCode8) * 31;
        if (t() != null) {
            i10 = t().hashCode();
        }
        return i18 + i10;
    }

    public AnalyticsMetadataType r() {
        return this.f5873l;
    }

    public String s() {
        return this.f5867f;
    }

    public Map<String, String> t() {
        return this.f5875n;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (s() != null) {
            sb2.append("ClientId: " + s() + ",");
        }
        if (v() != null) {
            sb2.append("SecretHash: " + v() + ",");
        }
        if (A() != null) {
            sb2.append("Username: " + A() + ",");
        }
        if (u() != null) {
            sb2.append("Password: " + u() + ",");
        }
        if (y() != null) {
            sb2.append("UserAttributes: " + y() + ",");
        }
        if (B() != null) {
            sb2.append("ValidationData: " + B() + ",");
        }
        if (r() != null) {
            sb2.append("AnalyticsMetadata: " + r() + ",");
        }
        if (z() != null) {
            sb2.append("UserContextData: " + z() + ",");
        }
        if (t() != null) {
            sb2.append("ClientMetadata: " + t());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public String u() {
        return this.f5870i;
    }

    public String v() {
        return this.f5868g;
    }

    public List<AttributeType> y() {
        return this.f5871j;
    }

    public UserContextDataType z() {
        return this.f5874m;
    }
}
