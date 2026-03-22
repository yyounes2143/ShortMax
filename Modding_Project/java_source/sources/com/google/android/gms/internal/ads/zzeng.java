package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeng implements zzeub {
    @Nullable
    private final String zza;
    private final boolean zzb;

    public zzeng(@Nullable String str, boolean z10) {
        this.zza = str;
        this.zzb = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        String str = this.zza;
        zzcva zzcvaVar = (zzcva) obj;
        if (str != null) {
            Bundle zza = zzfdk.zza(zzcvaVar.zza, "pii");
            zza.putString("afai", str);
            zza.putBoolean("is_afai_lat", this.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
    }
}
