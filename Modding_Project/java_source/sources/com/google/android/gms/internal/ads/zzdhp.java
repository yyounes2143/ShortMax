package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzdhp {
    private final JSONObject zza;
    private final zzdny zzb;
    @Nullable
    private final com.google.android.gms.ads.internal.zzb zzc;
    @Nullable
    private final zzbya zzd;

    public zzdhp(JSONObject jSONObject, zzdny zzdnyVar, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbya zzbyaVar) {
        this.zza = jSONObject;
        this.zzb = zzdnyVar;
        this.zzc = zzbVar;
        this.zzd = zzbyaVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final com.google.android.gms.ads.internal.zzb zza() {
        return this.zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final zzbya zzb() {
        return this.zzd;
    }

    public final zzdny zzc() {
        return this.zzb;
    }

    public final JSONObject zzd() {
        return this.zza;
    }
}
