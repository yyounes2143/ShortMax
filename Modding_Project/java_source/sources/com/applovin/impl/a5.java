package com.applovin.impl;

import com.applovin.mediation.MaxError;
/* loaded from: classes2.dex */
public class a5 {

    /* renamed from: a  reason: collision with root package name */
    private final b5 f7304a;

    /* renamed from: b  reason: collision with root package name */
    private final String f7305b;

    /* renamed from: c  reason: collision with root package name */
    private final String f7306c;

    /* renamed from: d  reason: collision with root package name */
    private final String f7307d;

    /* renamed from: e  reason: collision with root package name */
    private final MaxError f7308e;

    /* renamed from: f  reason: collision with root package name */
    private final long f7309f;

    /* renamed from: g  reason: collision with root package name */
    private final long f7310g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f7311h;

    /* loaded from: classes2.dex */
    public interface a {
        void a(a5 a5Var);
    }

    private a5(b5 b5Var, com.applovin.impl.mediation.h hVar, String str, MaxError maxError, long j10, long j11) {
        this(b5Var, str, maxError, j10, j11, hVar != null ? hVar.i() : null, hVar != null ? hVar.b() : null, false);
    }

    public static a5 a(b5 b5Var, com.applovin.impl.mediation.h hVar, String str, long j10, long j11) {
        if (b5Var != null) {
            if (hVar != null) {
                return new a5(b5Var, hVar, str, null, j10, j11);
            }
            throw new IllegalArgumentException("No adapterWrapper specified");
        }
        throw new IllegalArgumentException("No spec specified");
    }

    public long b() {
        return this.f7310g;
    }

    public MaxError c() {
        return this.f7308e;
    }

    public String d() {
        return this.f7305b;
    }

    public String e() {
        return this.f7307d;
    }

    public b5 f() {
        return this.f7304a;
    }

    public boolean g() {
        return this.f7311h;
    }

    public String toString() {
        int i10;
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("SignalCollectionResult{mSignalProviderSpec=");
        sb2.append(this.f7304a);
        sb2.append(", mSdkVersion='");
        sb2.append(this.f7305b);
        sb2.append('\'');
        sb2.append(", mAdapterVersion='");
        sb2.append(this.f7306c);
        sb2.append('\'');
        sb2.append(", mSignalDataLength='");
        String str2 = this.f7307d;
        if (str2 != null) {
            i10 = str2.length();
        } else {
            i10 = 0;
        }
        sb2.append(i10);
        sb2.append('\'');
        sb2.append(", mErrorMessage=");
        MaxError maxError = this.f7308e;
        if (maxError != null) {
            str = maxError.getMessage();
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append('}');
        return sb2.toString();
    }

    private a5(b5 b5Var, String str, MaxError maxError, long j10, long j11, String str2, String str3, boolean z10) {
        this.f7304a = b5Var;
        this.f7307d = str;
        this.f7308e = maxError;
        this.f7309f = j10;
        this.f7310g = j11;
        this.f7305b = str2;
        this.f7306c = str3;
        this.f7311h = z10;
    }

    public static a5 a(b5 b5Var, MaxError maxError) {
        return a(b5Var, (com.applovin.impl.mediation.h) null, maxError, -1L, -1L);
    }

    public static a5 a(b5 b5Var, com.applovin.impl.mediation.h hVar, MaxError maxError, long j10, long j11) {
        if (b5Var != null) {
            return new a5(b5Var, hVar, null, maxError, j10, j11);
        }
        throw new IllegalArgumentException("No spec specified");
    }

    public static a5 a(a5 a5Var) {
        return new a5(a5Var.f(), a5Var.e(), a5Var.c(), a5Var.f7309f, a5Var.f7310g, a5Var.d(), a5Var.a(), true);
    }

    public String a() {
        return this.f7306c;
    }
}
