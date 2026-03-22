package uo;

import ao.f0;
/* compiled from: ConstantBitrateSeeker.java */
/* loaded from: classes8.dex */
final class a extends ao.h implements g {

    /* renamed from: h  reason: collision with root package name */
    private final long f68514h;

    /* renamed from: i  reason: collision with root package name */
    private final int f68515i;

    /* renamed from: j  reason: collision with root package name */
    private final int f68516j;

    /* renamed from: k  reason: collision with root package name */
    private final boolean f68517k;

    /* renamed from: l  reason: collision with root package name */
    private final long f68518l;

    public a(long j10, long j11, f0.a aVar, boolean z10) {
        this(j10, j11, aVar.f1833f, aVar.f1830c, z10);
    }

    @Override // uo.g
    public long a() {
        return this.f68518l;
    }

    public a e(long j10) {
        return new a(j10, this.f68514h, this.f68515i, this.f68516j, this.f68517k);
    }

    @Override // uo.g
    public int g() {
        return this.f68515i;
    }

    @Override // uo.g
    public long getTimeUs(long j10) {
        return c(j10);
    }

    public a(long j10, long j11, int i10, int i11, boolean z10) {
        super(j10, j11, i10, i11, z10);
        this.f68514h = j11;
        this.f68515i = i10;
        this.f68516j = i11;
        this.f68517k = z10;
        this.f68518l = j10 == -1 ? -1L : j10;
    }
}
