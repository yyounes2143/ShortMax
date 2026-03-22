package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeli implements zzeln {
    final /* synthetic */ zzelj zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeli(zzelj zzeljVar) {
        Objects.requireNonNull(zzeljVar);
        this.zza = zzeljVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeln
    public final void zza() {
        synchronized (this.zza) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeln
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcra zzcraVar = (zzcra) obj;
        zzelj zzeljVar = this.zza;
        synchronized (zzeljVar) {
            zzeljVar.zzc = zzcraVar.zzm();
            zzcraVar.zzk();
        }
    }
}
