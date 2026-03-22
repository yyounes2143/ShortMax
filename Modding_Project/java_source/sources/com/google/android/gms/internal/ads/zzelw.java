package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.core.content.ContextCompat;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzelw implements zzeuc {
    private final Context zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzelw(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        boolean z10;
        if (ContextCompat.checkSelfPermission(this.zza, "com.google.android.gms.permission.AD_ID") == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        return zzgdn.zzh(new zzelx(z10));
    }
}
