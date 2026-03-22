package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class Owner implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6119a;

    /* renamed from: b  reason: collision with root package name */
    private String f6120b;

    public String b() {
        return this.f6119a;
    }

    public String d() {
        return this.f6120b;
    }

    public void e(String str) {
        this.f6119a = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Owner)) {
            return false;
        }
        Owner owner = (Owner) obj;
        String d10 = owner.d();
        String b10 = owner.b();
        String d11 = d();
        String b11 = b();
        if (d10 == null) {
            d10 = "";
        }
        if (b10 == null) {
            b10 = "";
        }
        if (d11 == null) {
            d11 = "";
        }
        if (b11 == null) {
            b11 = "";
        }
        if (!d10.equals(d11) || !b10.equals(b11)) {
            return false;
        }
        return true;
    }

    public void f(String str) {
        this.f6120b = str;
    }

    public int hashCode() {
        String str = this.f6120b;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "S3Owner [name=" + b() + ",id=" + d() + "]";
    }
}
