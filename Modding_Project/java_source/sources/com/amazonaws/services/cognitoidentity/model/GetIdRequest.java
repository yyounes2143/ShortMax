package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes2.dex */
public class GetIdRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f5804f;

    /* renamed from: g  reason: collision with root package name */
    private String f5805g;

    /* renamed from: h  reason: collision with root package name */
    private Map<String, String> f5806h;

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
        if (obj == null || !(obj instanceof GetIdRequest)) {
            return false;
        }
        GetIdRequest getIdRequest = (GetIdRequest) obj;
        if (getIdRequest.r() == null) {
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
        if (getIdRequest.r() != null && !getIdRequest.r().equals(r())) {
            return false;
        }
        if (getIdRequest.s() == null) {
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
        if (getIdRequest.s() != null && !getIdRequest.s().equals(s())) {
            return false;
        }
        if (getIdRequest.t() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (t() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (getIdRequest.t() == null || getIdRequest.t().equals(t())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
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
        if (t() != null) {
            i10 = t().hashCode();
        }
        return i12 + i10;
    }

    public String r() {
        return this.f5804f;
    }

    public String s() {
        return this.f5805g;
    }

    public Map<String, String> t() {
        return this.f5806h;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (r() != null) {
            sb2.append("AccountId: " + r() + ",");
        }
        if (s() != null) {
            sb2.append("IdentityPoolId: " + s() + ",");
        }
        if (t() != null) {
            sb2.append("Logins: " + t());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public GetIdRequest u(String str) {
        this.f5804f = str;
        return this;
    }

    public GetIdRequest v(String str) {
        this.f5805g = str;
        return this;
    }

    public GetIdRequest y(Map<String, String> map) {
        this.f5806h = map;
        return this;
    }
}
