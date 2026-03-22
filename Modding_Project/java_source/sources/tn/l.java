package tn;

import androidx.annotation.Nullable;
import java.io.IOException;
import tn.f;
/* compiled from: InitializationChunk.java */
/* loaded from: classes8.dex */
public final class l extends e {

    /* renamed from: j  reason: collision with root package name */
    private final f f67509j;

    /* renamed from: k  reason: collision with root package name */
    private f.b f67510k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private ao.g f67511l;

    /* renamed from: m  reason: collision with root package name */
    private long f67512m;

    /* renamed from: n  reason: collision with root package name */
    private volatile boolean f67513n;

    public l(en.d dVar, en.g gVar, io.bidmachine.media3.common.a aVar, int i10, @Nullable Object obj, f fVar) {
        super(dVar, gVar, 2, aVar, i10, obj, -9223372036854775807L, -9223372036854775807L);
        this.f67509j = fVar;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public void cancelLoad() {
        this.f67513n = true;
    }

    public void e(f.b bVar) {
        this.f67510k = bVar;
    }

    @Override // io.bidmachine.media3.exoplayer.upstream.Loader.e
    public void load() throws IOException {
        if (this.f67512m == 0) {
            this.f67509j.e(this.f67510k, -9223372036854775807L, -9223372036854775807L);
        }
        try {
            en.g e10 = this.f67461b.e(this.f67512m);
            en.n nVar = this.f67468i;
            ao.i iVar = new ao.i(nVar, e10.f51384g, nVar.b(e10));
            while (!this.f67513n && this.f67509j.a(iVar)) {
            }
            this.f67512m = iVar.getPosition() - this.f67461b.f51384g;
            this.f67511l = this.f67509j.b();
        } finally {
            en.f.a(this.f67468i);
        }
    }
}
