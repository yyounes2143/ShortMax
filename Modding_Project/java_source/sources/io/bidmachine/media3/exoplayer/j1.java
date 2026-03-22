package io.bidmachine.media3.exoplayer;

import io.bidmachine.media3.exoplayer.source.r;
/* compiled from: LoadControl.java */
/* loaded from: classes8.dex */
public interface j1 {
    @Deprecated

    /* renamed from: a  reason: collision with root package name */
    public static final r.b f56388a = new r.b(new Object());

    /* compiled from: LoadControl.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final hn.b2 f56389a;

        /* renamed from: b  reason: collision with root package name */
        public final zm.a0 f56390b;

        /* renamed from: c  reason: collision with root package name */
        public final r.b f56391c;

        /* renamed from: d  reason: collision with root package name */
        public final long f56392d;

        /* renamed from: e  reason: collision with root package name */
        public final long f56393e;

        /* renamed from: f  reason: collision with root package name */
        public final float f56394f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f56395g;

        /* renamed from: h  reason: collision with root package name */
        public final boolean f56396h;

        /* renamed from: i  reason: collision with root package name */
        public final long f56397i;

        /* renamed from: j  reason: collision with root package name */
        public final long f56398j;

        public a(hn.b2 b2Var, zm.a0 a0Var, r.b bVar, long j10, long j11, float f10, boolean z10, boolean z11, long j12, long j13) {
            this.f56389a = b2Var;
            this.f56390b = a0Var;
            this.f56391c = bVar;
            this.f56392d = j10;
            this.f56393e = j11;
            this.f56394f = f10;
            this.f56395g = z10;
            this.f56396h = z11;
            this.f56397i = j12;
            this.f56398j = j13;
        }
    }

    @Deprecated
    default boolean a(long j10, long j11, float f10) {
        throw new IllegalStateException("shouldContinueLoading not implemented");
    }

    @Deprecated
    default boolean b(long j10, float f10, boolean z10, long j11) {
        throw new IllegalStateException("shouldStartPlayback not implemented");
    }

    default boolean c(a aVar) {
        return k(aVar.f56390b, aVar.f56391c, aVar.f56393e, aVar.f56394f, aVar.f56396h, aVar.f56397i);
    }

    default boolean d(a aVar) {
        return a(aVar.f56392d, aVar.f56393e, aVar.f56394f);
    }

    default void e(hn.b2 b2Var) {
        onStopped();
    }

    default boolean f(zm.a0 a0Var, r.b bVar, long j10) {
        cn.r.h("LoadControl", "shouldContinuePreloading needs to be implemented when playlist preloading is enabled");
        return false;
    }

    default boolean g(hn.b2 b2Var) {
        return retainBackBufferFromKeyframe();
    }

    wn.b getAllocator();

    @Deprecated
    default long getBackBufferDurationUs() {
        throw new IllegalStateException("getBackBufferDurationUs not implemented");
    }

    default void h(hn.b2 b2Var) {
        onPrepared();
    }

    default void i(hn.b2 b2Var) {
        onReleased();
    }

    default long j(hn.b2 b2Var) {
        return getBackBufferDurationUs();
    }

    @Deprecated
    default boolean k(zm.a0 a0Var, r.b bVar, long j10, float f10, boolean z10, long j11) {
        return b(j10, f10, z10, j11);
    }

    default void l(a aVar, sn.x xVar, vn.q[] qVarArr) {
        throw new IllegalStateException("onTracksSelected not implemented");
    }

    @Deprecated
    default void onPrepared() {
        throw new IllegalStateException("onPrepared not implemented");
    }

    @Deprecated
    default void onReleased() {
        throw new IllegalStateException("onReleased not implemented");
    }

    @Deprecated
    default void onStopped() {
        throw new IllegalStateException("onStopped not implemented");
    }

    @Deprecated
    default boolean retainBackBufferFromKeyframe() {
        throw new IllegalStateException("retainBackBufferFromKeyframe not implemented");
    }
}
