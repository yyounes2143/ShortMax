package com.inmobi.media;

import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class Y6 {

    /* renamed from: a  reason: collision with root package name */
    public final String f24396a;

    /* renamed from: b  reason: collision with root package name */
    public final long f24397b;

    /* renamed from: c  reason: collision with root package name */
    public final int f24398c;

    /* renamed from: d  reason: collision with root package name */
    public final long f24399d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f24400e;

    /* renamed from: f  reason: collision with root package name */
    public final int f24401f;

    public Y6(String fileName, long j10, int i10, long j11, boolean z10, int i11) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        this.f24396a = fileName;
        this.f24397b = j10;
        this.f24398c = i10;
        this.f24399d = j11;
        this.f24400e = z10;
        this.f24401f = i11;
    }

    public /* synthetic */ Y6(String str, long j10, int i10, long j11, boolean z10, int i11, int i12) {
        this(str, j10, (i12 & 4) != 0 ? 0 : i10, (i12 & 8) != 0 ? 0L : j11, (i12 & 16) != 0 ? false : z10, (i12 & 32) != 0 ? 0 : i11);
    }
}
