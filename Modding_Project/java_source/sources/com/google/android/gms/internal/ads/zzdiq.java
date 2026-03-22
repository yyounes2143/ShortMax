package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdiq {
    @Nullable
    private zzbgm zza;

    public zzdiq(zzdib zzdibVar) {
        this.zza = zzdibVar;
    }

    @Nullable
    public final synchronized zzbgm zza() {
        return this.zza;
    }

    public final synchronized void zzb(@Nullable zzbgm zzbgmVar) {
        this.zza = zzbgmVar;
    }
}
