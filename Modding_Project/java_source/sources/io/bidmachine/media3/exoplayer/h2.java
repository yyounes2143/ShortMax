package io.bidmachine.media3.exoplayer;

import androidx.annotation.Nullable;
import io.bidmachine.media3.exoplayer.f2;
import io.bidmachine.media3.exoplayer.source.r;
import java.io.IOException;
/* compiled from: Renderer.java */
/* loaded from: classes8.dex */
public interface h2 extends f2.b {

    /* compiled from: Renderer.java */
    /* loaded from: classes8.dex */
    public interface a {
        void a();

        void b();
    }

    void A(int i10, hn.b2 b2Var, cn.h hVar);

    void disable();

    long e();

    i2 getCapabilities();

    @Nullable
    gn.e0 getMediaClock();

    String getName();

    int getState();

    @Nullable
    sn.s getStream();

    int getTrackType();

    boolean hasReadStreamToEnd();

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    void maybeThrowStreamError() throws IOException;

    void r(zm.a0 a0Var);

    void render(long j10, long j11) throws ExoPlaybackException;

    void reset();

    void resetPosition(long j10) throws ExoPlaybackException;

    void setCurrentStreamFinal();

    void start() throws ExoPlaybackException;

    void stop();

    void t(io.bidmachine.media3.common.a[] aVarArr, sn.s sVar, long j10, long j11, r.b bVar) throws ExoPlaybackException;

    void w(gn.g0 g0Var, io.bidmachine.media3.common.a[] aVarArr, sn.s sVar, long j10, boolean z10, boolean z11, long j11, long j12, r.b bVar) throws ExoPlaybackException;

    default long z(long j10, long j11) {
        return 10000L;
    }

    default void h() {
    }

    default void release() {
    }

    default void l(float f10, float f11) throws ExoPlaybackException {
    }
}
