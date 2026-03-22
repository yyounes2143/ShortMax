package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.media.AudioManager;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzab {
    private boolean zza = false;
    private float zzb = 1.0f;

    public static float zzb(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            int streamMaxVolume = audioManager.getStreamMaxVolume(3);
            int streamVolume = audioManager.getStreamVolume(3);
            if (streamMaxVolume != 0) {
                return streamVolume / streamMaxVolume;
            }
            return 0.0f;
        }
        return 0.0f;
    }

    private final synchronized boolean zzf() {
        if (this.zzb >= 0.0f) {
            return true;
        }
        return false;
    }

    public final synchronized float zza() {
        if (zzf()) {
            return this.zzb;
        }
        return 1.0f;
    }

    public final synchronized void zzc(boolean z10) {
        this.zza = z10;
    }

    public final synchronized void zzd(float f10) {
        this.zzb = f10;
    }

    public final synchronized boolean zze() {
        return this.zza;
    }
}
