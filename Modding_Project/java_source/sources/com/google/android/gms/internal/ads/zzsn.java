package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Build;
import android.os.HandlerThread;
import android.os.Trace;
import android.view.Surface;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzsn implements zztd {
    private final zzfwh zza;
    private final zzfwh zzb;

    public zzsn(int i10) {
        zzsl zzslVar = new zzsl(i10);
        zzsm zzsmVar = new zzsm(i10);
        this.zza = zzslVar;
        this.zzb = zzsmVar;
    }

    public static /* synthetic */ HandlerThread zza(int i10) {
        String zzt;
        zzt = zzsp.zzt(i10, "ExoPlayer:MediaCodecAsyncAdapter:");
        return new HandlerThread(zzt);
    }

    public static /* synthetic */ HandlerThread zzb(int i10) {
        String zzt;
        zzt = zzsp.zzt(i10, "ExoPlayer:MediaCodecQueueingThread:");
        return new HandlerThread(zzt);
    }

    public final zzsp zzc(zztc zztcVar) throws IOException {
        MediaCodec mediaCodec;
        zzsp zzspVar;
        zzti zztiVar = zztcVar.zza;
        String str = zztiVar.zza;
        zzsp zzspVar2 = null;
        try {
            Trace.beginSection("createCodec:" + str);
            mediaCodec = MediaCodec.createByCodecName(str);
            try {
                zzspVar = new zzsp(mediaCodec, zza(((zzsl) this.zza).zza), new zzst(mediaCodec, zzb(((zzsm) this.zzb).zza)), zztcVar.zzf, null);
            } catch (Exception e10) {
                e = e10;
            }
            try {
                Trace.endSection();
                Surface surface = zztcVar.zzd;
                int i10 = 0;
                if (surface == null && zztiVar.zzh && Build.VERSION.SDK_INT >= 35) {
                    i10 = 8;
                }
                zzsp.zzh(zzspVar, zztcVar.zzb, surface, null, i10);
                return zzspVar;
            } catch (Exception e11) {
                e = e11;
                zzspVar2 = zzspVar;
                if (zzspVar2 == null) {
                    if (mediaCodec != null) {
                        mediaCodec.release();
                    }
                } else {
                    zzspVar2.zzm();
                }
                throw e;
            }
        } catch (Exception e12) {
            e = e12;
            mediaCodec = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zztd
    public final /* bridge */ /* synthetic */ zztf zzd(zztc zztcVar) throws IOException {
        throw null;
    }
}
