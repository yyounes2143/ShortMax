package io.bidmachine.media3.exoplayer.source;

import android.os.Handler;
import androidx.annotation.Nullable;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import hn.b2;
import java.io.IOException;
import wn.e;
import yo.r;
/* compiled from: MediaSource.java */
/* loaded from: classes8.dex */
public interface r {

    /* compiled from: MediaSource.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final Object f56990a;

        /* renamed from: b  reason: collision with root package name */
        public final int f56991b;

        /* renamed from: c  reason: collision with root package name */
        public final int f56992c;

        /* renamed from: d  reason: collision with root package name */
        public final long f56993d;

        /* renamed from: e  reason: collision with root package name */
        public final int f56994e;

        public b(Object obj) {
            this(obj, -1L);
        }

        public b a(Object obj) {
            if (this.f56990a.equals(obj)) {
                return this;
            }
            return new b(obj, this.f56991b, this.f56992c, this.f56993d, this.f56994e);
        }

        public boolean b() {
            if (this.f56991b != -1) {
                return true;
            }
            return false;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            if (this.f56990a.equals(bVar.f56990a) && this.f56991b == bVar.f56991b && this.f56992c == bVar.f56992c && this.f56993d == bVar.f56993d && this.f56994e == bVar.f56994e) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return ((((((((TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + this.f56990a.hashCode()) * 31) + this.f56991b) * 31) + this.f56992c) * 31) + ((int) this.f56993d)) * 31) + this.f56994e;
        }

        public b(Object obj, long j10) {
            this(obj, -1, -1, j10, -1);
        }

        public b(Object obj, long j10, int i10) {
            this(obj, -1, -1, j10, i10);
        }

        public b(Object obj, int i10, int i11, long j10) {
            this(obj, i10, i11, j10, -1);
        }

        private b(Object obj, int i10, int i11, long j10, int i12) {
            this.f56990a = obj;
            this.f56991b = i10;
            this.f56992c = i11;
            this.f56993d = j10;
            this.f56994e = i12;
        }
    }

    /* compiled from: MediaSource.java */
    /* loaded from: classes8.dex */
    public interface c {
        void a(r rVar, zm.a0 a0Var);
    }

    zm.q a();

    @Nullable
    default zm.a0 b() {
        return null;
    }

    default boolean c() {
        return true;
    }

    void e(c cVar);

    q f(b bVar, wn.b bVar2, long j10);

    void g(Handler handler, io.bidmachine.media3.exoplayer.drm.h hVar);

    void h(s sVar);

    void i(io.bidmachine.media3.exoplayer.drm.h hVar);

    void k(c cVar);

    void l(c cVar, @Nullable en.o oVar, b2 b2Var);

    void m(q qVar);

    void maybeThrowSourceInfoRefreshError() throws IOException;

    void n(c cVar);

    void p(Handler handler, s sVar);

    /* compiled from: MediaSource.java */
    /* loaded from: classes8.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f56989a = t.f57000b;

        r d(zm.q qVar);

        a e(ln.k kVar);

        a f(io.bidmachine.media3.exoplayer.upstream.b bVar);

        default a a(r.a aVar) {
            return this;
        }

        default a b(int i10) {
            return this;
        }

        @Deprecated
        default a c(boolean z10) {
            return this;
        }

        default a g(e.a aVar) {
            return this;
        }
    }

    default void d(zm.q qVar) {
    }
}
