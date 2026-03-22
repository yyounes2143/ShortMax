package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzetv implements zzeuc {
    private final boolean zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzetv(@Nullable zzezv zzezvVar) {
        boolean z10;
        if (zzezvVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.zza = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 36;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return zzgdn.zzh(new zzett(this.zza, null));
    }
}
