package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzedn implements zzedm {
    @VisibleForTesting
    public final zzedm zza;
    private final zzfve zzb;

    public zzedn(zzedm zzedmVar, zzfve zzfveVar) {
        this.zza = zzedmVar;
        this.zzb = zzfveVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedm
    public final com.google.common.util.concurrent.e zza(zzfcn zzfcnVar, zzfca zzfcaVar) {
        return zzgdn.zzm(this.zza.zza(zzfcnVar, zzfcaVar), this.zzb, zzcaf.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzedm
    public final boolean zzb(zzfcn zzfcnVar, zzfca zzfcaVar) {
        return this.zza.zzb(zzfcnVar, zzfcaVar);
    }
}
