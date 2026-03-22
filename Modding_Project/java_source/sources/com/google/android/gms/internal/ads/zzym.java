package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
@RequiresApi(32)
/* loaded from: classes4.dex */
public final class zzym {
    @Nullable
    private final Spatializer zza;
    private final boolean zzb;
    @Nullable
    private final Handler zzc;
    @Nullable
    private final Spatializer$OnSpatializerStateChangedListener zzd;

    public zzym(@Nullable Context context, zzyu zzyuVar) {
        AudioManager zzc;
        Spatializer spatializer;
        int immersiveAudioLevel;
        if (context == null) {
            zzc = null;
        } else {
            zzc = zzcj.zzc(context);
        }
        if (zzc != null && !zzex.zzN(context)) {
            spatializer = zzc.getSpatializer();
            this.zza = spatializer;
            immersiveAudioLevel = spatializer.getImmersiveAudioLevel();
            this.zzb = immersiveAudioLevel != 0;
            zzyl zzylVar = new zzyl(this, zzyuVar);
            this.zzd = zzylVar;
            Looper myLooper = Looper.myLooper();
            zzdd.zzb(myLooper);
            final Handler handler = new Handler(myLooper);
            this.zzc = handler;
            Objects.requireNonNull(handler);
            spatializer.addOnSpatializerStateChangedListener(new Executor() { // from class: com.google.android.gms.internal.ads.zzyk
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, zzylVar);
            return;
        }
        this.zza = null;
        this.zzb = false;
        this.zzc = null;
        this.zzd = null;
    }

    public final void zza() {
        Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
        Handler handler;
        Spatializer spatializer = this.zza;
        if (spatializer != null && (spatializer$OnSpatializerStateChangedListener = this.zzd) != null && (handler = this.zzc) != null) {
            spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
            handler.removeCallbacksAndMessages(null);
        }
    }

    public final boolean zzb(zze zzeVar, zzz zzzVar) {
        int i10;
        boolean canBeSpatialized;
        String str = zzzVar.zzo;
        if (Objects.equals(str, MimeTypes.AUDIO_E_AC3_JOC)) {
            i10 = zzzVar.zzG;
            if (i10 == 16) {
                i10 = 12;
            }
        } else if (Objects.equals(str, "audio/iamf")) {
            i10 = zzzVar.zzG;
            if (i10 == -1) {
                i10 = 6;
            }
        } else if (Objects.equals(str, "audio/ac4")) {
            i10 = zzzVar.zzG;
            if (i10 == 18 || i10 == 21) {
                i10 = 24;
            }
        } else {
            i10 = zzzVar.zzG;
        }
        int zzi = zzex.zzi(i10);
        if (zzi == 0) {
            return false;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(zzi);
        int i11 = zzzVar.zzH;
        if (i11 != -1) {
            channelMask.setSampleRate(i11);
        }
        Spatializer spatializer = this.zza;
        spatializer.getClass();
        canBeSpatialized = j0.a(spatializer).canBeSpatialized(zzeVar.zza().zza, channelMask.build());
        return canBeSpatialized;
    }

    public final boolean zzc() {
        boolean isAvailable;
        Spatializer spatializer = this.zza;
        spatializer.getClass();
        isAvailable = j0.a(spatializer).isAvailable();
        return isAvailable;
    }

    public final boolean zzd() {
        boolean isEnabled;
        Spatializer spatializer = this.zza;
        spatializer.getClass();
        isEnabled = j0.a(spatializer).isEnabled();
        return isEnabled;
    }

    public final boolean zze() {
        return this.zzb;
    }
}
