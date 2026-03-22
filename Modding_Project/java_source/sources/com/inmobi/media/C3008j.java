package com.inmobi.media;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.j  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3008j {

    /* renamed from: m  reason: collision with root package name */
    public static final /* synthetic */ int f24867m = 0;

    /* renamed from: a  reason: collision with root package name */
    public final int f24868a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24869b;

    /* renamed from: c  reason: collision with root package name */
    public final String f24870c;

    /* renamed from: d  reason: collision with root package name */
    public int f24871d;

    /* renamed from: e  reason: collision with root package name */
    public long f24872e;

    /* renamed from: f  reason: collision with root package name */
    public final long f24873f;

    /* renamed from: g  reason: collision with root package name */
    public final long f24874g;

    /* renamed from: h  reason: collision with root package name */
    public final long f24875h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f24876i;

    /* renamed from: j  reason: collision with root package name */
    public String f24877j;

    /* renamed from: k  reason: collision with root package name */
    public long f24878k;

    /* renamed from: l  reason: collision with root package name */
    public byte f24879l;

    public C3008j(int i10, String url, String str, int i11, long j10, long j11, long j12, long j13) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f24868a = i10;
        this.f24869b = url;
        this.f24870c = str;
        this.f24871d = i11;
        this.f24872e = j10;
        this.f24873f = j11;
        this.f24874g = j12;
        this.f24875h = j13;
    }

    public final void a(byte b10) {
        this.f24879l = b10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3008j)) {
            return false;
        }
        return Intrinsics.areEqual(this.f24869b, ((C3008j) obj).f24869b);
    }

    public final int hashCode() {
        return this.f24869b.hashCode();
    }

    public final String toString() {
        return "AdAsset{url='" + this.f24869b + "'}";
    }

    public final boolean a() {
        return B2.a(this.f24870c) && new File(this.f24870c).exists();
    }
}
