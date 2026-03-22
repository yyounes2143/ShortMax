package com.mbridge.msdk.advanced.request;

import androidx.annotation.NonNull;
/* compiled from: NativeAdvancedV3ParamsEntity.java */
/* loaded from: classes4.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private int f25896a;

    /* renamed from: b  reason: collision with root package name */
    private String f25897b;

    /* renamed from: c  reason: collision with root package name */
    private int f25898c;

    /* renamed from: d  reason: collision with root package name */
    private int f25899d;

    /* renamed from: e  reason: collision with root package name */
    private int f25900e;

    public void a(String str) {
        this.f25897b = str;
    }

    public int b() {
        return this.f25899d;
    }

    public int c() {
        return this.f25898c;
    }

    public int d() {
        return this.f25896a;
    }

    public String e() {
        return this.f25897b;
    }

    @NonNull
    public String toString() {
        return "NativeAdvancedV3ParamsEntity{reqType=" + this.f25896a + ", session_id='" + this.f25897b + "', offset=" + this.f25898c + ", expectWidth=" + this.f25899d + ", expectHeight=" + this.f25900e + '}';
    }

    public int a() {
        return this.f25900e;
    }

    public void b(int i10) {
        this.f25899d = i10;
    }

    public void c(int i10) {
        this.f25898c = i10;
    }

    public void d(int i10) {
        this.f25896a = i10;
    }

    public void a(int i10) {
        this.f25900e = i10;
    }
}
