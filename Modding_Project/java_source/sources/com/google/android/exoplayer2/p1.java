package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.m1;
import java.io.IOException;
import p5.t3;
/* compiled from: Renderer.java */
/* loaded from: classes4.dex */
public interface p1 extends m1.b {

    /* compiled from: Renderer.java */
    /* loaded from: classes4.dex */
    public interface a {
        void a();

        void b();
    }

    void disable();

    long e();

    o5.o0 getCapabilities();

    @Nullable
    b7.s getMediaClock();

    String getName();

    int getState();

    @Nullable
    n6.q getStream();

    int getTrackType();

    boolean hasReadStreamToEnd();

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    void m(o5.p0 p0Var, v0[] v0VarArr, n6.q qVar, long j10, boolean z10, boolean z11, long j11, long j12) throws ExoPlaybackException;

    void maybeThrowStreamError() throws IOException;

    void n(v0[] v0VarArr, n6.q qVar, long j10, long j11) throws ExoPlaybackException;

    void o(int i10, t3 t3Var);

    void render(long j10, long j11) throws ExoPlaybackException;

    void reset();

    void resetPosition(long j10) throws ExoPlaybackException;

    void setCurrentStreamFinal();

    void start() throws ExoPlaybackException;

    void stop();

    default void l(float f10, float f11) throws ExoPlaybackException {
    }
}
