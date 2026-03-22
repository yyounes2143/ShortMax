package io.bidmachine.rendering.internal.adform.video.player.media;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.view.Surface;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import bq.e;
/* loaded from: classes8.dex */
public class b extends FrameLayout {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.view.a f58060a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private dq.b f58061b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private MediaPlayer f58062c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private Surface f58063d;

    /* renamed from: io.bidmachine.rendering.internal.adform.video.player.media.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    private class C0809b implements MediaPlayer.OnVideoSizeChangedListener {
        private C0809b() {
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
            b.this.setVideoAspectRatio(i10 / i11);
        }
    }

    /* loaded from: classes8.dex */
    private class c implements e {
        private c() {
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(@NonNull SurfaceTexture surfaceTexture, int i10, int i11) {
            b.this.f58063d = new Surface(surfaceTexture);
            b bVar = b.this;
            bVar.setMediaPlayerSurface(bVar.f58063d);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(@NonNull SurfaceTexture surfaceTexture) {
            if (b.this.f58061b != null) {
                b.this.f58061b.a();
                return false;
            }
            return false;
        }
    }

    public b(@NonNull Context context) {
        super(context);
        io.bidmachine.rendering.internal.view.a aVar = new io.bidmachine.rendering.internal.view.a(context);
        this.f58060a = aVar;
        aVar.setSurfaceTextureListener(new c());
        addView(aVar, new FrameLayout.LayoutParams(-1, -1, 17));
    }

    private void e() {
        Surface surface = this.f58063d;
        if (surface != null) {
            surface.release();
        }
        this.f58063d = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMediaPlayerSurface(@Nullable Surface surface) {
        try {
            MediaPlayer mediaPlayer = this.f58062c;
            if (mediaPlayer != null) {
                mediaPlayer.setSurface(surface);
            }
        } catch (Throwable unused) {
        }
    }

    public void c() {
        setMediaPlayerSurface(null);
        e();
        this.f58062c = null;
        this.f58060a.setSurfaceTextureListener(null);
    }

    public void setListener(@Nullable dq.b bVar) {
        this.f58061b = bVar;
    }

    public void setMediaPlayer(@Nullable MediaPlayer mediaPlayer) {
        this.f58062c = mediaPlayer;
        if (mediaPlayer != null) {
            setVideoAspectRatio(mediaPlayer.getVideoWidth() / mediaPlayer.getVideoHeight());
            mediaPlayer.setOnVideoSizeChangedListener(new C0809b());
        }
    }

    public void setVideoAspectRatio(float f10) {
        this.f58060a.setVideoAspectRatio(f10);
    }
}
