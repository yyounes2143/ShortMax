package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.Looper;
import android.view.SurfaceView;
import android.view.TextureView;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import b7.l;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.l1;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Player.java */
/* loaded from: classes4.dex */
public interface l1 {

    /* compiled from: Player.java */
    /* loaded from: classes4.dex */
    public static final class b implements g {

        /* renamed from: b  reason: collision with root package name */
        public static final b f17826b = new a().e();

        /* renamed from: c  reason: collision with root package name */
        public static final g.a<b> f17827c = new g.a() { // from class: o5.l0
            @Override // com.google.android.exoplayer2.g.a
            public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                l1.b d10;
                d10 = l1.b.d(bundle);
                return d10;
            }
        };

        /* renamed from: a  reason: collision with root package name */
        private final b7.l f17828a;

        /* compiled from: Player.java */
        /* loaded from: classes4.dex */
        public static final class a {

            /* renamed from: b  reason: collision with root package name */
            private static final int[] f17829b = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 31, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30};

            /* renamed from: a  reason: collision with root package name */
            private final l.b f17830a = new l.b();

            public a a(int i10) {
                this.f17830a.a(i10);
                return this;
            }

            public a b(b bVar) {
                this.f17830a.b(bVar.f17828a);
                return this;
            }

            public a c(int... iArr) {
                this.f17830a.c(iArr);
                return this;
            }

            public a d(int i10, boolean z10) {
                this.f17830a.d(i10, z10);
                return this;
            }

            public b e() {
                return new b(this.f17830a.e());
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static b d(Bundle bundle) {
            ArrayList<Integer> integerArrayList = bundle.getIntegerArrayList(e(0));
            if (integerArrayList == null) {
                return f17826b;
            }
            a aVar = new a();
            for (int i10 = 0; i10 < integerArrayList.size(); i10++) {
                aVar.a(integerArrayList.get(i10).intValue());
            }
            return aVar.e();
        }

        private static String e(int i10) {
            return Integer.toString(i10, 36);
        }

        public boolean c(int i10) {
            return this.f17828a.a(i10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            return this.f17828a.equals(((b) obj).f17828a);
        }

        public int hashCode() {
            return this.f17828a.hashCode();
        }

        @Override // com.google.android.exoplayer2.g
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            ArrayList<Integer> arrayList = new ArrayList<>();
            for (int i10 = 0; i10 < this.f17828a.d(); i10++) {
                arrayList.add(Integer.valueOf(this.f17828a.c(i10)));
            }
            bundle.putIntegerArrayList(e(0), arrayList);
            return bundle;
        }

        private b(b7.l lVar) {
            this.f17828a = lVar;
        }
    }

    /* compiled from: Player.java */
    /* loaded from: classes4.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final b7.l f17831a;

        public c(b7.l lVar) {
            this.f17831a = lVar;
        }

        public boolean a(int i10) {
            return this.f17831a.a(i10);
        }

        public boolean b(int... iArr) {
            return this.f17831a.b(iArr);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            return this.f17831a.equals(((c) obj).f17831a);
        }

        public int hashCode() {
            return this.f17831a.hashCode();
        }
    }

    /* compiled from: Player.java */
    /* loaded from: classes4.dex */
    public static final class e implements g {

        /* renamed from: k  reason: collision with root package name */
        public static final g.a<e> f17832k = new g.a() { // from class: o5.m0
            @Override // com.google.android.exoplayer2.g.a
            public final com.google.android.exoplayer2.g fromBundle(Bundle bundle) {
                l1.e b10;
                b10 = l1.e.b(bundle);
                return b10;
            }
        };
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Object f17833a;
        @Deprecated

        /* renamed from: b  reason: collision with root package name */
        public final int f17834b;

        /* renamed from: c  reason: collision with root package name */
        public final int f17835c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final y0 f17836d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final Object f17837e;

        /* renamed from: f  reason: collision with root package name */
        public final int f17838f;

        /* renamed from: g  reason: collision with root package name */
        public final long f17839g;

        /* renamed from: h  reason: collision with root package name */
        public final long f17840h;

        /* renamed from: i  reason: collision with root package name */
        public final int f17841i;

        /* renamed from: j  reason: collision with root package name */
        public final int f17842j;

