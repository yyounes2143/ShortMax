package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import android.view.Surface;
import android.view.TextureView;
import androidx.annotation.Nullable;
import com.ss.texturerender.TextureRenderKeys;
import com.ss.ttvideoengine.log.VideoEventOnePlay;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcbf extends zzcbh implements TextureView.SurfaceTextureListener, MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener {
    private static final Map zzc;
    private final zzccb zzd;
    private final zzccc zze;
    private final boolean zzf;
    @Nullable
    private final zzdsj zzg;
    private int zzh;
    private int zzi;
    private MediaPlayer zzj;
    private Uri zzk;
    private int zzl;
    private int zzm;
    private int zzn;
    private zzcbz zzo;
    private final boolean zzp;
    private int zzq;
    private zzcbg zzr;
    private boolean zzs;
    private Integer zzt;

    static {
        HashMap hashMap = new HashMap();
        zzc = hashMap;
        hashMap.put(-1004, "MEDIA_ERROR_IO");
        hashMap.put(Integer.valueOf((int) VideoEventOnePlay.EXIT_CODE_BEFORE_DEMUXER_CREATING), "MEDIA_ERROR_MALFORMED");
        hashMap.put(Integer.valueOf((int) VideoEventOnePlay.EXIT_CODE_BEFORE_AVFORMAT_OPENING), "MEDIA_ERROR_UNSUPPORTED");
        hashMap.put(-110, "MEDIA_ERROR_TIMED_OUT");
        hashMap.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        hashMap.put(100, "MEDIA_ERROR_SERVER_DIED");
        hashMap.put(1, "MEDIA_ERROR_UNKNOWN");
        hashMap.put(1, "MEDIA_INFO_UNKNOWN");
        hashMap.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        hashMap.put(701, "MEDIA_INFO_BUFFERING_START");
        hashMap.put(702, "MEDIA_INFO_BUFFERING_END");
        hashMap.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        hashMap.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        hashMap.put(802, "MEDIA_INFO_METADATA_UPDATE");
        hashMap.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
        hashMap.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
    }

    public zzcbf(Context context, zzccb zzccbVar, boolean z10, boolean z11, zzcca zzccaVar, zzccc zzcccVar, @Nullable zzdsj zzdsjVar) {
        super(context);
        this.zzh = 0;
        this.zzi = 0;
        this.zzs = false;
        this.zzt = null;
        this.zzd = zzccbVar;
        this.zze = zzcccVar;
        this.zzp = z10;
        this.zzf = z11;
        zzcccVar.zza(this);
        this.zzg = zzdsjVar;
    }

    private final void zzD() {
        zzdsj zzdsjVar;
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.zzk != null && surfaceTexture != null) {
            zzE(false);
            try {
                com.google.android.gms.ads.internal.zzv.zzl();
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.zzj = mediaPlayer;
                mediaPlayer.setOnBufferingUpdateListener(this);
                this.zzj.setOnCompletionListener(this);
                this.zzj.setOnErrorListener(this);
                this.zzj.setOnInfoListener(this);
                this.zzj.setOnPreparedListener(this);
                this.zzj.setOnVideoSizeChangedListener(this);
                this.zzn = 0;
                if (this.zzp) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zznF)).booleanValue() && (zzdsjVar = this.zzg) != null) {
                        zzdsi zza = zzdsjVar.zza();
                        zza.zzb(TextureRenderKeys.KEY_IS_ACTION, "svp_ampv");
                        zza.zzj();
                    }
                    zzcbz zzcbzVar = new zzcbz(getContext());
                    this.zzo = zzcbzVar;
                    zzcbzVar.zzd(surfaceTexture, getWidth(), getHeight());
                    zzcbz zzcbzVar2 = this.zzo;
                    zzcbzVar2.start();
                    SurfaceTexture zzb = zzcbzVar2.zzb();
                    if (zzb != null) {
                        surfaceTexture = zzb;
                    } else {
                        this.zzo.zze();
                        this.zzo = null;
                    }
                }
                this.zzj.setDataSource(getContext(), this.zzk);
                com.google.android.gms.ads.internal.zzv.zzm();
                this.zzj.setSurface(new Surface(surfaceTexture));
                this.zzj.setAudioStreamType(3);
                this.zzj.setScreenOnWhilePlaying(true);
                this.zzj.prepareAsync();
                zzF(1);
            } catch (IOException e10) {
                e = e10;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.zzk)), e);
                onError(this.zzj, 1, 0);
            } catch (IllegalArgumentException e11) {
                e = e11;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.zzk)), e);
                onError(this.zzj, 1, 0);
            } catch (IllegalStateException e12) {
                e = e12;
                com.google.android.gms.ads.internal.util.client.zzo.zzk("Failed to initialize MediaPlayer at ".concat(String.valueOf(this.zzk)), e);
                onError(this.zzj, 1, 0);
            }
        }
    }

    private final void zzE(boolean z10) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView release");
        zzcbz zzcbzVar = this.zzo;
        if (zzcbzVar != null) {
            zzcbzVar.zze();
            this.zzo = null;
        }
        MediaPlayer mediaPlayer = this.zzj;
        if (mediaPlayer != null) {
            mediaPlayer.reset();
            this.zzj.release();
            this.zzj = null;
            zzF(0);
            if (z10) {
                this.zzi = 0;
            }
        }
    }

    private final void zzF(int i10) {
        if (i10 == 3) {
            this.zze.zzc();
            this.zzb.zzb();
        } else if (this.zzh == 3) {
            this.zze.zze();
            this.zzb.zzc();
        }
        this.zzh = i10;
    }

    private final void zzG(float f10) {
        MediaPlayer mediaPlayer = this.zzj;
        if (mediaPlayer != null) {
            try {
                mediaPlayer.setVolume(f10, f10);
                return;
            } catch (IllegalStateException unused) {
                return;
            }
        }
        int i10 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
    }

    private final boolean zzH() {
        int i10;
        if (this.zzj != null && (i10 = this.zzh) != -1 && i10 != 0 && i10 != 1) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ void zzk(zzcbf zzcbfVar, int i10) {
        zzcbg zzcbgVar = zzcbfVar.zzr;
        if (zzcbgVar != null) {
            zzcbgVar.onWindowVisibilityChanged(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzm(zzcbf zzcbfVar, MediaPlayer mediaPlayer) {
        MediaFormat format;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbde.zzcc)).booleanValue() && zzcbfVar.zzd != null && mediaPlayer != null) {
            try {
                MediaPlayer.TrackInfo[] trackInfo = mediaPlayer.getTrackInfo();
                if (trackInfo != null) {
                    HashMap hashMap = new HashMap();
                    for (MediaPlayer.TrackInfo trackInfo2 : trackInfo) {
                        if (trackInfo2 != null) {
                            int trackType = trackInfo2.getTrackType();
                            if (trackType != 1) {
                                if (trackType == 2 && (format = trackInfo2.getFormat()) != null) {
                                    if (format.containsKey("mime")) {
                                        hashMap.put("audioMime", format.getString("mime"));
                                    }
                                    if (Build.VERSION.SDK_INT >= 30 && format.containsKey("codecs-string")) {
                                        hashMap.put("audioCodec", format.getString("codecs-string"));
                                    }
                                }
                            } else {
                                MediaFormat format2 = trackInfo2.getFormat();
                                if (format2 != null) {
                                    if (format2.containsKey(com.ss.ttm.player.MediaFormat.KEY_FRAME_RATE)) {
                                        try {
                                            hashMap.put("frameRate", String.valueOf(format2.getFloat(com.ss.ttm.player.MediaFormat.KEY_FRAME_RATE)));
                                        } catch (ClassCastException unused) {
                                            hashMap.put("frameRate", String.valueOf(format2.getInteger(com.ss.ttm.player.MediaFormat.KEY_FRAME_RATE)));
                                        }
                                    }
                                    if (format2.containsKey("bitrate")) {
                                        Integer valueOf = Integer.valueOf(format2.getInteger("bitrate"));
                                        zzcbfVar.zzt = valueOf;
                                        hashMap.put("bitRate", String.valueOf(valueOf));
                                    }
                                    if (format2.containsKey("width") && format2.containsKey("height")) {
                                        hashMap.put("resolution", format2.getInteger("width") + TextureRenderKeys.KEY_IS_X + format2.getInteger("height"));
                                    }
                                    if (format2.containsKey("mime")) {
                                        hashMap.put("videoMime", format2.getString("mime"));
                                    }
                                    if (Build.VERSION.SDK_INT >= 30 && format2.containsKey("codecs-string")) {
                                        hashMap.put("videoCodec", format2.getString("codecs-string"));
                                    }
                                }
                            }
                        }
                    }
                    if (!hashMap.isEmpty()) {
                        zzcbfVar.zzd.zzd("onMetadataEvent", hashMap);
                    }
                }
            } catch (RuntimeException e10) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e10, "AdMediaPlayerView.reportMetadata");
            }
        }
    }

    @Override // android.view.TextureView, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        setSurfaceTextureListener(this);
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i10) {
        this.zzn = i10;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView completion");
        zzF(5);
        this.zzi = 5;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcay(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i10, int i11) {
        Map map = zzc;
        String str = (String) map.get(Integer.valueOf(i10));
        String str2 = (String) map.get(Integer.valueOf(i11));
        int i12 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("AdMediaPlayerView MediaPlayer error: " + str + ":" + str2);
        zzF(-1);
        this.zzi = -1;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcaz(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i10, int i11) {
        Map map = zzc;
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView MediaPlayer info: " + ((String) map.get(Integer.valueOf(i10))) + ":" + ((String) map.get(Integer.valueOf(i11))));
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
        if (r1 > r6) goto L17;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void onMeasure(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.zzl
            int r0 = android.view.View.getDefaultSize(r0, r6)
            int r1 = r5.zzm
            int r1 = android.view.View.getDefaultSize(r1, r7)
            int r2 = r5.zzl
            if (r2 <= 0) goto L7a
            int r2 = r5.zzm
            if (r2 <= 0) goto L7a
            com.google.android.gms.internal.ads.zzcbz r2 = r5.zzo
            if (r2 != 0) goto L7a
            int r0 = android.view.View.MeasureSpec.getMode(r6)
            int r6 = android.view.View.MeasureSpec.getSize(r6)
            int r1 = android.view.View.MeasureSpec.getMode(r7)
            int r7 = android.view.View.MeasureSpec.getSize(r7)
            r2 = 1073741824(0x40000000, float:2.0)
            if (r0 != r2) goto L43
            if (r1 != r2) goto L42
            int r0 = r5.zzl
            int r1 = r0 * r7
            int r2 = r5.zzm
            int r3 = r6 * r2
            if (r1 >= r3) goto L3c
            int r0 = r1 / r2
        L3a:
            r1 = r7
            goto L7a
        L3c:
            if (r1 <= r3) goto L60
            int r1 = r3 / r0
        L40:
            r0 = r6
            goto L7a
        L42:
            r0 = r2
        L43:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != r2) goto L54
            int r0 = r5.zzm
            int r0 = r0 * r6
            int r2 = r5.zzl
            int r0 = r0 / r2
            if (r1 != r3) goto L52
            if (r0 <= r7) goto L52
            goto L60
        L52:
            r1 = r0
            goto L40
        L54:
            if (r1 != r2) goto L64
            int r1 = r5.zzl
            int r1 = r1 * r7
            int r2 = r5.zzm
            int r1 = r1 / r2
            if (r0 != r3) goto L62
            if (r1 <= r6) goto L62
        L60:
            r0 = r6
            goto L3a
        L62:
            r0 = r1
            goto L3a
        L64:
            int r2 = r5.zzl
            int r4 = r5.zzm
            if (r1 != r3) goto L70
            if (r4 <= r7) goto L70
            int r1 = r7 * r2
            int r1 = r1 / r4
            goto L72
        L70:
            r1 = r2
            r7 = r4
        L72:
            if (r0 != r3) goto L62
            if (r1 <= r6) goto L62
            int r4 = r4 * r6
            int r1 = r4 / r2
            goto L40
        L7a:
            r5.setMeasuredDimension(r0, r1)
            com.google.android.gms.internal.ads.zzcbz r6 = r5.zzo
            if (r6 == 0) goto L84
            r6.zzc(r0, r1)
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcbf.onMeasure(int, int):void");
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView prepared");
        zzF(2);
        this.zze.zzb();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcax(this, mediaPlayer));
        this.zzl = mediaPlayer.getVideoWidth();
        this.zzm = mediaPlayer.getVideoHeight();
        int i10 = this.zzq;
        if (i10 != 0) {
            zzq(i10);
        }
        if (this.zzf && zzH() && this.zzj.getCurrentPosition() > 0 && this.zzi != 3) {
            com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView nudging MediaPlayer");
            zzG(0.0f);
            this.zzj.start();
            int currentPosition = this.zzj.getCurrentPosition();
            long currentTimeMillis = com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis();
            while (zzH() && this.zzj.getCurrentPosition() == currentPosition && com.google.android.gms.ads.internal.zzv.zzD().currentTimeMillis() - currentTimeMillis <= 250) {
            }
            this.zzj.pause();
            zzn();
        }
        int i11 = this.zzl;
        int i12 = this.zzm;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("AdMediaPlayerView stream dimensions: " + i11 + " x " + i12);
        if (this.zzi == 3) {
            zzp();
        }
        zzn();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i10, int i11) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView surface created");
        zzD();
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcba(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView surface destroyed");
        MediaPlayer mediaPlayer = this.zzj;
        if (mediaPlayer != null && this.zzq == 0) {
            this.zzq = mediaPlayer.getCurrentPosition();
        }
        zzcbz zzcbzVar = this.zzo;
        if (zzcbzVar != null) {
            zzcbzVar.zze();
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcbc(this));
        zzE(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i10, int i11) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView surface changed");
        int i12 = this.zzi;
        boolean z10 = false;
        if (this.zzl == i10 && this.zzm == i11) {
            z10 = true;
        }
        if (this.zzj != null && i12 == 3 && z10) {
            int i13 = this.zzq;
            if (i13 != 0) {
                zzq(i13);
            }
            zzp();
        }
        zzcbz zzcbzVar = this.zzo;
        if (zzcbzVar != null) {
            zzcbzVar.zzc(i10, i11);
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcbb(this, i10, i11));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.zze.zzf(this);
        this.zza.zza(surfaceTexture, this.zzr);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i10, int i11) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView size changed: " + i10 + " x " + i11);
        this.zzl = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.zzm = videoHeight;
        if (this.zzl != 0 && videoHeight != 0) {
            requestLayout();
        }
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i10) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView window visibility changed to " + i10);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcaw
            @Override // java.lang.Runnable
            public final void run() {
                zzcbf.zzk(zzcbf.this, i10);
            }
        });
        super.onWindowVisibilityChanged(i10);
    }

    @Override // android.view.View
    public final String toString() {
        String name = zzcbf.class.getName();
        String hexString = Integer.toHexString(hashCode());
        return name + "@" + hexString;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final int zza() {
        if (zzH()) {
            return this.zzj.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final int zzb() {
        PersistableBundle metrics;
        if (Build.VERSION.SDK_INT >= 26 && zzH()) {
            metrics = this.zzj.getMetrics();
            return metrics.getInt("android.media.mediaplayer.dropped");
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final int zzc() {
        if (zzH()) {
            return this.zzj.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final int zzd() {
        MediaPlayer mediaPlayer = this.zzj;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final int zze() {
        MediaPlayer mediaPlayer = this.zzj;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final long zzf() {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final long zzg() {
        if (this.zzt != null) {
            return (zzh() * this.zzn) / 100;
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final long zzh() {
        if (this.zzt != null) {
            return zzc() * this.zzt.intValue();
        }
        return -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final String zzj() {
        String str;
        if (true != this.zzp) {
            str = "";
        } else {
            str = " spherical";
        }
        return "MediaPlayer".concat(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcbh, com.google.android.gms.internal.ads.zzcce
    public final void zzn() {
        zzG(this.zzb.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final void zzo() {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView pause");
        if (zzH() && this.zzj.isPlaying()) {
            this.zzj.pause();
            zzF(4);
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcbe(this));
        }
        this.zzi = 4;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final void zzp() {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView play");
        if (zzH()) {
            this.zzj.start();
            zzF(3);
            this.zza.zzb();
            com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcbd(this));
        }
        this.zzi = 3;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final void zzq(int i10) {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView seek " + i10);
        if (zzH()) {
            this.zzj.seekTo(i10);
            this.zzq = 0;
            return;
        }
        this.zzq = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final void zzr(zzcbg zzcbgVar) {
        this.zzr = zzcbgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final void zzs(@Nullable String str) {
        Uri parse = Uri.parse(str);
        zzbbo zza = zzbbo.zza(parse);
        if (zza != null && zza.zza == null) {
            return;
        }
        if (zza != null) {
            parse = Uri.parse(zza.zza);
        }
        this.zzk = parse;
        this.zzq = 0;
        zzD();
        requestLayout();
        invalidate();
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final void zzt() {
        com.google.android.gms.ads.internal.util.zze.zza("AdMediaPlayerView stop");
        MediaPlayer mediaPlayer = this.zzj;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            this.zzj.release();
            this.zzj = null;
            zzF(0);
            this.zzi = 0;
        }
        this.zze.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzcbh
    public final void zzu(float f10, float f11) {
        zzcbz zzcbzVar = this.zzo;
        if (zzcbzVar != null) {
            zzcbzVar.zzf(f10, f11);
        }
    }
}
