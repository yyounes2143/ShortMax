package com.google.android.gms.internal.ads;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzmh {
    public static final zzmh zza = new zzmh(new zzmg());
    public final zzfyv zzb;
    @Nullable
    @FloatRange(from = 0.0d, to = 1.0d)
    public final Double zzc;
    @Nullable
    @FloatRange(from = 0.0d, to = 1.0d)
    public final Double zzd;
    public final boolean zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;

    private zzmh(zzmg zzmgVar) {
        zzfyv zzfyvVar;
        zzfyvVar = zzmgVar.zza;
        this.zzb = zzfyvVar;
        this.zzc = null;
        this.zzd = null;
        this.zze = true;
        this.zzf = false;
        this.zzg = true;
        this.zzh = true;
    }

    public final boolean equals(@Nullable Object obj) {
        if ((obj instanceof zzmh) && this.zzb.equals(((zzmh) obj).zzb)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        zzfyv zzfyvVar = this.zzb;
        Boolean bool = Boolean.TRUE;
        return Objects.hash(zzfyvVar, null, null, bool, Boolean.FALSE, bool, bool);
    }
}
