package hn;

import android.os.Looper;
import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.audio.AudioSink;
import io.bidmachine.media3.exoplayer.source.r;
import java.util.List;
import wn.d;
import zm.w;
/* compiled from: AnalyticsCollector.java */
/* loaded from: classes8.dex */
public interface a extends w.d, io.bidmachine.media3.exoplayer.source.s, d.a, io.bidmachine.media3.exoplayer.drm.h {
    void B();

    void E(io.bidmachine.media3.common.a aVar, @Nullable gn.c cVar);

    void L(List<r.b> list, @Nullable r.b bVar);

    void X(zm.w wVar, Looper looper);

    void b(Exception exc);

    void b0(int i10, int i11, boolean z10);

    void c(String str);

    void c0(b bVar);

    void d(String str);

    void e(Exception exc);

    void f(long j10, int i10);

    void g(long j10);

    void h(Exception exc);

    void j(Object obj, long j10);

    void k(int i10, long j10, long j11);

    void l(AudioSink.a aVar);

    void n(AudioSink.a aVar);

    void o(gn.b bVar);

    void onAudioDecoderInitialized(String str, long j10, long j11);

    void onDroppedFrames(int i10, long j10);

    void onVideoDecoderInitialized(String str, long j10, long j11);

    void p(gn.b bVar);

    void r(gn.b bVar);

    void release();

    void s(gn.b bVar);

    void u(io.bidmachine.media3.common.a aVar, @Nullable gn.c cVar);
}
