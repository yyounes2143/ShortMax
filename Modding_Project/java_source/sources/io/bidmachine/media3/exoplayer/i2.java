package io.bidmachine.media3.exoplayer;

import android.annotation.SuppressLint;
import com.ss.ttm.player.MediaPlayer;
/* compiled from: RendererCapabilities.java */
/* loaded from: classes8.dex */
public interface i2 {

    /* compiled from: RendererCapabilities.java */
    /* loaded from: classes8.dex */
    public interface a {
        void b(h2 h2Var);
    }

    @SuppressLint({"WrongConstant"})
    static int c(int i10) {
        return i10 & 24;
    }

    @SuppressLint({"WrongConstant"})
    static int d(int i10) {
        return i10 & 64;
    }

    @SuppressLint({"WrongConstant"})
    static int f(int i10) {
        return i10 & 7;
    }

    @SuppressLint({"WrongConstant"})
    static int g(int i10) {
        return i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
    }

    static int i(int i10, int i11, int i12, int i13, int i14) {
        return q(i10, i11, i12, i13, i14, 0);
    }

    @SuppressLint({"WrongConstant"})
    static int j(int i10) {
        return i10 & 32;
    }

    static int k(int i10) {
        return m(i10, 0, 0, 0);
    }

    static int m(int i10, int i11, int i12, int i13) {
        return q(i10, i11, i12, 0, 128, i13);
    }

    @SuppressLint({"WrongConstant"})
    static int o(int i10) {
        return i10 & 3584;
    }

    @SuppressLint({"WrongConstant"})
    static int q(int i10, int i11, int i12, int i13, int i14, int i15) {
        return i10 | i11 | i12 | i13 | i14 | i15;
    }

    static boolean x(int i10, boolean z10) {
        int f10 = f(i10);
        if (f10 != 4 && (!z10 || f10 != 3)) {
            return false;
        }
        return true;
    }

    int a(io.bidmachine.media3.common.a aVar) throws ExoPlaybackException;

    String getName();

    int getTrackType();

    int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException;

    default void v() {
    }

    default void u(a aVar) {
    }
}
