package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzaaw implements zzacm {
    final /* synthetic */ zztf zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzaba zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaaw(zzaba zzabaVar, zztf zztfVar, int i10, long j10) {
        this.zza = zztfVar;
        this.zzb = i10;
        this.zzc = j10;
        Objects.requireNonNull(zzabaVar);
        this.zzd = zzabaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zza(long j10) {
        this.zzd.zzam(this.zza, this.zzb, this.zzc, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzacm
    public final void zzb() {
        this.zzd.zzas(this.zza, this.zzb, this.zzc);
    }
}
