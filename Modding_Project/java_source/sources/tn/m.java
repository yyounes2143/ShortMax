package tn;

import androidx.annotation.Nullable;
/* compiled from: MediaChunk.java */
/* loaded from: classes8.dex */
public abstract class m extends e {

    /* renamed from: j  reason: collision with root package name */
    public final long f67514j;

    public m(en.d dVar, en.g gVar, io.bidmachine.media3.common.a aVar, int i10, @Nullable Object obj, long j10, long j11, long j12) {
        super(dVar, gVar, 1, aVar, i10, obj, j10, j11);
        cn.a.e(aVar);
        this.f67514j = j12;
    }

    public long e() {
        long j10 = this.f67514j;
        if (j10 == -1) {
            return -1L;
        }
        return 1 + j10;
    }

    public abstract boolean f();
}
