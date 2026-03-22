package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfjx implements zzgdj {
    final /* synthetic */ zzfhj zza;
    final /* synthetic */ zzfhu zzb;
    final /* synthetic */ zzcyi zzc;
    final /* synthetic */ zzfjy zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfjx(zzfjy zzfjyVar, zzfhj zzfhjVar, zzfhu zzfhuVar, zzcyi zzcyiVar) {
        this.zza = zzfhjVar;
        this.zzb = zzfhuVar;
        this.zzc = zzcyiVar;
        Objects.requireNonNull(zzfjyVar);
        this.zzd = zzfjyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(@NonNull Throwable th2) {
        zzfhx zzfhxVar;
        zzfhj zzfhjVar = this.zza;
        if (zzfhjVar == null) {
            return;
        }
        zzfhjVar.zzg(false);
        zzfhu zzfhuVar = this.zzb;
        if (zzfhuVar == null) {
            zzfhxVar = this.zzd.zzf;
            zzfhxVar.zzc(zzfhjVar.zzm());
            return;
        }
        zzfhuVar.zza(zzfhjVar);
        zzfhuVar.zzh();
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ea  */
    @Override // com.google.android.gms.internal.ads.zzgdj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* bridge */ /* synthetic */ void zzb(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfjx.zzb(java.lang.Object):void");
    }
}
