package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.Date;
/* loaded from: classes2.dex */
public class Credentials implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f5795a;

    /* renamed from: b  reason: collision with root package name */
    private String f5796b;

    /* renamed from: c  reason: collision with root package name */
    private String f5797c;

    /* renamed from: d  reason: collision with root package name */
    private Date f5798d;

    public String b() {
        return this.f5795a;
    }

    public Date d() {
        return this.f5798d;
    }

    public String e() {
        return this.f5796b;
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
        if (obj == null || !(obj instanceof Credentials)) {
            return false;
        }
        Credentials credentials = (Credentials) obj;
        if (credentials.b() == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (b() == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 ^ z11) {
            return false;
        }
        if (credentials.b() != null && !credentials.b().equals(b())) {
            return false;
        }
        if (credentials.e() == null) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (e() == null) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 ^ z13) {
            return false;
        }
        if (credentials.e() != null && !credentials.e().equals(e())) {
            return false;
        }
        if (credentials.f() == null) {
            z14 = true;
        } else {
            z14 = false;
        }
        if (f() == null) {
            z15 = true;
        } else {
            z15 = false;
        }
        if (z14 ^ z15) {
            return false;
        }
        if (credentials.f() != null && !credentials.f().equals(f())) {
            return false;
        }
        if (credentials.d() == null) {
            z16 = true;
        } else {
            z16 = false;
        }
        if (d() == null) {
            z17 = true;
        } else {
            z17 = false;
        }
        if (z16 ^ z17) {
            return false;
        }
        if (credentials.d() == null || credentials.d().equals(d())) {
            return true;
        }
        return false;
    }

    public String f() {
        return this.f5797c;
    }

    public void g(String str) {
        this.f5795a = str;
    }

    public void h(Date date) {
        this.f5798d = date;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int i10 = 0;
        if (b() == null) {
            hashCode = 0;
        } else {
            hashCode = b().hashCode();
        }
        int i11 = (hashCode + 31) * 31;
        if (e() == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = e().hashCode();
        }
        int i12 = (i11 + hashCode2) * 31;
        if (f() == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = f().hashCode();
        }
        int i13 = (i12 + hashCode3) * 31;
        if (d() != null) {
            i10 = d().hashCode();
        }
        return i13 + i10;
    }

    public void i(String str) {
        this.f5796b = str;
    }

    public void j(String str) {
        this.f5797c = str;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("{");
        if (b() != null) {
            sb2.append("AccessKeyId: " + b() + ",");
        }
        if (e() != null) {
            sb2.append("SecretKey: " + e() + ",");
        }
        if (f() != null) {
            sb2.append("SessionToken: " + f() + ",");
        }
        if (d() != null) {
            sb2.append("Expiration: " + d());
        }
        sb2.append("}");
        return sb2.toString();
    }
}
