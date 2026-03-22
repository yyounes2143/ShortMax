package p5;

import a7.d;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.source.o;
import java.util.List;
/* compiled from: AnalyticsCollector.java */
/* loaded from: classes4.dex */
public interface a extends l1.d, com.google.android.exoplayer2.source.p, d.a, com.google.android.exoplayer2.drm.h {
    void B();

    void E(r5.e eVar);

    void Y(List<o.b> list, @Nullable o.b bVar);

    void b(Exception exc);

    void b0(b bVar);

    void c(String str);

    void d(String str);

    void e(Exception exc);

    void f(long j10, int i10);

    void g(long j10);

    void h(Exception exc);

    void j(Object obj, long j10);

    void k(int i10, long j10, long j11);

    void l(com.google.android.exoplayer2.v0 v0Var, @Nullable r5.g gVar);

    void m(r5.e eVar);

    void n(r5.e eVar);

    void o(r5.e eVar);

    void onAudioDecoderInitialized(String str, long j10, long j11);

    void onDroppedFrames(int i10, long j10);

    void onVideoDecoderInitialized(String str, long j10, long j11);

    void p(com.google.android.exoplayer2.v0 v0Var, @Nullable r5.g gVar);

    void release();

    void t(com.google.android.exoplayer2.l1 l1Var, Looper looper);
}
