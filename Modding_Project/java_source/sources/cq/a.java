package cq;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.annotation.NonNull;
import io.bidmachine.media3.common.PlaybackException;
import io.bidmachine.media3.exoplayer.ExoPlayer;
import io.bidmachine.media3.ui.PlayerView;
import zm.q;
import zm.w;
/* loaded from: classes8.dex */
public class a extends bq.a {
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final ExoPlayer f49729l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    private final PlayerView f49730m;

    /* renamed from: cq.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    protected class C0701a implements w.d {
        protected C0701a() {
        }

        @Override // zm.w.d
        public void A(int i10) {
            if (i10 == 3) {
                a.this.g0();
            } else if (i10 == 4) {
                a.this.q();
            }
        }

        @Override // zm.w.d
        public void G(float f10) {
            a.this.F(f10);
        }

        @Override // zm.w.d
        public void P(@NonNull w.e eVar, @NonNull w.e eVar2, int i10) {
            a.this.I(Long.valueOf(eVar2.f72230g));
        }

        @Override // zm.w.d
        public void U(@NonNull PlaybackException playbackException) {
            a.this.A(playbackException);
        }

        @Override // zm.w.d
        public void y(boolean z10) {
            if (z10) {
                a.this.f0();
            } else {
                a.this.e0();
            }
        }
    }

    public a(@NonNull Context context) {
        ExoPlayer e10 = new ExoPlayer.b(context).e();
        this.f49729l = e10;
        e10.C(new C0701a());
        PlayerView playerView = new PlayerView(context);
        this.f49730m = playerView;
        playerView.setPlayer(e10);
        playerView.setUseController(false);
    }

    @Override // bq.a
    protected long E() {
        return this.f49729l.getCurrentPosition();
    }

    @Override // bq.a
    protected void H(@NonNull Uri uri) {
        this.f49729l.F(new q.c().f(uri).a());
    }

    @Override // bq.a
    protected long L() {
        return this.f49729l.getDuration();
    }

    @Override // bq.a
    public float R() {
        return this.f49729l.getVolume();
    }

    @Override // bq.a
    protected boolean V() {
        return this.f49729l.isPlaying();
    }

    @Override // bq.a
    protected boolean W() {
        return false;
    }

    @Override // bq.a
    protected void X() {
        this.f49729l.pause();
    }

    @Override // bq.a
    protected void Y() {
        this.f49729l.play();
    }

    @Override // bq.a
    protected void Z() {
        this.f49729l.prepare();
    }

    @Override // bq.a, bq.b
    public void a() {
        super.a();
        this.f49729l.release();
        this.f49730m.setPlayer(null);
    }

    @Override // bq.a
    protected void a0() {
        this.f49729l.stop();
    }

    @Override // bq.b
    @NonNull
    public View n() {
        return this.f49730m;
    }

    @Override // bq.a
    protected void x(float f10) {
        this.f49729l.setVolume(f10);
    }

    @Override // bq.a
    protected void y(long j10) {
        this.f49729l.seekTo(j10);
    }
}
