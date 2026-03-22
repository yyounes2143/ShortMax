package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzegk implements zzgdj {
    final /* synthetic */ zzfca zza;
    final /* synthetic */ zzegl zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzegk(zzegl zzeglVar, zzfca zzfcaVar) {
        this.zza = zzfcaVar;
        Objects.requireNonNull(zzeglVar);
        this.zzb = zzeglVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        zzegm zzegmVar;
        zzegm zzegmVar2;
        zzegm zzegmVar3;
        zzegl zzeglVar = this.zzb;
        synchronized (zzeglVar) {
            try {
                zzegmVar = zzeglVar.zzh;
                zzfca zzfcaVar = this.zza;
                zzegmVar.zzb(th2, zzfcaVar);
                zzegmVar2 = zzeglVar.zzh;
                zzfca zza = zzegmVar2.zza();
                if (zzfcaVar.zzav) {
                    while (zza != null) {
                        zzeglVar.zze(zza);
                        zzegmVar3 = zzeglVar.zzh;
                        zza = zzegmVar3.zza();
                    }
                } else if (zza != null) {
                    zzeglVar.zze(zza);
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzegm zzegmVar;
        zzegm zzegmVar2;
        zzegl zzeglVar = this.zzb;
        zzehc zzehcVar = (zzehc) obj;
        synchronized (zzeglVar) {
            try {
                zzegmVar = zzeglVar.zzh;
                zzegmVar.zzc(zzehcVar, this.zza);
                zzegmVar2 = zzeglVar.zzh;
                zzfca zza = zzegmVar2.zza();
                if (zza != null) {
                    zzeglVar.zze(zza);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
