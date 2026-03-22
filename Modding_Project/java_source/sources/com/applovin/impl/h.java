package com.applovin.impl;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final int f7989a;

    /* renamed from: b  reason: collision with root package name */
    private final int f7990b;

    /* renamed from: c  reason: collision with root package name */
    private final int f7991c;

    /* renamed from: d  reason: collision with root package name */
    private final int f7992d;

    public h(int i10, int i11, int i12, int i13) {
        this.f7989a = i10;
        this.f7990b = i11;
        this.f7991c = i12;
        this.f7992d = i13;
    }

    protected boolean a(Object obj) {
        return obj instanceof h;
    }

    public int b() {
        return this.f7991c;
    }

    public int c() {
        return this.f7990b;
    }

    public int d() {
        return this.f7989a;
    }

    public Map e() {
        HashMap hashMap = new HashMap(4);
        hashMap.put("asr_num", Integer.valueOf(this.f7989a));
        hashMap.put("air_num", Integer.valueOf(this.f7990b));
        hashMap.put("fsr_num", Integer.valueOf(this.f7991c));
        hashMap.put("fir_num", Integer.valueOf(this.f7992d));
        return hashMap;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (hVar.a(this) && d() == hVar.d() && c() == hVar.c() && b() == hVar.b() && a() == hVar.a()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((d() + 59) * 59) + c()) * 59) + b()) * 59) + a();
    }

    public String toString() {
        return "AdRequestNumberInfo(adUnitSessionAdRequestNumber=" + d() + ", adUnitInstallAdRequestNumber=" + c() + ", adFormatSessionAdRequestNumber=" + b() + ", adFormatInstallAdRequestNumber=" + a() + ")";
    }

    public int a() {
        return this.f7992d;
    }
}
