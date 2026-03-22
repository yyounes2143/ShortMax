package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbyf {
    private final Clock zza;
    private final zzbyd zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbyf(Clock clock, zzbyd zzbydVar) {
        this.zza = clock;
        this.zzb = zzbydVar;
    }

    public static zzbyf zza(Context context) {
        return zzbyp.zzb(context).zza();
    }

    public final void zzb(int i10, long j10) {
        this.zzb.zza(i10, j10);
    }

    public final void zzc(com.google.android.gms.ads.internal.client.zzfx zzfxVar) {
        this.zzb.zza(-1, this.zza.currentTimeMillis());
    }

    public final void zzd() {
        this.zzb.zza(-1, this.zza.currentTimeMillis());
    }
}
