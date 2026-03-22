package com.inmobi.media;

import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.l2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3043l2 {

    /* renamed from: a  reason: collision with root package name */
    public final int f24943a;

    /* renamed from: b  reason: collision with root package name */
    public final String f24944b;

    /* renamed from: c  reason: collision with root package name */
    public final Map f24945c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f24946d;

    /* renamed from: e  reason: collision with root package name */
    public final boolean f24947e;

    /* renamed from: f  reason: collision with root package name */
    public int f24948f;

    /* renamed from: g  reason: collision with root package name */
    public long f24949g;

    /* renamed from: h  reason: collision with root package name */
    public final long f24950h;

    /* renamed from: i  reason: collision with root package name */
    public final AtomicBoolean f24951i;

    public C3043l2(int i10, String url, Map map, boolean z10, boolean z11, int i11, long j10, long j11) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f24943a = i10;
        this.f24944b = url;
        this.f24945c = map;
        this.f24946d = z10;
        this.f24947e = z11;
        this.f24948f = i11;
        this.f24949g = j10;
        this.f24950h = j11;
        this.f24951i = new AtomicBoolean(false);
    }

    public /* synthetic */ C3043l2(String str, Map map, boolean z10, boolean z11, int i10, int i11) {
        this(new Random().nextInt() & Integer.MAX_VALUE, str, (i11 & 4) != 0 ? null : map, z10, z11, i10, System.currentTimeMillis(), System.currentTimeMillis());
    }
}
