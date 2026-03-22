package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaap {
    final /* synthetic */ zzaar zza;
    private zzz zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaap(zzaar zzaarVar, zzaaq zzaaqVar) {
        Objects.requireNonNull(zzaarVar);
        this.zza = zzaarVar;
    }

    public final void zza(final zzcd zzcdVar) {
        zzx zzxVar = new zzx();
        zzxVar.zzam(zzcdVar.zzb);
        zzxVar.zzQ(zzcdVar.zzc);
        zzxVar.zzah("video/raw");
        this.zzb = zzxVar.zzan();
        zzaar.zzf(this.zza).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaao
            @Override // java.lang.Runnable
            public final void run() {
                zzaar.zzd(zzaap.this.zza).zzd(zzcdVar);
            }
        });
    }

    public final void zzb(long j10, long j11, boolean z10) {
        if (z10) {
            zzaar zzaarVar = this.zza;
            if (zzaar.zza(zzaarVar) != null) {
                zzaar.zzf(zzaarVar).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaam
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzaar.zzd(zzaap.this.zza).zza();
                    }
                });
            }
        }
        zzz zzzVar = this.zzb;
        if (zzzVar == null) {
            zzzVar = new zzx().zzan();
        }
        zzz zzzVar2 = zzzVar;
        zzaar zzaarVar2 = this.zza;
        zzaar.zzc(zzaarVar2).zzcT(j11, j10, zzzVar2, null);
        ((zzacm) zzaar.zze(zzaarVar2).remove()).zza(j10);
    }
}
