package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeot {
    public final com.google.common.util.concurrent.e zza;
    private final long zzb;
    private final Clock zzc;

    public zzeot(com.google.common.util.concurrent.e eVar, long j10, Clock clock) {
        this.zza = eVar;
        this.zzc = clock;
        this.zzb = clock.elapsedRealtime() + j10;
    }

    public final boolean zza() {
        if (this.zzb < this.zzc.elapsedRealtime()) {
            return true;
        }
        return false;
    }
}
