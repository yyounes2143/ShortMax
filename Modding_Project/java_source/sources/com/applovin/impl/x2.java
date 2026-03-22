package com.applovin.impl;

import com.applovin.mediation.MaxAdFormat;
import java.util.Map;
/* loaded from: classes2.dex */
public class x2 {

    /* renamed from: a  reason: collision with root package name */
    private final String f10501a;

    /* renamed from: b  reason: collision with root package name */
    private final MaxAdFormat f10502b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f10503c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f10504d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f10505e;

    /* renamed from: f  reason: collision with root package name */
    private final h f10506f;

    public x2(String str, MaxAdFormat maxAdFormat, Map map, Map map2, Map map3, h hVar) {
        this.f10501a = str;
        this.f10502b = maxAdFormat;
        this.f10503c = map;
        this.f10504d = map2;
        this.f10505e = map3;
        this.f10506f = hVar;
    }

    protected boolean a(Object obj) {
        return obj instanceof x2;
    }

    public String b() {
        return this.f10501a;
    }

    public Map c() {
        return this.f10505e;
    }

    public Map d() {
        return this.f10504d;
    }

    public Map e() {
        return this.f10503c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof x2)) {
            return false;
        }
        x2 x2Var = (x2) obj;
        if (!x2Var.a(this)) {
            return false;
        }
        String b10 = b();
        String b11 = x2Var.b();
        if (b10 != null ? !b10.equals(b11) : b11 != null) {
            return false;
        }
        MaxAdFormat a10 = a();
        MaxAdFormat a11 = x2Var.a();
        if (a10 != null ? !a10.equals(a11) : a11 != null) {
            return false;
        }
        Map e10 = e();
        Map e11 = x2Var.e();
        if (e10 != null ? !e10.equals(e11) : e11 != null) {
            return false;
        }
        Map d10 = d();
        Map d11 = x2Var.d();
        if (d10 != null ? !d10.equals(d11) : d11 != null) {
            return false;
        }
        Map c10 = c();
        Map c11 = x2Var.c();
        if (c10 != null ? !c10.equals(c11) : c11 != null) {
            return false;
        }
        h f10 = f();
        h f11 = x2Var.f();
        if (f10 != null ? f10.equals(f11) : f11 == null) {
            return true;
        }
        return false;
    }

    public h f() {
        return this.f10506f;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        String b10 = b();
        int i10 = 43;
        if (b10 == null) {
            hashCode = 43;
        } else {
            hashCode = b10.hashCode();
        }
        MaxAdFormat a10 = a();
        int i11 = (hashCode + 59) * 59;
        if (a10 == null) {
            hashCode2 = 43;
        } else {
            hashCode2 = a10.hashCode();
        }
        int i12 = i11 + hashCode2;
        Map e10 = e();
        int i13 = i12 * 59;
        if (e10 == null) {
            hashCode3 = 43;
        } else {
            hashCode3 = e10.hashCode();
        }
        int i14 = i13 + hashCode3;
        Map d10 = d();
        int i15 = i14 * 59;
        if (d10 == null) {
            hashCode4 = 43;
        } else {
            hashCode4 = d10.hashCode();
        }
        int i16 = i15 + hashCode4;
        Map c10 = c();
        int i17 = i16 * 59;
        if (c10 == null) {
            hashCode5 = 43;
        } else {
            hashCode5 = c10.hashCode();
        }
        int i18 = i17 + hashCode5;
        h f10 = f();
        int i19 = i18 * 59;
        if (f10 != null) {
            i10 = f10.hashCode();
        }
        return i19 + i10;
    }

    public String toString() {
        return "MediatedAdRequestParameters(adUnitId=" + b() + ", adFormat=" + a() + ")";
    }

    public MaxAdFormat a() {
        return this.f10502b;
    }
}
