package tn;

import androidx.annotation.Nullable;
/* compiled from: BaseMediaChunk.java */
/* loaded from: classes8.dex */
public abstract class a extends m {

    /* renamed from: k  reason: collision with root package name */
    public final long f67430k;

    /* renamed from: l  reason: collision with root package name */
    public final long f67431l;

    /* renamed from: m  reason: collision with root package name */
    private c f67432m;

    /* renamed from: n  reason: collision with root package name */
    private int[] f67433n;

    public a(en.d dVar, en.g gVar, io.bidmachine.media3.common.a aVar, int i10, @Nullable Object obj, long j10, long j11, long j12, long j13, long j14) {
        super(dVar, gVar, aVar, i10, obj, j10, j11, j14);
        this.f67430k = j12;
        this.f67431l = j13;
    }

    public final int g(int i10) {
        return ((int[]) cn.a.i(this.f67433n))[i10];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final c h() {
        return (c) cn.a.i(this.f67432m);
    }

    public void i(c cVar) {
        this.f67432m = cVar;
        this.f67433n = cVar.a();
    }
}
