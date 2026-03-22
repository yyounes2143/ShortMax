package com.amazonaws.services.securitytoken.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.List;
/* loaded from: classes2.dex */
public class AssumeRoleWithWebIdentityRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private String f6376f;

    /* renamed from: g  reason: collision with root package name */
    private String f6377g;

    /* renamed from: h  reason: collision with root package name */
    private String f6378h;

    /* renamed from: i  reason: collision with root package name */
    private String f6379i;

    /* renamed from: j  reason: collision with root package name */
    private List<Object> f6380j;

    /* renamed from: k  reason: collision with root package name */
    private String f6381k;

    /* renamed from: l  reason: collision with root package name */
    private Integer f6382l;

    public AssumeRoleWithWebIdentityRequest A(Integer num) {
        this.f6382l = num;
        return this;
    }

    public AssumeRoleWithWebIdentityRequest B(String str) {
        this.f6376f = str;
        return this;
    }

    public AssumeRoleWithWebIdentityRequest C(String str) {
        this.f6377g = str;
        return this;
    }

    public AssumeRoleWithWebIdentityRequest D(String str) {
        this.f6378h = str;
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
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AssumeRoleWithWebIdentityRequest)) {
            return false;
        }
        AssumeRoleWithWebIdentityRequest assumeRoleWithWebIdentityRequest = (AssumeRoleWithWebIdentityRequest) obj;
        if (assumeRoleWithWebIdentityRequest.v() == null) {
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
        if (assumeRoleWithWebIdentityRequest.v() != null && !assumeRoleWithWebIdentityRequest.v().equals(v())) {
            return false;
        }
        if (assumeRoleWithWebIdentityRequest.y() == null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (y() == null) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 ^ z13) {
            return false;
        }
        if (assumeRoleWithWebIdentityRequest.y() != null && !assumeRoleWithWebIdentityRequest.y().equals(y())) {
            return false;
        }
        if (assumeRoleWithWebIdentityRequest.z() == null) {
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
        if (assumeRoleWithWebIdentityRequest.z() != null && !assumeRoleWithWebIdentityRequest.z().equals(z())) {
            return false;
        }
        if (assumeRoleWithWebIdentityRequest.u() == null) {
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
        if (assumeRoleWithWebIdentityRequest.u() != null && !assumeRoleWithWebIdentityRequest.u().equals(u())) {
            return false;
        }
        if (assumeRoleWithWebIdentityRequest.t() == null) {
            z18 = true;
        } else {
            z18 = false;
        }
        if (t() == null) {
            z19 = true;
        } else {
            z19 = false;
        }
        if (z18 ^ z19) {
            return false;
        }
        if (assumeRoleWithWebIdentityRequest.t() != null && !assumeRoleWithWebIdentityRequest.t().equals(t())) {
            return false;
        }
        if (assumeRoleWithWebIdentityRequest.s() == null) {
            z20 = true;
        } else {
            z20 = false;
        }
        if (s() == null) {
            z21 = true;
        } else {
            z21 = false;
        }
        if (z20 ^ z21) {
            return false;
        }
        if (assumeRoleWithWebIdentityRequest.s() != null && !assumeRoleWithWebIdentityRequest.s().equals(s())) {
            return false;
        }
        if (assumeRoleWithWebIdentityRequest.r() == null) {
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
        if (assumeRoleWithWebIdentityRequest.r() == null || assumeRoleWithWebIdentityRequest.r().equals(r())) {
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
        if (y() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = y().hashCode();
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
        if (t() == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = t().hashCode();
        }
        int i15 = (i14 + hashCode5) * 31;
        if (s() == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = s().hashCode();
        }
        int i16 = (i15 + hashCode6) * 31;
        if (r() != null) {
            i10 = r().hashCode();
        }
        return i16 + i10;
    }

    public Integer r() {
        return this.f6382l;
    }

    public String s() {
        return this.f6381k;
    }

    public List<Object> t() {
        return this.f6380j;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (v() != null) {
            sb2.append("RoleArn: " + v() + ",");
        }
        if (y() != null) {
            sb2.append("RoleSessionName: " + y() + ",");
        }
        if (z() != null) {
            sb2.append("WebIdentityToken: " + z() + ",");
        }
        if (u() != null) {
            sb2.append("ProviderId: " + u() + ",");
        }
        if (t() != null) {
            sb2.append("PolicyArns: " + t() + ",");
        }
        if (s() != null) {
            sb2.append("Policy: " + s() + ",");
        }
        if (r() != null) {
            sb2.append("DurationSeconds: " + r());
        }
        sb2.append("}");
        return sb2.toString();
    }

    public String u() {
        return this.f6379i;
    }

    public String v() {
        return this.f6376f;
    }

    public String y() {
        return this.f6377g;
    }

    public String z() {
        return this.f6378h;
    }
}
