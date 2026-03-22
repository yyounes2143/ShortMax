package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzejf implements zzedm {
    @Nullable
    private final zzbdz zza;
    private final zzgdy zzb;
    private final zzfha zzc;
    private final zzejo zzd;

    public zzejf(zzfha zzfhaVar, zzgdy zzgdyVar, @Nullable zzbdz zzbdzVar, zzejo zzejoVar) {
        this.zzc = zzfhaVar;
        this.zzb = zzgdyVar;
        this.zza = zzbdzVar;
        this.zzd = zzejoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzedm
    public final com.google.common.util.concurrent.e zza(zzfcn zzfcnVar, zzfca zzfcaVar) {
        zzcak zzcakVar = new zzcak();
        zzejk zzejkVar = new zzejk();
        zzejkVar.zzd(new zzeje(this, zzcakVar, zzfcnVar, zzfcaVar, zzejkVar));
        zzfcf zzfcfVar = zzfcaVar.zzs;
        final zzbdu zzbduVar = new zzbdu(zzejkVar, zzfcfVar.zzb, zzfcfVar.zza);
        zzfgu zzfguVar = zzfgu.CUSTOM_RENDER_SYN;
        zzfha zzfhaVar = this.zzc;
        Objects.requireNonNull(zzfhaVar);
        return zzfgk.zzd(new zzfgf() { // from class: com.google.android.gms.internal.ads.zzejd
            @Override // com.google.android.gms.internal.ads.zzfgf
            public final void zza() {
                zzejf.this.zza.zze(zzbduVar);
            }
        }, this.zzb, zzfguVar, zzfhaVar).zzb(zzfgu.CUSTOM_RENDER_ACK).zzd(zzcakVar).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzedm
    public final boolean zzb(zzfcn zzfcnVar, zzfca zzfcaVar) {
        zzfcf zzfcfVar;
        if (this.zza != null && (zzfcfVar = zzfcaVar.zzs) != null && zzfcfVar.zza != null) {
            return true;
        }
        return false;
    }
}
