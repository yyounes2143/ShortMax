package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public final class zzmg implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzpl zzc;
    final /* synthetic */ zznl zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzmg(zznl zznlVar, zzr zzrVar, boolean z10, zzpl zzplVar) {
        this.zza = zzrVar;
        this.zzb = z10;
        this.zzc = zzplVar;
        Objects.requireNonNull(zznlVar);
        this.zzd = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpl zzplVar;
        zznl zznlVar = this.zzd;
        zzgb zzZ = zznlVar.zzZ();
        if (zzZ == null) {
            zznlVar.zzu.zzaV().zzb().zza("Discarding data. Failed to set user property");
            return;
        }
        zzr zzrVar = this.zza;
        Preconditions.checkNotNull(zzrVar);
        if (this.zzb) {
            zzplVar = null;
        } else {
            zzplVar = this.zzc;
        }
        zznlVar.zzm(zzZ, zzplVar, zzrVar);
        zznlVar.zzV();
    }
}
