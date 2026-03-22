package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzfdh implements zzgdj {
    final /* synthetic */ zzfdi zza;
    final /* synthetic */ int zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfdh(zzfdi zzfdiVar, int i10) {
        this.zzb = i10;
        Objects.requireNonNull(zzfdiVar);
        this.zza = zzfdiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zza(Throwable th2) {
        com.google.android.gms.ads.internal.zzv.zzp().zzw(th2, "BufferingUrlPinger.attributionReportingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        this.zza.zzb((String) obj, this.zzb, null);
    }
}
