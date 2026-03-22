package zm;

import com.google.common.collect.ImmutableList;
import java.util.List;
import zm.a0;
/* compiled from: BasePlayer.java */
/* loaded from: classes8.dex */
public abstract class e implements w {

    /* renamed from: a  reason: collision with root package name */
    protected final a0.c f71915a = new a0.c();

    private int I() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    private void J(int i10) {
        L(-1, -9223372036854775807L, i10, false);
    }

    private void K(int i10) {
        L(x(), -9223372036854775807L, i10, true);
    }

    private void M(long j10, int i10) {
        L(x(), j10, i10, false);
    }

    private void N(int i10, int i11) {
        L(i10, -9223372036854775807L, i11, false);
    }

    private void O(int i10) {
        int G = G();
        if (G == -1) {
            J(i10);
        } else if (G == x()) {
            K(i10);
        } else {
            N(G, i10);
        }
    }

    private void P(long j10, int i10) {
        long currentPosition = getCurrentPosition() + j10;
        long duration = getDuration();
        if (duration != -9223372036854775807L) {
            currentPosition = Math.min(currentPosition, duration);
        }
        M(Math.max(currentPosition, 0L), i10);
    }

    private void Q(int i10) {
        int H = H();
        if (H == -1) {
            J(i10);
        } else if (H == x()) {
            K(i10);
        } else {
            N(H, i10);
        }
    }

    @Override // zm.w
    public final long D() {
        a0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.q()) {
            return -9223372036854775807L;
        }
        return currentTimeline.n(x(), this.f71915a).d();
    }

    @Override // zm.w
    public final void F(q qVar) {
        R(ImmutableList.B(qVar));
    }

    public final int G() {
        a0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.q()) {
            return -1;
        }
        return currentTimeline.e(x(), I(), getShuffleModeEnabled());
    }

    public final int H() {
        a0 currentTimeline = getCurrentTimeline();
        if (currentTimeline.q()) {
            return -1;
        }
        return currentTimeline.l(x(), I(), getShuffleModeEnabled());
    }

    protected abstract void L(int i10, long j10, int i11, boolean z10);

    public final void R(List<q> list) {
        c(list, true);
    }

    @Override // zm.w
    public final boolean f() {
        if (G() != -1) {
            return true;
        }
        return false;
    }

    @Override // zm.w
    public final boolean g(int i10) {
        return u().b(i10);
    }

    @Override // zm.w
    public final boolean isPlaying() {
        if (getPlaybackState() == 3 && getPlayWhenReady() && r() == 0) {
            return true;
        }
        return false;
    }

    @Override // zm.w
    public final boolean k() {
        a0 currentTimeline = getCurrentTimeline();
        if (!currentTimeline.q() && currentTimeline.n(x(), this.f71915a).f71764h) {
            return true;
        }
        return false;
    }

    @Override // zm.w
    public final void m() {
        P(j(), 12);
    }

    @Override // zm.w
    public final boolean n() {
        a0 currentTimeline = getCurrentTimeline();
        if (!currentTimeline.q() && currentTimeline.n(x(), this.f71915a).f()) {
            return true;
        }
        return false;
    }

    @Override // zm.w
    public final void o() {
        if (!getCurrentTimeline().q() && !isPlayingAd()) {
            boolean w10 = w();
            if (n() && !k()) {
                if (w10) {
                    Q(7);
                    return;
                } else {
                    J(7);
                    return;
                }
            } else if (w10 && getCurrentPosition() <= i()) {
                Q(7);
                return;
            } else {
                M(0L, 7);
                return;
            }
        }
        J(7);
    }

    @Override // zm.w
    public final void pause() {
        setPlayWhenReady(false);
    }

    @Override // zm.w
    public final void play() {
        setPlayWhenReady(true);
    }

    @Override // zm.w
    public final boolean q() {
        a0 currentTimeline = getCurrentTimeline();
        if (!currentTimeline.q() && currentTimeline.n(x(), this.f71915a).f71765i) {
            return true;
        }
        return false;
    }

    @Override // zm.w
    public final void seekTo(long j10) {
        M(j10, 5);
    }

    @Override // zm.w
    public final void seekToDefaultPosition() {
        N(x(), 4);
    }

    @Override // zm.w
    public final void t() {
        if (!getCurrentTimeline().q() && !isPlayingAd()) {
            if (f()) {
                O(9);
                return;
            } else if (n() && q()) {
                N(x(), 9);
                return;
            } else {
                J(9);
                return;
            }
        }
        J(9);
    }

    @Override // zm.w
    public final boolean w() {
        if (H() != -1) {
            return true;
        }
        return false;
    }

    @Override // zm.w
    public final void y() {
        P(-A(), 11);
    }

    @Override // zm.w
    public final void seekTo(int i10, long j10) {
        L(i10, j10, 10, false);
    }
}
