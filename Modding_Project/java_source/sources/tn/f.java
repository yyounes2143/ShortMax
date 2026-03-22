package tn;

import androidx.annotation.Nullable;
import ao.o0;
import ao.q;
import hn.b2;
import java.io.IOException;
import java.util.List;
import yo.r;
/* compiled from: ChunkExtractor.java */
/* loaded from: classes8.dex */
public interface f {

    /* compiled from: ChunkExtractor.java */
    /* loaded from: classes8.dex */
    public interface b {
        o0 track(int i10, int i11);
    }

    boolean a(q qVar) throws IOException;

    @Nullable
    ao.g b();

    @Nullable
    io.bidmachine.media3.common.a[] c();

    void e(@Nullable b bVar, long j10, long j11);

    void release();

    /* compiled from: ChunkExtractor.java */
    /* loaded from: classes8.dex */
    public interface a {
        @Nullable
        f e(int i10, io.bidmachine.media3.common.a aVar, boolean z10, List<io.bidmachine.media3.common.a> list, @Nullable o0 o0Var, b2 b2Var);

        default a a(r.a aVar) {
            return this;
        }

        default a b(int i10) {
            return this;
        }

        default a c(boolean z10) {
            return this;
        }

        default io.bidmachine.media3.common.a d(io.bidmachine.media3.common.a aVar) {
            return aVar;
        }
    }
}