        public e(@Nullable Object obj, int i10, @Nullable y0 y0Var, @Nullable Object obj2, int i11, long j10, long j11, int i12, int i13) {
            this.f17833a = obj;
            this.f17834b = i10;
            this.f17835c = i10;
            this.f17836d = y0Var;
            this.f17837e = obj2;
            this.f17838f = i11;
            this.f17839g = j10;
            this.f17840h = j11;
            this.f17841i = i12;
            this.f17842j = i13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static e b(Bundle bundle) {
            y0 fromBundle;
            int i10 = bundle.getInt(c(0), -1);
            Bundle bundle2 = bundle.getBundle(c(1));
            if (bundle2 == null) {
                fromBundle = null;
            } else {
                fromBundle = y0.f19332j.fromBundle(bundle2);
            }
            return new e(null, i10, fromBundle, null, bundle.getInt(c(2), -1), bundle.getLong(c(3), -9223372036854775807L), bundle.getLong(c(4), -9223372036854775807L), bundle.getInt(c(5), -1), bundle.getInt(c(6), -1));
        }

        private static String c(int i10) {
            return Integer.toString(i10, 36);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            if (this.f17835c == eVar.f17835c && this.f17838f == eVar.f17838f && this.f17839g == eVar.f17839g && this.f17840h == eVar.f17840h && this.f17841i == eVar.f17841i && this.f17842j == eVar.f17842j && h7.h.a(this.f17833a, eVar.f17833a) && h7.h.a(this.f17837e, eVar.f17837e) && h7.h.a(this.f17836d, eVar.f17836d)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return h7.h.b(this.f17833a, Integer.valueOf(this.f17835c), this.f17836d, this.f17837e, Integer.valueOf(this.f17838f), Long.valueOf(this.f17839g), Long.valueOf(this.f17840h), Integer.valueOf(this.f17841i), Integer.valueOf(this.f17842j));
        }

        @Override // com.google.android.exoplayer2.g
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(c(0), this.f17835c);
            if (this.f17836d != null) {
                bundle.putBundle(c(1), this.f17836d.toBundle());
            }
            bundle.putInt(c(2), this.f17838f);
            bundle.putLong(c(3), this.f17839g);
            bundle.putLong(c(4), this.f17840h);
            bundle.putInt(c(5), this.f17841i);
            bundle.putInt(c(6), this.f17842j);
            return bundle;
        }
    }

    long A();

    void C(d dVar);

    void D(z6.f0 f0Var);

    void E(y0 y0Var);

    void F(d dVar);

    long a();

    void b(k1 k1Var);

    void c(List<y0> list, boolean z10);

    void clearVideoSurfaceView(@Nullable SurfaceView surfaceView);

    void clearVideoTextureView(@Nullable TextureView textureView);

    @Nullable
    PlaybackException d();

    v1 e();

    boolean f();

    boolean g(int i10);

    long getContentPosition();

    int getCurrentAdGroupIndex();

    int getCurrentAdIndexInAdGroup();

    int getCurrentPeriodIndex();

    long getCurrentPosition();

    u1 getCurrentTimeline();

    long getDuration();

    boolean getPlayWhenReady();

    k1 getPlaybackParameters();

    int getPlaybackState();

    int getRepeatMode();

    boolean getShuffleModeEnabled();

    z6.f0 h();

    long i();

    boolean isPlaying();

    boolean isPlayingAd();

    long j();

    boolean k();

    long l();

    void m();

    boolean n();

    void o();

    p6.f p();

    void pause();

    void play();

    void prepare();

    boolean q();

    int r();

    void release();

    Looper s();

    void seekTo(int i10, long j10);

    void seekTo(long j10);

    void setPlayWhenReady(boolean z10);

    void setRepeatMode(int i10);

    void setShuffleModeEnabled(boolean z10);

    void setVideoSurfaceView(@Nullable SurfaceView surfaceView);

    void setVideoTextureView(@Nullable TextureView textureView);

    void setVolume(@FloatRange(from = 0.0d, to = 1.0d) float f10);

    void t();

    b u();

    c7.z v();

    boolean w();

    int x();

    void y();

    z0 z();

    /* compiled from: Player.java */
    /* loaded from: classes4.dex */
    public interface d {
        default void onRenderedFirstFrame() {
        }

        @Deprecated
        default void onSeekProcessed() {
        }

        default void A(int i10) {
        }

        default void C(Metadata metadata) {
        }

        default void F(boolean z10) {
        }

        default void G(float f10) {
        }

        default void J(z0 z0Var) {
        }

        default void K(@Nullable PlaybackException playbackException) {
        }

        default void L(PlaybackException playbackException) {
        }

        default void M(z6.f0 f0Var) {
        }

        default void O(b bVar) {
        }

        default void P(j jVar) {
        }

        default void U(v1 v1Var) {
        }

        default void a(boolean z10) {
        }

        @Deprecated
        default void onCues(List<p6.b> list) {
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

        default void r(p6.f fVar) {
        }

        default void s(k1 k1Var) {
        }

        default void u(c7.z zVar) {
        }

        default void y(boolean z10) {
        }

        default void z(int i10) {
        }

        default void D(int i10, int i11) {
        }

        default void I(u1 u1Var, int i10) {
        }

        default void X(l1 l1Var, c cVar) {
        }

        default void a0(@Nullable y0 y0Var, int i10) {
        }

        @Deprecated
        default void onPlayerStateChanged(boolean z10, int i10) {
        }

        default void q(int i10, boolean z10) {
        }

        default void w(boolean z10, int i10) {
        }

        default void H(e eVar, e eVar2, int i10) {
        }
    }
}
