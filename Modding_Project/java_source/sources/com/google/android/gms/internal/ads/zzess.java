package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzess implements zzeuc {
    @Nullable
    private final Bundle zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzess(@Nullable Bundle bundle) {
        this.zza = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 30;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return zzgdn.zzh(new zzest(this.zza));
    }
}
