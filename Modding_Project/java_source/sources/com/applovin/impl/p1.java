package com.applovin.impl;
/* loaded from: classes2.dex */
public class p1 {

    /* renamed from: a  reason: collision with root package name */
    private final long f9192a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f9193b;

    /* renamed from: c  reason: collision with root package name */
    private String f9194c;

    /* renamed from: d  reason: collision with root package name */
    private String f9195d;

    public p1(Object obj, long j10) {
        String str;
        this.f9193b = obj;
        this.f9192a = j10;
        if (obj instanceof com.applovin.impl.sdk.ad.b) {
            com.applovin.impl.sdk.ad.b bVar = (com.applovin.impl.sdk.ad.b) obj;
            if (bVar.getAdZone().d() != null) {
                str = bVar.getAdZone().d().getLabel();
            } else {
                str = null;
            }
            this.f9194c = str;
            this.f9195d = "AppLovin";
        } else if (obj instanceof v2) {
            v2 v2Var = (v2) obj;
            this.f9194c = v2Var.getFormat().getLabel();
            this.f9195d = v2Var.getNetworkName();
        }
    }

    public Object a() {
        return this.f9193b;
    }

    public long b() {
        return this.f9192a;
    }

    public String c() {
        String str = this.f9194c;
        if (str == null) {
            return "Unknown";
        }
        return str;
    }

    public String d() {
        String str = this.f9195d;
        if (str == null) {
            return "Unknown";
        }
        return str;
    }
}
