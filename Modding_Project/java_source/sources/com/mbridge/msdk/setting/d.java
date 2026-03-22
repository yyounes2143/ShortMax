package com.mbridge.msdk.setting;

import org.json.JSONObject;
/* compiled from: EventLibMonitorSetting.java */
/* loaded from: classes6.dex */
public class d {

    /* renamed from: f  reason: collision with root package name */
    private String f29006f;

    /* renamed from: g  reason: collision with root package name */
    private String f29007g;

    /* renamed from: h  reason: collision with root package name */
    private int f29008h;

    /* renamed from: a  reason: collision with root package name */
    private int f29001a = 1;

    /* renamed from: b  reason: collision with root package name */
    private int f29002b = 1;

    /* renamed from: c  reason: collision with root package name */
    private int f29003c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f29004d = 30;

    /* renamed from: e  reason: collision with root package name */
    private int f29005e = 0;

    /* renamed from: i  reason: collision with root package name */
    private int f29009i = 0;

    public static d a(String str) {
        Exception e10;
        d dVar;
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
            dVar = new d();
        } catch (Exception e11) {
            e10 = e11;
            dVar = null;
        }
        try {
            dVar.b(jSONObject.optString("h_d", com.mbridge.msdk.foundation.same.net.utils.d.h().f27162f));
            dVar.c(jSONObject.optString("t_d", com.mbridge.msdk.foundation.same.net.utils.d.h().f27168k));
            dVar.c(jSONObject.optInt("t_p", com.mbridge.msdk.foundation.same.net.utils.d.h().f27172o));
            dVar.d(jSONObject.optInt("type", 1));
            dVar.b(jSONObject.optInt("d_t", 30));
            dVar.a(jSONObject.optInt("d_a", 0));
        } catch (Exception e12) {
            e10 = e12;
            e10.printStackTrace();
            return dVar;
        }
        return dVar;
    }

    public int b() {
        return this.f29004d;
    }

    public String c() {
        return this.f29006f;
    }

    public String d() {
        return this.f29007g;
    }

    public int e() {
        return this.f29008h;
    }

    public void b(int i10) {
        this.f29004d = i10;
    }

    public void c(String str) {
        this.f29007g = str;
    }

    public void d(int i10) {
        this.f29009i = i10;
    }

    public void b(String str) {
        this.f29006f = str;
    }

    public void c(int i10) {
        this.f29008h = i10;
    }

    public int a() {
        return this.f29003c;
    }

    public void a(int i10) {
        this.f29003c = i10;
    }
}
