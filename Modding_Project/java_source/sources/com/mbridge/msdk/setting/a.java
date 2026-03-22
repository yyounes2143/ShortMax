package com.mbridge.msdk.setting;

import org.json.JSONObject;
/* compiled from: BCP.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: e  reason: collision with root package name */
    private String f28906e;

    /* renamed from: f  reason: collision with root package name */
    private String f28907f;

    /* renamed from: g  reason: collision with root package name */
    private int f28908g;

    /* renamed from: a  reason: collision with root package name */
    private int f28902a = 1;

    /* renamed from: b  reason: collision with root package name */
    private int f28903b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f28904c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f28905d = 0;

    /* renamed from: h  reason: collision with root package name */
    private int f28909h = 0;

    public static a a(String str) {
        Exception e10;
        a aVar;
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject(str);
            aVar = new a();
        } catch (Exception e11) {
            e10 = e11;
            aVar = null;
        }
        try {
            aVar.b(jSONObject.optString("http_domain", com.mbridge.msdk.foundation.same.net.utils.d.h().f27165h));
            aVar.c(jSONObject.optString("tcp_domain", com.mbridge.msdk.foundation.same.net.utils.d.h().f27169l));
            aVar.e(jSONObject.optInt("tcp_port", com.mbridge.msdk.foundation.same.net.utils.d.h().f27173p));
            aVar.f(jSONObject.optInt("type", 0));
            aVar.a(jSONObject.optInt("batch_size", 1));
            aVar.c(jSONObject.optInt("duration", 0));
            aVar.b(jSONObject.optInt("disable", 0));
            aVar.d(jSONObject.optInt("e_t_l", 0));
        } catch (Exception e12) {
            e10 = e12;
            e10.printStackTrace();
            return aVar;
        }
        return aVar;
    }

    public int b() {
        return this.f28903b;
    }

    public int c() {
        return this.f28904c;
    }

    public int d() {
        return this.f28905d;
    }

    public String e() {
        return this.f28906e;
    }

    public String f() {
        return this.f28907f;
    }

    public int g() {
        return this.f28908g;
    }

    public int h() {
        return this.f28909h;
    }

    public void b(int i10) {
        this.f28903b = i10;
    }

    public void c(int i10) {
        this.f28904c = i10;
    }

    public void d(int i10) {
        this.f28905d = i10;
    }

    public void e(int i10) {
        this.f28908g = i10;
    }

    public void f(int i10) {
        this.f28909h = i10;
    }

    public void b(String str) {
        this.f28906e = str;
    }

    public void c(String str) {
        this.f28907f = str;
    }

    public int a() {
        return this.f28902a;
    }

    public void a(int i10) {
        if (i10 < 1) {
            i10 = 1;
        }
        this.f28902a = i10;
    }
}
