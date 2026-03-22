package io.bidmachine.media3.exoplayer.video;

import android.view.Surface;
import androidx.annotation.FloatRange;
import cn.d0;
import io.bidmachine.media3.exoplayer.h2;
import java.util.List;
import java.util.concurrent.Executor;
import zm.i0;
/* loaded from: classes8.dex */
public interface VideoSink {

    /* loaded from: classes8.dex */
    public static final class VideoSinkException extends Exception {

        /* renamed from: a  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f57167a;

        public VideoSinkException(Throwable th2, io.bidmachine.media3.common.a aVar) {
            super(th2);
            this.f57167a = aVar;
        }
    }

    /* loaded from: classes8.dex */
    public interface b {
        void a();

        void b(long j10);
    }

    Surface a();

    void b(boolean z10);

    void d();

    void e();

    void f(int i10, io.bidmachine.media3.common.a aVar, List<Object> list);

    void g(boolean z10);

    void h();

    boolean i(io.bidmachine.media3.common.a aVar) throws VideoSinkException;

    boolean isEnded();

    boolean isInitialized();

    void j(yn.f fVar);

    void k(int i10);

    void l(h2.a aVar);

    void m(long j10, long j11);

    void o(List<Object> list);

    boolean p(boolean z10);

    void r(@FloatRange(from = 0.0d, fromInclusive = false) float f10);

    void release();

    void render(long j10, long j11) throws VideoSinkException;

    void s();

    boolean t(long j10, boolean z10, b bVar);

    void u();

    void v();

    void w(a aVar, Executor executor);

    void x(Surface surface, d0 d0Var);

    void y(boolean z10);

    /* loaded from: classes8.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f57168a = new C0808a();

        void a(VideoSink videoSink, i0 i0Var);

        void b(VideoSink videoSink);

        void c(VideoSink videoSink);

        /* renamed from: io.bidmachine.media3.exoplayer.video.VideoSink$a$a  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        class C0808a implements a {
            C0808a() {
            }

            @Override // io.bidmachine.media3.exoplayer.video.VideoSink.a
            public void b(VideoSink videoSink) {
            }

            @Override // io.bidmachine.media3.exoplayer.video.VideoSink.a
            public void c(VideoSink videoSink) {
            }

            @Override // io.bidmachine.media3.exoplayer.video.VideoSink.a
            public void a(VideoSink videoSink, i0 i0Var) {
            }
        }
    }
}
