package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.os.Build;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzqu {
    @Nullable
    private final Context zza;
    private Boolean zzb;

    public zzqu() {
        this(null);
    }

    public final zzps zza(zzz zzzVar, zze zzeVar) {
        int i10;
        boolean booleanValue;
        boolean z10;
        boolean isOffloadedPlaybackSupported;
        int playbackOffloadSupport;
        zzzVar.getClass();
        zzeVar.getClass();
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 29 && (i10 = zzzVar.zzH) != -1) {
            Context context = this.zza;
            Boolean bool = this.zzb;
            boolean z11 = false;
            if (bool != null) {
                booleanValue = bool.booleanValue();
            } else {
                if (context != null) {
                    String parameters = zzcj.zzc(context).getParameters("offloadVariableRateSupported");
                    if (parameters != null && parameters.equals("offloadVariableRateSupported=1")) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.zzb = Boolean.valueOf(z10);
                } else {
                    this.zzb = Boolean.FALSE;
                }
                booleanValue = this.zzb.booleanValue();
            }
            String str = zzzVar.zzo;
            str.getClass();
            int zza = zzay.zza(str, zzzVar.zzk);
            if (zza != 0 && i11 >= zzex.zzh(zza)) {
                int zzi = zzex.zzi(zzzVar.zzG);
                if (zzi != 0) {
                    try {
                        AudioFormat zzx = zzex.zzx(i10, zzi, zza);
                        if (i11 >= 31) {
                            playbackOffloadSupport = AudioManager.getPlaybackOffloadSupport(zzx, zzeVar.zza().zza);
                            if (playbackOffloadSupport == 0) {
                                return zzps.zza;
                            }
                            zzpq zzpqVar = new zzpq();
                            if (i11 > 32 && playbackOffloadSupport == 2) {
                                z11 = true;
                            }
                            zzpqVar.zza(true);
                            zzpqVar.zzb(z11);
                            zzpqVar.zzc(booleanValue);
                            return zzpqVar.zzd();
                        }
                        isOffloadedPlaybackSupported = AudioManager.isOffloadedPlaybackSupported(zzx, zzeVar.zza().zza);
                        if (!isOffloadedPlaybackSupported) {
                            return zzps.zza;
                        }
                        zzpq zzpqVar2 = new zzpq();
                        zzpqVar2.zza(true);
                        zzpqVar2.zzc(booleanValue);
                        return zzpqVar2.zzd();
                    } catch (IllegalArgumentException unused) {
                        return zzps.zza;
                    }
                }
                return zzps.zza;
            }
            return zzps.zza;
        }
        return zzps.zza;
    }

    public zzqu(@Nullable Context context) {
        this.zza = context == null ? null : context.getApplicationContext();
    }
}
