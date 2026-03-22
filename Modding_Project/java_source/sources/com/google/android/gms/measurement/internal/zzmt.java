package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzmt implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzbg zzc;
    final /* synthetic */ zznl zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmt(zznl zznlVar, boolean z10, zzr zzrVar, boolean z11, zzbg zzbgVar, String str) {
        this.zza = zzrVar;
        this.zzb = z11;
        this.zzc = zzbgVar;
        Objects.requireNonNull(zznlVar);
        this.zzd = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbg zzbgVar;
        zznl zznlVar = this.zzd;
        zzgb zzZ = zznlVar.zzZ();
        if (zzZ == null) {
            zznlVar.zzu.zzaV().zzb().zza("Discarding data. Failed to send event to service");
            return;
        }
        zzr zzrVar = this.zza;
        Preconditions.checkNotNull(zzrVar);
        if (this.zzb) {
            zzbgVar = null;
        } else {
            zzbgVar = this.zzc;
        }
        zznlVar.zzm(zzZ, zzbgVar, zzrVar);
        zznlVar.zzV();
    }
}
