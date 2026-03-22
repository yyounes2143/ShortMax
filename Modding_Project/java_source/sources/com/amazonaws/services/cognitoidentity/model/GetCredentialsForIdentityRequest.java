package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.Map;
/* loaded from: classes2.dex */
public class GetCredentialsForIdentityRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f5799f;

    /* renamed from: g  reason: collision with root package name */
    private Map<String, String> f5800g;

    /* renamed from: h  reason: collision with root package name */
    private String f5801h;

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
        if (obj == null || !(obj instanceof GetCredentialsForIdentityRequest)) {
            return false;
        }
        GetCredentialsForIdentityRequest getCredentialsForIdentityRequest = (GetCredentialsForIdentityRequest) obj;
        if (getCredentialsForIdentityRequest.s() == null) {
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
        if (getCredentialsForIdentityRequest.s() != null && !getCredentialsForIdentityRequest.s().equals(s())) {
            return false;
        }
        if (getCredentialsForIdentityRequest.t() == null) {
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
        if (getCredentialsForIdentityRequest.t() != null && !getCredentialsForIdentityRequest.t().equals(t())) {
            return false;
        }
        if (getCredentialsForIdentityRequest.r() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (r() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (getCredentialsForIdentityRequest.r() == null || getCredentialsForIdentityRequest.r().equals(r())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int i10 = 0;
        if (s() == null) {
            hashCode = 0;
        } else {
            hashCode = s().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (t() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = t().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (r() != null) {
            i10 = r().hashCode();
        }
        return i12 + i10;
    }

    public String r() {
        return this.f5801h;
    }

    public String s() {
        return this.f5799f;
    }

    public Map<String, String> t() {
        return this.f5800g;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (s() != null) {
            sb2.append("IdentityId: " + s() + ",");
        }
        if (t() != null) {
            sb2.append("Logins: " + t() + ",");
        }
        if (r() != null) {
            sb2.append("CustomRoleArn: " + r());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public GetCredentialsForIdentityRequest u(String str) {
        this.f5801h = str;
        return this;
    }

    public GetCredentialsForIdentityRequest v(String str) {
        this.f5799f = str;
        return this;
    }

    public GetCredentialsForIdentityRequest y(Map<String, String> map) {
        this.f5800g = map;
        return this;
    }
}
