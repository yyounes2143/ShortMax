package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbow {
    @VisibleForTesting
    static final com.google.android.gms.ads.internal.util.zzbd zza = new zzbou();
    @VisibleForTesting
    static final com.google.android.gms.ads.internal.util.zzbd zzb = new zzbov();
    private final zzboi zzc;

    public zzbow(Context context, VersionInfoParcel versionInfoParcel, String str, zzfhx zzfhxVar) {
        this.zzc = new zzboi(context, versionInfoParcel, str, zza, zzb, zzfhxVar);
    }

    public final zzbom zza(String str, zzbop zzbopVar, zzboo zzbooVar) {
        return new zzbpa(this.zzc, str, zzbopVar, zzbooVar);
    }

    public final zzbpf zzb() {
        return new zzbpf(this.zzc);
    }
}
