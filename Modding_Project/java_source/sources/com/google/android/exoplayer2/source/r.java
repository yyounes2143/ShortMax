package com.google.android.exoplayer2.source;

import android.net.Uri;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import p5.t3;
/* compiled from: ProgressiveMediaExtractor.java */
/* loaded from: classes4.dex */
public interface r {

    /* compiled from: ProgressiveMediaExtractor.java */
    /* loaded from: classes4.dex */
    public interface a {
        r a(t3 t3Var);
    }

    long a();

    void b();

    void c(a7.f fVar, Uri uri, Map<String, List<String>> map, long j10, long j11, t5.m mVar) throws IOException;

    int d(t5.y yVar) throws IOException;

    void release();

    void seek(long j10, long j11);
}
