package com.google.android.gms.internal.ads;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzwf extends zzaei {
    final /* synthetic */ zzwl zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzwf(zzwl zzwlVar, zzaeu zzaeuVar) {
        super(zzaeuVar);
        Objects.requireNonNull(zzwlVar);
        this.zza = zzwlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaei, com.google.android.gms.internal.ads.zzaeu
    public final long zza() {
        long j10;
        j10 = this.zza.zzB;
        return j10;
    }
}
