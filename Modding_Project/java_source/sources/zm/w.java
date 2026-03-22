package zm;

import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import cn.m0;
import io.bidmachine.media3.common.PlaybackException;
import java.util.List;
import java.util.Objects;
import zm.n;
/* compiled from: Player.java */
/* loaded from: classes8.dex */
public interface w {

    /* compiled from: Player.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: b  reason: collision with root package name */
        public static final b f72211b = new a().e();

        /* renamed from: c  reason: collision with root package name */
        private static final String f72212c = m0.C0(0);

        /* renamed from: a  reason: collision with root package name */
        private final n f72213a;

        /* compiled from: Player.java */
        /* loaded from: classes8.dex */
        public static final class a {

            /* renamed from: b  reason: collision with root package name */
            private static final int[] f72214b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 33, 26, 34, 35, 27, 28, 29, 30, 32};

            /* renamed from: a  reason: collision with root package name */
            private final n.b f72215a = new n.b();

            public a a(int i10) {
                this.f72215a.a(i10);
                return this;
            }

            public a b(b bVar) {
                this.f72215a.b(bVar.f72213a);
                return this;
            }

            public a c(int... iArr) {
                this.f72215a.c(iArr);
                return this;
            }

            public a d(int i10, boolean z10) {
                this.f72215a.d(i10, z10);
                return this;
            }

