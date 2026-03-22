package tn;

import gn.i0;
import io.bidmachine.media3.exoplayer.k1;
import io.bidmachine.media3.exoplayer.upstream.b;
import java.io.IOException;
import java.util.List;
/* compiled from: ChunkSource.java */
/* loaded from: classes8.dex */
public interface i {
    long a(long j10, i0 i0Var);

    void b(k1 k1Var, long j10, List<? extends m> list, g gVar);

    void e(e eVar);

    boolean f(long j10, e eVar, List<? extends m> list);

    boolean g(e eVar, boolean z10, b.c cVar, io.bidmachine.media3.exoplayer.upstream.b bVar);

    int getPreferredQueueSize(long j10, List<? extends m> list);

    void maybeThrowError() throws IOException;

    void release();
}
