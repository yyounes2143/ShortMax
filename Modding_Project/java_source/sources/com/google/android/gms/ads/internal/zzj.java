package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzfoi;
import com.google.android.gms.internal.ads.zzfpj;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzj implements zzfpj {
    final /* synthetic */ zzk zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(zzk zzkVar) {
        Objects.requireNonNull(zzkVar);
        this.zza = zzkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    public final void zza(int i10, long j10) {
        zzfoi zzfoiVar;
        zzfoiVar = this.zza.zzj;
        zzfoiVar.zzd(i10, System.currentTimeMillis() - j10);
    }

    @Override // com.google.android.gms.internal.ads.zzfpj
    public final void zzb(int i10, long j10, String str) {
        zzfoi zzfoiVar;
        zzfoiVar = this.zza.zzj;
        zzfoiVar.zze(i10, System.currentTimeMillis() - j10, str);
    }
}