            public b e() {
                return new b(this.f72215a.e());
            }
        }

        public boolean b(int i10) {
            return this.f72213a.a(i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            return this.f72213a.equals(((b) obj).f72213a);
        }

        public int hashCode() {
            return this.f72213a.hashCode();
        }

        private b(n nVar) {
            this.f72213a = nVar;
        }
    }

    /* compiled from: Player.java */
    /* loaded from: classes8.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final n f72216a;

        public c(n nVar) {
            this.f72216a = nVar;
        }

        public boolean a(int i10) {
            return this.f72216a.a(i10);
        }

        public boolean b(int... iArr) {
            return this.f72216a.b(iArr);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            return this.f72216a.equals(((c) obj).f72216a);
        }

        public int hashCode() {
            return this.f72216a.hashCode();
        }
    }

    /* compiled from: Player.java */
    /* loaded from: classes8.dex */
    public static final class e {
        @VisibleForTesting

        /* renamed from: k  reason: collision with root package name */
        static final String f72217k = m0.C0(0);

        /* renamed from: l  reason: collision with root package name */
        private static final String f72218l = m0.C0(1);
        @VisibleForTesting

        /* renamed from: m  reason: collision with root package name */
        static final String f72219m = m0.C0(2);
        @VisibleForTesting

        /* renamed from: n  reason: collision with root package name */
        static final String f72220n = m0.C0(3);
        @VisibleForTesting

        /* renamed from: o  reason: collision with root package name */
        static final String f72221o = m0.C0(4);

        /* renamed from: p  reason: collision with root package name */
        private static final String f72222p = m0.C0(5);

        /* renamed from: q  reason: collision with root package name */
        private static final String f72223q = m0.C0(6);
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Object f72224a;
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public final int f72225b;

        /* renamed from: c  reason: collision with root package name */
        public final int f72226c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final q f72227d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final Object f72228e;

        /* renamed from: f  reason: collision with root package name */
        public final int f72229f;

        /* renamed from: g  reason: collision with root package name */
        public final long f72230g;

        /* renamed from: h  reason: collision with root package name */
        public final long f72231h;

        /* renamed from: i  reason: collision with root package name */
        public final int f72232i;

        /* renamed from: j  reason: collision with root package name */
        public final int f72233j;

        public e(@Nullable Object obj, int i10, @Nullable q qVar, @Nullable Object obj2, int i11, long j10, long j11, int i12, int i13) {
            this.f72224a = obj;
            this.f72225b = i10;
            this.f72226c = i10;
            this.f72227d = qVar;
            this.f72228e = obj2;
            this.f72229f = i11;
            this.f72230g = j10;
            this.f72231h = j11;
            this.f72232i = i12;
            this.f72233j = i13;
        }

        public boolean a(e eVar) {
            if (this.f72226c == eVar.f72226c && this.f72229f == eVar.f72229f && this.f72230g == eVar.f72230g && this.f72231h == eVar.f72231h && this.f72232i == eVar.f72232i && this.f72233j == eVar.f72233j && Objects.equals(this.f72227d, eVar.f72227d)) {
                return true;
            }
            return false;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            if (a(eVar) && Objects.equals(this.f72224a, eVar.f72224a) && Objects.equals(this.f72228e, eVar.f72228e)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return Objects.hash(this.f72224a, Integer.valueOf(this.f72226c), this.f72227d, this.f72228e, Integer.valueOf(this.f72229f), Long.valueOf(this.f72230g), Long.valueOf(this.f72231h), Integer.valueOf(this.f72232i), Integer.valueOf(this.f72233j));
        }
    }

    long A();

    void B(d dVar);

    void C(d dVar);

    long D();

    void E(d0 d0Var);

    void F(q qVar);

    long a();

    void b(v vVar);

    void c(List<q> list, boolean z10);

    void clearVideoSurfaceView(@Nullable SurfaceView surfaceView);

    void clearVideoTextureView(@Nullable TextureView textureView);

    @Nullable
    PlaybackException d();

    e0 e();

    boolean f();

    boolean g(int i10);

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    a0 getCurrentTimeline();

    long getDuration();

    boolean getPlayWhenReady();

    v getPlaybackParameters();

    int getPlaybackState();

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    @FloatRange(from = 0.0d, to = 1.0d)
    float getVolume();

    d0 h();

    long i();

    boolean isPlaying();

    boolean isPlayingAd();

    long j();

    boolean k();

    long l();

    void m();

    boolean n();

    void o();

    bn.b p();

    void pause();

    void play();

    void prepare();

    boolean q();

    int r();

    Looper s();

    void seekTo(int i10, long j10);

    void seekTo(long j10);

    void seekToDefaultPosition();

    void setPlayWhenReady(boolean z10);

    void setRepeatMode(int i10);

    void setShuffleModeEnabled(boolean z10);

    void setVideoSurfaceView(@Nullable SurfaceView surfaceView);

    void setVideoTextureView(@Nullable TextureView textureView);

    void setVolume(@FloatRange(from = 0.0d, to = 1.0d) float f10);

    void stop();

    void t();

    b u();

    i0 v();

    boolean w();

    int x();

    void y();

    s z();

    /* compiled from: Player.java */
    /* loaded from: classes8.dex */
    public interface d {
        default void onRenderedFirstFrame() {
        }

        default void A(int i10) {
        }

        default void C(bn.b bVar) {
        }

        default void F(boolean z10) {
        }

        default void G(float f10) {
        }

        default void I(int i10) {
        }

        default void J(k kVar) {
        }

        default void M(@Nullable PlaybackException playbackException) {
        }

        default void T(e0 e0Var) {
        }

        default void U(PlaybackException playbackException) {
        }

        default void a(boolean z10) {
        }

        default void a0(d0 d0Var) {
        }

        default void e0(s sVar) {
        }

        default void f0(b bVar) {
        }

        default void m(i0 i0Var) {
        }

        @Deprecated
        default void onCues(List<bn.a> list) {
        }

        @Deprecated
        default void onLoadingChanged(boolean z10) {
        }

        @Deprecated
        default void onPositionDiscontinuity(int i10) {
        }

        default void onRepeatModeChanged(int i10) {
        }

        default void onShuffleModeEnabledChanged(boolean z10) {
        }

        default void t(v vVar) {
        }

        default void v(t tVar) {
        }

        default void y(boolean z10) {
        }

        default void z(int i10) {
        }

        default void D(int i10, int i11) {
        }

        default void H(a0 a0Var, int i10) {
        }

        default void Q(@Nullable q qVar, int i10) {
        }

        default void R(w wVar, c cVar) {
        }

        @Deprecated
        default void onPlayerStateChanged(boolean z10, int i10) {
        }

        default void q(int i10, boolean z10) {
        }

        default void w(boolean z10, int i10) {
        }

        default void P(e eVar, e eVar2, int i10) {
        }
    }
}
