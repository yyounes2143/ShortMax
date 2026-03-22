package com.applovin.impl;

import com.applovin.mediation.MaxAdFormat;
/* loaded from: classes2.dex */
public class g3 {

    /* renamed from: a  reason: collision with root package name */
    private final String f7955a;

    /* renamed from: b  reason: collision with root package name */
    private final MaxAdFormat f7956b;

    public g3(String str, MaxAdFormat maxAdFormat) {
        this.f7955a = str;
        this.f7956b = maxAdFormat;
    }

    protected boolean a(Object obj) {
        return obj instanceof g3;
    }

    public String b() {
        return this.f7955a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g3)) {
            return false;
        }
        g3 g3Var = (g3) obj;
        if (!g3Var.a(this)) {
            return false;
        }
        String b10 = b();
        String b11 = g3Var.b();
        if (b10 != null ? !b10.equals(b11) : b11 != null) {
            return false;
        }
        MaxAdFormat a10 = a();
        MaxAdFormat a11 = g3Var.a();
        if (a10 != null ? a10.equals(a11) : a11 == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        String b10 = b();
        int i10 = 43;
        if (b10 == null) {
            hashCode = 43;
        } else {
            hashCode = b10.hashCode();
        }
        MaxAdFormat a10 = a();
        int i11 = (hashCode + 59) * 59;
        if (a10 != null) {
            i10 = a10.hashCode();
        }
        return i11 + i10;
    }

    public String toString() {
        return this.f7955a + "-" + this.f7956b.getLabel();
    }

    public MaxAdFormat a() {
        return this.f7956b;
    }

    public static g3 a(String str) {
        String[] split = str.split("-");
        return new g3(split[0], MaxAdFormat.formatFromString(split[1]));
    }
}
