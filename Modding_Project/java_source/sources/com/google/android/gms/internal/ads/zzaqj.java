package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaqj {
    @Nullable
    public final Object zza;
    @Nullable
    public final zzapm zzb;
    @Nullable
    public final zzaqm zzc;
    public boolean zzd;

    private zzaqj(zzaqm zzaqmVar) {
        this.zzd = false;
        this.zza = null;
        this.zzb = null;
        this.zzc = zzaqmVar;
    }

    public static zzaqj zza(zzaqm zzaqmVar) {
        return new zzaqj(zzaqmVar);
    }

    public static zzaqj zzb(@Nullable Object obj, @Nullable zzapm zzapmVar) {
        return new zzaqj(obj, zzapmVar);
    }

    public final boolean zzc() {
        if (this.zzc == null) {
            return true;
        }
        return false;
    }

    private zzaqj(@Nullable Object obj, @Nullable zzapm zzapmVar) {
        this.zzd = false;
        this.zza = obj;
        this.zzb = zzapmVar;
        this.zzc = null;
    }
}
