package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzwi implements zzwz {
    final /* synthetic */ zzwl zza;
    private final int zzb;

    public zzwi(zzwl zzwlVar, int i10) {
        Objects.requireNonNull(zzwlVar);
        this.zza = zzwlVar;
        this.zzb = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final int zza(zzkv zzkvVar, zzhs zzhsVar, int i10) {
        return this.zza.zzj(this.zzb, zzkvVar, zzhsVar, i10);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final int zzb(long j10) {
        return this.zza.zzl(this.zzb, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final void zzd() throws IOException {
        this.zza.zzI(this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzwz
    public final boolean zze() {
        return this.zza.zzQ(this.zzb);
    }
}
