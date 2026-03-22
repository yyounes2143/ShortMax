package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzftv extends zzfso {
    final /* synthetic */ zzftw zza;
    private final zzfub zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzftv(zzftw zzftwVar, zzfub zzfubVar) {
        Objects.requireNonNull(zzftwVar);
        this.zza = zzftwVar;
        this.zzb = zzfubVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfsp
    public final void zzb(Bundle bundle) {
        int i10 = bundle.getInt(HiAnalyticsConstant.HaKey.BI_KEY_RESULT, 8150);
        String string = bundle.getString("sessionToken");
        zzftz zzc = zzfua.zzc();
        zzc.zzb(i10);
        if (string != null) {
            zzc.zza(string);
        }
        this.zzb.zza(zzc.zzc());
        if (i10 == 8157) {
            this.zza.zzd();
        }
    }
}
