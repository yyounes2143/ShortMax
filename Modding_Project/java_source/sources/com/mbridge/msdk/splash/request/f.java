package com.mbridge.msdk.splash.request;

import androidx.annotation.NonNull;
/* compiled from: SplashV3ParamsEntity.java */
/* loaded from: classes6.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private int f29279a;

    /* renamed from: b  reason: collision with root package name */
    private String f29280b;

    /* renamed from: c  reason: collision with root package name */
    private int f29281c;

    /* renamed from: d  reason: collision with root package name */
    private int f29282d;

    /* renamed from: e  reason: collision with root package name */
    private int f29283e;

    public void a(String str) {
        this.f29280b = str;
    }

    public int b() {
        return this.f29282d;
    }

    public int c() {
        return this.f29281c;
    }

    public int d() {
        return this.f29279a;
    }

    public String e() {
        return this.f29280b;
    }

    @NonNull
    public String toString() {
        return "NativeAdvancedV3ParamsEntity{reqType=" + this.f29279a + ", session_id='" + this.f29280b + "', offset=" + this.f29281c + ", expectWidth=" + this.f29282d + ", expectHeight=" + this.f29283e + '}';
    }

    public int a() {
        return this.f29283e;
    }

    public void b(int i10) {
        this.f29282d = i10;
    }

    public void c(int i10) {
        this.f29281c = i10;
    }

    public void d(int i10) {
        this.f29279a = i10;
    }

    public void a(int i10) {
        this.f29283e = i10;
    }
}
