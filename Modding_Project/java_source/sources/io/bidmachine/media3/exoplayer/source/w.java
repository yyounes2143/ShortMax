package io.bidmachine.media3.exoplayer.source;

import android.net.Uri;
import hn.b2;
import java.io.IOException;
import java.util.List;
import java.util.Map;
/* compiled from: ProgressiveMediaExtractor.java */
/* loaded from: classes8.dex */
public interface w {

    /* compiled from: ProgressiveMediaExtractor.java */
    /* loaded from: classes8.dex */
    public interface a {
        w a(b2 b2Var);
    }

    long a();

    void b();

    int c(ao.i0 i0Var) throws IOException;

    void d(zm.h hVar, Uri uri, Map<String, List<String>> map, long j10, long j11, ao.r rVar) throws IOException;

    void release();

    void seek(long j10, long j11);
}
