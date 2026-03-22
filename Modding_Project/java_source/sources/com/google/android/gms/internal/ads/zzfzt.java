package com.google.android.gms.internal.ads;

import java.util.Objects;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
final class zzfzt extends zzfzs {
    final /* synthetic */ zzfzu zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfzt(zzfzu zzfzuVar, int i10) {
        Objects.requireNonNull(zzfzuVar);
        this.zza = zzfzuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfzs
    public final zzfzb zza() {
        return new zzfzx(this.zza.zza(), new zzfzr(2));
    }
}
