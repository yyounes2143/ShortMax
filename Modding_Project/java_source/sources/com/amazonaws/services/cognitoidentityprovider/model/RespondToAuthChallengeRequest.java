package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class RespondToAuthChallengeRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f5856f;

    /* renamed from: g  reason: collision with root package name */
    private String f5857g;

    /* renamed from: h  reason: collision with root package name */
    private String f5858h;

    /* renamed from: i  reason: collision with root package name */
    private Map<String, String> f5859i;

    /* renamed from: j  reason: collision with root package name */
    private AnalyticsMetadataType f5860j;

    /* renamed from: k  reason: collision with root package name */
    private UserContextDataType f5861k;

    /* renamed from: l  reason: collision with root package name */
    private Map<String, String> f5862l;

    public UserContextDataType A() {
        return this.f5861k;
    }

    public void B(AnalyticsMetadataType analyticsMetadataType) {
        this.f5860j = analyticsMetadataType;
    }

    public void C(String str) {
        this.f5857g = str;
    }

    public void D(Map<String, String> map) {
        this.f5859i = map;
    }

    public void E(String str) {
        this.f5856f = str;
    }

    public void F(Map<String, String> map) {
        this.f5862l = map;
    }

    public void G(String str) {
        this.f5858h = str;
    }

    public void H(UserContextDataType userContextDataType) {
        this.f5861k = userContextDataType;
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
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof RespondToAuthChallengeRequest)) {
            return false;
        }
        RespondToAuthChallengeRequest respondToAuthChallengeRequest = (RespondToAuthChallengeRequest) obj;
        if (respondToAuthChallengeRequest.v() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (v() == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 ^ z11) {
            return false;
        }
        if (respondToAuthChallengeRequest.v() != null && !respondToAuthChallengeRequest.v().equals(v())) {
            return false;
        }
        if (respondToAuthChallengeRequest.t() == null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (t() == null) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 ^ z13) {
            return false;
        }
        if (respondToAuthChallengeRequest.t() != null && !respondToAuthChallengeRequest.t().equals(t())) {
            return false;
        }
        if (respondToAuthChallengeRequest.z() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (z() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (respondToAuthChallengeRequest.z() != null && !respondToAuthChallengeRequest.z().equals(z())) {
            return false;
        }
        if (respondToAuthChallengeRequest.u() == null) {
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
        if (respondToAuthChallengeRequest.u() != null && !respondToAuthChallengeRequest.u().equals(u())) {
            return false;
        }
        if (respondToAuthChallengeRequest.s() == null) {
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
        if (respondToAuthChallengeRequest.s() != null && !respondToAuthChallengeRequest.s().equals(s())) {
            return false;
        }
        if (respondToAuthChallengeRequest.A() == null) {
            z20 = true;
        } else {
            z20 = false;
        }
        if (A() == null) {
            z21 = true;
        } else {
            z21 = false;
        }
        if (z20 ^ z21) {
            return false;
        }
        if (respondToAuthChallengeRequest.A() != null && !respondToAuthChallengeRequest.A().equals(A())) {
            return false;
        }
        if (respondToAuthChallengeRequest.y() == null) {
            z22 = true;
        } else {
            z22 = false;
        }
        if (y() == null) {
            z23 = true;
        } else {
            z23 = false;
        }
        if (z22 ^ z23) {
            return false;
        }
        if (respondToAuthChallengeRequest.y() == null || respondToAuthChallengeRequest.y().equals(y())) {
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
        int i10 = 0;
        if (v() == null) {
            hashCode = 0;
        } else {
            hashCode = v().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (t() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = t().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (z() == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = z().hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        if (u() == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = u().hashCode();
        }
        int i14 = (i13 + hashCode4) * 31;
        if (s() == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = s().hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        if (A() == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = A().hashCode();
        }
        int i16 = (i15 + hashCode6) * 31;
        if (y() != null) {
            i10 = y().hashCode();
        }
        return i16 + i10;
    }

    public RespondToAuthChallengeRequest r(String str, String str2) {
        if (this.f5859i == null) {
            this.f5859i = new HashMap();
        }
        if (!this.f5859i.containsKey(str)) {
            this.f5859i.put(str, str2);
            return this;
        }
        throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
    }

    public AnalyticsMetadataType s() {
        return this.f5860j;
    }

    public String t() {
        return this.f5857g;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (v() != null) {
            sb2.append("ClientId: " + v() + ",");
        }
        if (t() != null) {
            sb2.append("ChallengeName: " + t() + ",");
        }
        if (z() != null) {
            sb2.append("Session: " + z() + ",");
        }
        if (u() != null) {
            sb2.append("ChallengeResponses: " + u() + ",");
        }
        if (s() != null) {
            sb2.append("AnalyticsMetadata: " + s() + ",");
        }
        if (A() != null) {
            sb2.append("UserContextData: " + A() + ",");
        }
        if (y() != null) {
            sb2.append("ClientMetadata: " + y());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public Map<String, String> u() {
        return this.f5859i;
    }

    public String v() {
        return this.f5856f;
    }

    public Map<String, String> y() {
        return this.f5862l;
    }

    public String z() {
        return this.f5858h;
    }
}
