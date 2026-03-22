package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzenu implements zzeub {
    @Nullable
    @VisibleForTesting
    final String zza;
    @VisibleForTesting
    final int zzb;

    public zzenu(@Nullable String str, int i10) {
        this.zza = str;
        this.zzb = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        int i10;
        Bundle bundle = ((zzcva) obj).zza;
        String str = this.zza;
        if (!TextUtils.isEmpty(str) && (i10 = this.zzb) != -1) {
            Bundle zza = zzfdk.zza(bundle, "pii");
            bundle.putBundle("pii", zza);
            zza.putString("pvid", str);
            zza.putInt("pvid_s", i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
    }
}
