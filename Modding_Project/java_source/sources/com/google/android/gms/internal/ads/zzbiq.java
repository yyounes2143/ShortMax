package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbiq {
    private final com.google.android.gms.ads.formats.zzg zza;
    @Nullable
    private final com.google.android.gms.ads.formats.zzf zzb;
    @Nullable
    @GuardedBy("this")
    private zzbhk zzc;

    public zzbiq(com.google.android.gms.ads.formats.zzg zzgVar, @Nullable com.google.android.gms.ads.formats.zzf zzfVar) {
        this.zza = zzgVar;
        this.zzb = zzfVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized zzbhk zzf(zzbhj zzbhjVar) {
        zzbhk zzbhkVar = this.zzc;
        if (zzbhkVar != null) {
            return zzbhkVar;
        }
        zzbhk zzbhkVar2 = new zzbhk(zzbhjVar);
        this.zzc = zzbhkVar2;
        return zzbhkVar2;
    }

    @Nullable
    public final zzbht zzc() {
        if (this.zzb == null) {
            return null;
        }
        return new zzbin(this, null);
    }

    public final zzbhw zzd() {
        return new zzbio(this, null);
    }
}
