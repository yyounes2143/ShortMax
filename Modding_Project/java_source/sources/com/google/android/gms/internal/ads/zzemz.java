package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzemz implements zzeub {
    private final Bundle zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    public zzemz(Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = this.zza;
        zzcva zzcvaVar = (zzcva) obj;
        if (!bundle.isEmpty()) {
            zzcvaVar.zza.putBundle("installed_adapter_data", bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeub
    public final /* synthetic */ void zza(Object obj) {
    }
}
