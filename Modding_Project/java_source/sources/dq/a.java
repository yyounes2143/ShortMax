package dq;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.View;
import androidx.annotation.NonNull;
import rq.t;
/* loaded from: classes8.dex */
public class a extends bq.a {
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final Context f50559l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    private final MediaPlayer f50560m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.adform.video.player.media.b f50561n;

    /* renamed from: o  reason: collision with root package name */
    private float f50562o = 1.0f;

    /* renamed from: dq.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    protected class C0708a implements dq.b {
        protected C0708a() {
        }

        @Override // dq.b
        public void a() {
            if (a.this.i()) {
                a.this.K(new t("Surface Destroyed"));
            }
        }
    }

    /* loaded from: classes8.dex */
    protected class b implements MediaPlayer.OnCompletionListener {
        protected b() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            a.this.q();
        }
    }

    /* loaded from: classes8.dex */
    protected class c implements MediaPlayer.OnErrorListener {
        protected c() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            a aVar = a.this;
            aVar.B(new t("MediaPlayer - onError (what - " + i10 + ", extra - " + i11 + ")"));
            return true;
        }
    }

    /* loaded from: classes8.dex */
    protected class d implements MediaPlayer.OnPreparedListener {
        protected d() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            mediaPlayer.seekTo(1);
            a.this.g0();
        }
    }

    /* loaded from: classes8.dex */
    protected class e implements MediaPlayer.OnSeekCompleteListener {
        protected e() {
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            a aVar = a.this;
            aVar.I(aVar.c0());
        }
    }

    public a(@NonNull Context context) {
        this.f50559l = context.getApplicationContext();
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f50560m = mediaPlayer;
        mediaPlayer.setLooping(false);
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).setUsage(1).build());
        mediaPlayer.setOnPreparedListener(new d());
        mediaPlayer.setOnErrorListener(new c());
        mediaPlayer.setOnSeekCompleteListener(new e());
        mediaPlayer.setOnCompletionListener(new b());
        io.bidmachine.rendering.internal.adform.video.player.media.b bVar = new io.bidmachine.rendering.internal.adform.video.player.media.b(context);
        this.f50561n = bVar;
        bVar.setListener(new C0708a());
        bVar.setMediaPlayer(mediaPlayer);
    }

    @Override // bq.a
    protected long E() {
        return this.f50560m.getCurrentPosition();
    }

    @Override // bq.a
    protected void H(@NonNull Uri uri) {
        this.f50560m.reset();
        this.f50560m.setDataSource(this.f50559l, uri);
    }

    @Override // bq.a
    protected long L() {
        return this.f50560m.getDuration();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bq.a
    public void M(float f10) {
        this.f50562o = f10;
        super.M(f10);
        F(f10);
    }

    @Override // bq.a
    public float R() {
        return this.f50562o;
    }

    @Override // bq.a
    protected boolean V() {
        return this.f50560m.isPlaying();
    }

    @Override // bq.a
    protected boolean W() {
        return false;
    }

    @Override // bq.a
    protected void X() {
        this.f50560m.pause();
    }

    @Override // bq.a
    protected void Y() {
        this.f50560m.start();
    }

    @Override // bq.a
    protected void Z() {
        this.f50560m.prepareAsync();
    }

    @Override // bq.a, bq.b
    public void a() {
        super.a();
        this.f50561n.c();
        this.f50560m.reset();
        this.f50560m.release();
    }

    @Override // bq.a
    protected void a0() {
        this.f50560m.stop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bq.a
    public void c() {
        super.c();
        f0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // bq.a
    public void m0() {
        super.m0();
        e0();
    }

    @Override // bq.b
    @NonNull
    public View n() {
        return this.f50561n;
    }

    @Override // bq.a
    protected void x(float f10) {
        this.f50560m.setVolume(f10, f10);
    }

    @Override // bq.a
    protected void y(long j10) {
        this.f50560m.seekTo((int) j10);
    }
}
