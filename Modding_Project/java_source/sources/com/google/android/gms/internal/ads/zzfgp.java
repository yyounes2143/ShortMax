package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfgp implements zzgdj {
    final /* synthetic */ zzfgg zza;
    final /* synthetic */ zzfgq zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfgp(zzfgq zzfgqVar, zzfgg zzfggVar) {
        this.zza = zzfggVar;
        Objects.requireNonNull(zzfgqVar);
        this.zzb = zzfgqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        zzfgt zzfgtVar;
        zzfgtVar = this.zzb.zza.zzd;
        zzfgtVar.zzb(this.zza, th2);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zzb(Object obj) {
        zzfgt zzfgtVar;
        zzfgtVar = this.zzb.zza.zzd;
        zzfgtVar.zzd(this.zza);
    }
}
