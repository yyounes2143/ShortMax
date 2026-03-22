package com.applovin.impl;

import java.util.Map;
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final String f7857a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7858b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f7859c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f7860d;

    public e(String str, String str2) {
        this(str, str2, null, false);
    }

    public String a() {
        return this.f7858b;
    }

    public Map b() {
        return this.f7859c;
    }

    public String c() {
        return this.f7857a;
    }

    public boolean d() {
        return this.f7860d;
    }

    public String toString() {
        return "AdEventPostback{url='" + this.f7857a + "', backupUrl='" + this.f7858b + "', headers='" + this.f7859c + "', shouldFireInWebView='" + this.f7860d + "'}";
    }

    public e(String str, String str2, Map map, boolean z10) {
        this.f7857a = str;
        this.f7858b = str2;
        this.f7859c = map;
        this.f7860d = z10;
    }
}
