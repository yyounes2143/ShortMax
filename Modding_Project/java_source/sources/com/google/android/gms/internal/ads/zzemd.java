package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzemd implements zzeuc {
    private final Clock zza;
    private final zzfcw zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzemd(Clock clock, zzfcw zzfcwVar) {
        this.zza = clock;
        this.zzb = zzfcwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 4;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return zzgdn.zzh(new zzeme(this.zzb, this.zza.currentTimeMillis()));
    }
}
