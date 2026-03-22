package com.google.android.exoplayer2;

import com.google.android.exoplayer2.u1;
import com.google.common.collect.ImmutableList;
import java.util.List;
/* compiled from: BasePlayer.java */
/* loaded from: classes4.dex */
public abstract class e implements l1 {

    /* renamed from: a  reason: collision with root package name */
    protected final u1.d f17602a = new u1.d();

    private int J() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    private void O(long j10) {
        long currentPosition = getCurrentPosition() + j10;
        long duration = getDuration();
        if (duration != -9223372036854775807L) {
            currentPosition = Math.min(currentPosition, duration);
        }
        seekTo(Math.max(currentPosition, 0L));
    }

    @Override // com.google.android.exoplayer2.l1
    public final void E(y0 y0Var) {
        Q(ImmutableList.B(y0Var));
    }

    public final long G() {
        u1 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -9223372036854775807L;
        }
        return currentTimeline.r(x(), this.f17602a).g();
    }

    public final int H() {
        u1 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.i(x(), J(), getShuffleModeEnabled());
    }

    public final int I() {
        u1 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.p(x(), J(), getShuffleModeEnabled());
    }

    protected abstract void K();

    public final void L() {
        M(x());
    }

    public final void M(int i10) {
        seekTo(i10, -9223372036854775807L);
    }

    public final void N() {
        int H = H();
        if (H == -1) {
            return;
        }
        if (H == x()) {
            K();
        } else {
            M(H);
        }
    }

    public final void P() {
        int I = I();
        if (I == -1) {
            return;
        }
        if (I == x()) {
            K();
        } else {
            M(I);
        }
    }

    public final void Q(List<y0> list) {
        c(list, true);
    }

    @Override // com.google.android.exoplayer2.l1
    public final boolean f() {
        if (H() != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.l1
    public final boolean g(int i10) {
        return u().c(i10);
    }

    @Override // com.google.android.exoplayer2.l1
    public final boolean isPlaying() {
        if (getPlaybackState() == 3 && getPlayWhenReady() && r() == 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.l1
    public final boolean k() {
        u1 currentTimeline = getCurrentTimeline();
        if (!currentTimeline.u() && currentTimeline.r(x(), this.f17602a).f18557h) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.l1
    public final void m() {
        O(j());
    }

    @Override // com.google.android.exoplayer2.l1
    public final boolean n() {
        u1 currentTimeline = getCurrentTimeline();
        if (!currentTimeline.u() && currentTimeline.r(x(), this.f17602a).i()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.l1
    public final void o() {
        if (!getCurrentTimeline().u() && !isPlayingAd()) {
            boolean w10 = w();
            if (n() && !k()) {
                if (w10) {
                    P();
                }
            } else if (w10 && getCurrentPosition() <= i()) {
                P();
            } else {
                seekTo(0L);
            }
        }
    }

    @Override // com.google.android.exoplayer2.l1
    public final void pause() {
        setPlayWhenReady(false);
    }

    @Override // com.google.android.exoplayer2.l1
    public final void play() {
        setPlayWhenReady(true);
    }

    @Override // com.google.android.exoplayer2.l1
    public final boolean q() {
        u1 currentTimeline = getCurrentTimeline();
        if (!currentTimeline.u() && currentTimeline.r(x(), this.f17602a).f18558i) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.l1
    public final void seekTo(long j10) {
        seekTo(x(), j10);
    }

    @Override // com.google.android.exoplayer2.l1
    public final void t() {
        if (!getCurrentTimeline().u() && !isPlayingAd()) {
            if (f()) {
                N();
            } else if (n() && q()) {
                L();
            }
        }
    }

    @Override // com.google.android.exoplayer2.l1
    public final boolean w() {
        if (I() != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.l1
    public final void y() {
        O(-A());
    }
}
