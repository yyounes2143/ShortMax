package o5;

import android.annotation.SuppressLint;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.ss.ttm.player.MediaPlayer;
/* compiled from: RendererCapabilities.java */
/* loaded from: classes4.dex */
public interface o0 {
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

    static int h(int i10, int i11, int i12) {
        return i(i10, i11, i12, 0, 128);
    }

    @SuppressLint({"WrongConstant"})
    static int i(int i10, int i11, int i12, int i13, int i14) {
        return i10 | i11 | i12 | i13 | i14;
    }

    @SuppressLint({"WrongConstant"})
    static int j(int i10) {
        return i10 & 32;
    }

    static int k(int i10) {
        return h(i10, 0, 0);
    }

    int a(com.google.android.exoplayer2.v0 v0Var) throws ExoPlaybackException;

    String getName();

    int getTrackType();

    int supportsMixedMimeTypeAdaptation() throws ExoPlaybackException;
}
