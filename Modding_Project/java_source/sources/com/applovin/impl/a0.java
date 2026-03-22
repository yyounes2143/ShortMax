package com.applovin.impl;
/* loaded from: classes2.dex */
public class a0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f7285a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7286b;

    /* renamed from: c  reason: collision with root package name */
    private final String f7287c;

    /* renamed from: d  reason: collision with root package name */
    private final String f7288d;

    /* renamed from: e  reason: collision with root package name */
    private final String f7289e;

    /* renamed from: f  reason: collision with root package name */
    private final int f7290f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f7291g;

    public a0(String str, int i10) {
        this.f7289e = str;
        this.f7290f = i10;
        String[] split = str.split(",");
        boolean z10 = split.length == 3 || split.length == 4;
        this.f7291g = z10;
        if (z10) {
            this.f7285a = a(split[0]);
            this.f7286b = a(split[1]);
            this.f7287c = a(split[2]);
            this.f7288d = split.length == 4 ? a(split[3]) : "";
            return;
        }
        this.f7285a = "";
        this.f7286b = "";
        this.f7287c = "";
        this.f7288d = "";
    }

    protected boolean a(Object obj) {
        return obj instanceof a0;
    }

    public String b() {
        return this.f7285a;
    }

    public String c() {
        return this.f7286b;
    }

    public String d() {
        return this.f7289e;
    }

    public String e() {
        return this.f7287c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        if (!a0Var.a((Object) this)) {
            return false;
        }
        String b10 = b();
        String b11 = a0Var.b();
        if (b10 != null ? !b10.equals(b11) : b11 != null) {
            return false;
        }
        String c10 = c();
        String c11 = a0Var.c();
        if (c10 != null ? !c10.equals(c11) : c11 != null) {
            return false;
        }
        String e10 = e();
        String e11 = a0Var.e();
        if (e10 != null ? !e10.equals(e11) : e11 != null) {
            return false;
        }
        String a10 = a();
        String a11 = a0Var.a();
        if (a10 != null ? a10.equals(a11) : a11 == null) {
            return true;
        }
        return false;
    }

    public int f() {
        return this.f7290f;
    }

    public boolean g() {
        return this.f7285a.equals("applovin.com");
    }

    public boolean h() {
        return this.f7291g;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        String b10 = b();
        int i10 = 43;
        if (b10 == null) {
            hashCode = 43;
        } else {
            hashCode = b10.hashCode();
        }
        String c10 = c();
        int i11 = (hashCode + 59) * 59;
        if (c10 == null) {
            hashCode2 = 43;
        } else {
            hashCode2 = c10.hashCode();
        }
        int i12 = i11 + hashCode2;
        String e10 = e();
        int i13 = i12 * 59;
        if (e10 == null) {
            hashCode3 = 43;
        } else {
            hashCode3 = e10.hashCode();
        }
        int i14 = i13 + hashCode3;
        String a10 = a();
        int i15 = i14 * 59;
        if (a10 != null) {
            i10 = a10.hashCode();
        }
        return i15 + i10;
    }

    public String toString() {
        return "AppAdsTxtEntry(domainName=" + b() + ", publisherId=" + c() + ", relationship=" + e() + ", certificateAuthorityId=" + a() + ", rawValue=" + d() + ", rowNumber=" + f() + ", valid=" + h() + ")";
    }

    public String a() {
        return this.f7288d;
    }

    public boolean a(a0 a0Var) {
        if (a0Var.b().equals(this.f7285a) && a0Var.c().equals(this.f7286b) && a0Var.e().equals(this.f7287c)) {
            if (a0Var.a().equals("")) {
                return true;
            }
            return a0Var.a().equals(this.f7288d);
        }
        return false;
    }

    private String a(String str) {
        return str.replace((char) 173, ' ').trim();
    }

    public a0(String str) {
        this(str, -1);
    }
}
