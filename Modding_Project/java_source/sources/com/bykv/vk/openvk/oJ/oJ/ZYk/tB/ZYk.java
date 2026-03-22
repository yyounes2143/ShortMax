package com.bykv.vk.openvk.oJ.oJ.ZYk.tB;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import androidx.annotation.RequiresApi;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
/* loaded from: classes3.dex */
public class ZYk extends com.bykv.vk.openvk.oJ.oJ.ZYk.tB.oJ {
    private Surface Pfn;
    private final MediaPlayer ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final Object f11003ba;
    private volatile boolean cFZ;
    private com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ ex;
    private final oJ tB;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class oJ implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {
        private final WeakReference<ZYk> oJ;

        public oJ(ZYk zYk) {
            this.oJ = new WeakReference<>(zYk);
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
            try {
                ZYk zYk = this.oJ.get();
                if (zYk != null) {
                    zYk.oJ(i10);
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            try {
                ZYk zYk = this.oJ.get();
                if (zYk != null) {
                    zYk.tB();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
            try {
                ZYk zYk = this.oJ.get();
                if (zYk == null) {
                    return false;
                }
                if (!zYk.oJ(i10, i11)) {
                    return false;
                }
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
            try {
                ZYk zYk = this.oJ.get();
                if (zYk == null) {
                    return false;
                }
                if (!zYk.ZYk(i10, i11)) {
                    return false;
                }
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                ZYk zYk = this.oJ.get();
                if (zYk != null) {
                    zYk.ZYk();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            try {
                ZYk zYk = this.oJ.get();
                if (zYk != null) {
                    zYk.ex();
                }
            } catch (Throwable unused) {
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
            try {
                ZYk zYk = this.oJ.get();
                if (zYk != null) {
                    zYk.oJ(i10, i11, 1, 1);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public ZYk() {
        MediaPlayer mediaPlayer;
        Object obj = new Object();
        this.f11003ba = obj;
        synchronized (obj) {
            mediaPlayer = new MediaPlayer();
            this.ZYk = mediaPlayer;
        }
        oJ(mediaPlayer);
        try {
            mediaPlayer.setAudioStreamType(3);
        } catch (Throwable unused) {
        }
        this.tB = new oJ(this);
        si();
    }

    private void Ry() {
        try {
            Surface surface = this.Pfn;
            if (surface != null) {
                surface.release();
                this.Pfn = null;
            }
        } catch (Throwable unused) {
        }
    }

    private void eZI() {
        com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ oJVar = this.ex;
        if (oJVar != null) {
            try {
                oJVar.close();
            } catch (Throwable unused) {
            }
            this.ex = null;
        }
    }

    private void oJ(MediaPlayer mediaPlayer) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.media.MediaTimeProvider");
            Class<?> cls2 = Class.forName("android.media.SubtitleController");
            Class<?> cls3 = Class.forName("android.media.SubtitleController$Anchor");
            Object newInstance = cls2.getConstructor(Context.class, cls, Class.forName("android.media.SubtitleController$Listener")).newInstance(com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(), null, null);
            Field declaredField = cls2.getDeclaredField("mHandler");
            declaredField.setAccessible(true);
            declaredField.set(newInstance, new Handler());
            declaredField.setAccessible(false);
            mediaPlayer.getClass().getMethod("setSubtitleAnchor", cls2, cls3).invoke(mediaPlayer, newInstance, null);
        } catch (Throwable unused) {
        }
    }

    private void si() {
        this.ZYk.setOnPreparedListener(this.tB);
        this.ZYk.setOnBufferingUpdateListener(this.tB);
        this.ZYk.setOnCompletionListener(this.tB);
        this.ZYk.setOnSeekCompleteListener(this.tB);
        this.ZYk.setOnVideoSizeChangedListener(this.tB);
        this.ZYk.setOnErrorListener(this.tB);
        this.ZYk.setOnInfoListener(this.tB);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void BTZ() throws Throwable {
        synchronized (this.f11003ba) {
            try {
                if (!this.cFZ) {
                    this.ZYk.release();
                    this.cFZ = true;
                    Ry();
                    eZI();
                    oJ();
                    si();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public PlaybackParams Pfn() throws IllegalStateException {
        return this.ZYk.getPlaybackParams();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void PiB() throws Throwable {
        try {
            this.ZYk.reset();
        } catch (Throwable unused) {
        }
        eZI();
        oJ();
        si();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public int WcQ() {
        MediaPlayer mediaPlayer = this.ZYk;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void ZYk(boolean z10) throws Throwable {
        this.ZYk.setScreenOnWhilePlaying(z10);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public int awB() {
        MediaPlayer mediaPlayer = this.ZYk;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void ba() throws Throwable {
        this.ZYk.start();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void cFZ() throws Throwable {
        this.ZYk.stop();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public long dLZ() {
        try {
            return this.ZYk.getDuration();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void ex(boolean z10) throws Throwable {
        MediaPlayer mediaPlayer = this.ZYk;
        if (mediaPlayer == null) {
            return;
        }
        if (z10) {
            mediaPlayer.setVolume(0.0f, 0.0f);
        } else {
            mediaPlayer.setVolume(1.0f, 1.0f);
        }
    }

    protected void finalize() throws Throwable {
        super.finalize();
        Ry();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void jFA() {
        MediaPlayer mediaPlayer = this.ZYk;
        if (mediaPlayer != null) {
            mediaPlayer.prepareAsync();
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public long kkU() {
        try {
            return this.ZYk.getCurrentPosition();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void so() throws Throwable {
        this.ZYk.pause();
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void tB(boolean z10) throws Throwable {
        this.ZYk.setLooping(z10);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void oJ(SurfaceHolder surfaceHolder) throws Throwable {
        synchronized (this.f11003ba) {
            try {
                if (!this.cFZ && surfaceHolder != null && surfaceHolder.getSurface() != null && this.oJ) {
                    this.ZYk.setDisplay(surfaceHolder);
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    @TargetApi(14)
    public void oJ(Surface surface) {
        Ry();
        this.Pfn = surface;
        this.ZYk.setSurface(surface);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    @RequiresApi(api = 23)
    public void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.ZYk zYk) throws Throwable {
        this.ZYk.setPlaybackParams(this.ZYk.getPlaybackParams().setSpeed(zYk.oJ()));
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void oJ(String str) throws Throwable {
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (!TextUtils.isEmpty(scheme) && scheme.equalsIgnoreCase("file")) {
            this.ZYk.setDataSource(parse.getPath());
        } else {
            this.ZYk.setDataSource(str);
        }
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void oJ(FileDescriptor fileDescriptor) throws Throwable {
        this.ZYk.setDataSource(fileDescriptor);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    @RequiresApi(api = 23)
    public synchronized void oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.tB tBVar) {
        this.ex = com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.oJ.oJ(com.bykv.vk.openvk.oJ.oJ.oJ.tB.oJ(), tBVar);
        com.bykv.vk.openvk.oJ.oJ.ZYk.oJ.ZYk.tB.oJ(tBVar);
        this.ZYk.setDataSource(this.ex);
    }

    @Override // com.bykv.vk.openvk.oJ.oJ.ZYk.tB.tB
    public void oJ(long j10, int i10) throws Throwable {
        if (Build.VERSION.SDK_INT < 26) {
            this.ZYk.seekTo((int) j10);
        } else if (i10 == 0) {
            this.ZYk.seekTo((int) j10, 0);
        } else if (i10 == 1) {
            this.ZYk.seekTo((int) j10, 1);
        } else if (i10 == 2) {
            this.ZYk.seekTo((int) j10, 2);
        } else if (i10 == 3) {
            this.ZYk.seekTo((int) j10, 3);
        } else {
            this.ZYk.seekTo((int) j10);
        }
    }
}
