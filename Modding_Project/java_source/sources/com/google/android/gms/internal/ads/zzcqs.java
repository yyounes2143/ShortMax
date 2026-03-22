package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcqs {
    private final zzcyv zza;
    @Nullable
    private final zzdbb zzb;

    public zzcqs(zzcyv zzcyvVar, @Nullable zzdbb zzdbbVar) {
        this.zza = zzcyvVar;
        this.zzb = zzdbbVar;
    }

    public final zzcyv zza() {
        return this.zza;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final zzdbb zzb() {
        return this.zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzddv zzc() {
        zzdbb zzdbbVar = this.zzb;
        if (zzdbbVar != null) {
            return new zzddv(zzdbbVar, zzcaf.zzg);
        }
        return new zzddv(new zzcqr(this), zzcaf.zzg);
    }
}
