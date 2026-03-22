package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgen extends zzgdv {
    final /* synthetic */ zzgeo zza;
    private final Callable zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgen(zzgeo zzgeoVar, Callable callable) {
        Objects.requireNonNull(zzgeoVar);
        this.zza = zzgeoVar;
        callable.getClass();
        this.zzb = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final Object zza() throws Exception {
        return this.zzb.call();
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final void zzd(Throwable th2) {
        this.zza.zzd(th2);
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final void zze(Object obj) {
        this.zza.zzc(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgdv
    final boolean zzg() {
        return this.zza.isDone();
    }
}
