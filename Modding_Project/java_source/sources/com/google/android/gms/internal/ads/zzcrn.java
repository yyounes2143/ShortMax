package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcrn implements zzgdj {
    final /* synthetic */ zzgdj zza;
    final /* synthetic */ zzcrp zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcrn(zzcrp zzcrpVar, zzgdj zzgdjVar) {
        this.zza = zzgdjVar;
        Objects.requireNonNull(zzcrpVar);
        this.zzb = zzcrpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        this.zza.zza(th2);
        zzcaf.zzf.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrj
            @Override // java.lang.Runnable
            public final void run() {
                zzcrp.this.zzd = false;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcrp.zzc(this.zzb, ((zzcri) obj).zza, this.zza);
    }
}
