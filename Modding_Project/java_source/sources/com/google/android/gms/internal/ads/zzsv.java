package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.CircularIntArray;
import java.util.ArrayDeque;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RequiresApi(23)
/* loaded from: classes4.dex */
public final class zzsv extends MediaCodec.Callback {
    private final HandlerThread zzb;
    private Handler zzc;
    @Nullable
    @GuardedBy("lock")
    private MediaFormat zzh;
    @Nullable
    @GuardedBy("lock")
    private MediaFormat zzi;
    @Nullable
    @GuardedBy("lock")
    private MediaCodec.CodecException zzj;
    @Nullable
    @GuardedBy("lock")
    private MediaCodec.CryptoException zzk;
    @GuardedBy("lock")
    private long zzl;
    @GuardedBy("lock")
    private boolean zzm;
    @Nullable
    @GuardedBy("lock")
    private IllegalStateException zzn;
    @Nullable
    @GuardedBy("lock")
    private zzte zzo;
    private final Object zza = new Object();
    @GuardedBy("lock")
    private final CircularIntArray zzd = new CircularIntArray();
    @GuardedBy("lock")
    private final CircularIntArray zze = new CircularIntArray();
    @GuardedBy("lock")
    private final ArrayDeque zzf = new ArrayDeque();
    @GuardedBy("lock")
    private final ArrayDeque zzg = new ArrayDeque();

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsv(HandlerThread handlerThread) {
        this.zzb = handlerThread;
    }

    public static /* synthetic */ void zzd(zzsv zzsvVar) {
        Object obj = zzsvVar.zza;
        synchronized (obj) {
            try {
                if (zzsvVar.zzm) {
                    return;
                }
                long j10 = zzsvVar.zzl - 1;
                zzsvVar.zzl = j10;
                int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                if (i10 > 0) {
                    return;
                }
                if (i10 < 0) {
                    IllegalStateException illegalStateException = new IllegalStateException();
                    synchronized (obj) {
                        zzsvVar.zzn = illegalStateException;
                    }
                    return;
                }
                zzsvVar.zzj();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @GuardedBy("lock")
    private final void zzi(MediaFormat mediaFormat) {
        this.zze.addLast(-2);
        this.zzg.add(mediaFormat);
    }

    @GuardedBy("lock")
    private final void zzj() {
        ArrayDeque arrayDeque = this.zzg;
        if (!arrayDeque.isEmpty()) {
            this.zzi = (MediaFormat) arrayDeque.getLast();
        }
        this.zzd.clear();
        this.zze.clear();
        this.zzf.clear();
        arrayDeque.clear();
    }

    @GuardedBy("lock")
    private final void zzk() {
        IllegalStateException illegalStateException = this.zzn;
        if (illegalStateException == null) {
            MediaCodec.CodecException codecException = this.zzj;
            if (codecException == null) {
                MediaCodec.CryptoException cryptoException = this.zzk;
                if (cryptoException == null) {
                    return;
                }
                this.zzk = null;
                throw cryptoException;
            }
            this.zzj = null;
            throw codecException;
        }
        this.zzn = null;
        throw illegalStateException;
    }

    @GuardedBy("lock")
    private final boolean zzl() {
        if (this.zzl <= 0 && !this.zzm) {
            return false;
        }
        return true;
    }

    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.zza) {
            this.zzk = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.zza) {
            this.zzj = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i10) {
        zzlz zzlzVar;
        zzlz zzlzVar2;
        synchronized (this.zza) {
            try {
                this.zzd.addLast(i10);
                zzte zzteVar = this.zzo;
                if (zzteVar != null) {
                    zztp zztpVar = ((zztm) zzteVar).zza;
                    zzlzVar = zztpVar.zzo;
                    if (zzlzVar != null) {
                        zzlzVar2 = zztpVar.zzo;
                        zzlzVar2.zza();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i10, MediaCodec.BufferInfo bufferInfo) {
        zzlz zzlzVar;
        zzlz zzlzVar2;
        synchronized (this.zza) {
            try {
                MediaFormat mediaFormat = this.zzi;
                if (mediaFormat != null) {
                    zzi(mediaFormat);
                    this.zzi = null;
                }
                this.zze.addLast(i10);
                this.zzf.add(bufferInfo);
                zzte zzteVar = this.zzo;
                if (zzteVar != null) {
                    zztp zztpVar = ((zztm) zzteVar).zza;
                    zzlzVar = zztpVar.zzo;
                    if (zzlzVar != null) {
                        zzlzVar2 = zztpVar.zzo;
                        zzlzVar2.zza();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.zza) {
            zzi(mediaFormat);
            this.zzi = null;
        }
    }

    public final int zza() {
        synchronized (this.zza) {
            try {
                zzk();
                int i10 = -1;
                if (zzl()) {
                    return -1;
                }
                CircularIntArray circularIntArray = this.zzd;
                if (!circularIntArray.isEmpty()) {
                    i10 = circularIntArray.popFirst();
                }
                return i10;
            } finally {
            }
        }
    }

    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.zza) {
            try {
                zzk();
                if (zzl()) {
                    return -1;
                }
                CircularIntArray circularIntArray = this.zze;
                if (circularIntArray.isEmpty()) {
                    return -1;
                }
                int popFirst = circularIntArray.popFirst();
                if (popFirst >= 0) {
                    zzdd.zzb(this.zzh);
                    MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.zzf.remove();
                    bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                } else if (popFirst == -2) {
                    this.zzh = (MediaFormat) this.zzg.remove();
                    popFirst = -2;
                }
                return popFirst;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final MediaFormat zzc() {
        MediaFormat mediaFormat;
        synchronized (this.zza) {
            try {
                mediaFormat = this.zzh;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return mediaFormat;
    }

    public final void zze() {
        synchronized (this.zza) {
            this.zzl++;
            Handler handler = this.zzc;
            String str = zzex.zza;
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzsu
                @Override // java.lang.Runnable
                public final void run() {
                    zzsv.zzd(zzsv.this);
                }
            });
        }
    }

    public final void zzf(MediaCodec mediaCodec) {
        boolean z10;
        if (this.zzc == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        zzdd.zzf(z10);
        HandlerThread handlerThread = this.zzb;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        mediaCodec.setCallback(this, handler);
        this.zzc = handler;
    }

    public final void zzg(zzte zzteVar) {
        synchronized (this.zza) {
            this.zzo = zzteVar;
        }
    }

    public final void zzh() {
        synchronized (this.zza) {
            this.zzm = true;
            this.zzb.quit();
            zzj();
        }
    }
}
