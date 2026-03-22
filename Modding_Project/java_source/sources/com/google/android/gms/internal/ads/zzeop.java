package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Strings;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeop implements zzeuc {
    @Nullable
    private final zzeyy zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeop(@Nullable zzeyy zzeyyVar) {
        this.zza = zzeyyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 15;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        zzeyy zzeyyVar = this.zza;
        if (zzeyyVar == null) {
            return zzgdn.zzh(new zzeoo(null));
        }
        String zza = zzeyyVar.zza();
        if (Strings.isEmptyOrWhitespace(zza)) {
            return zzgdn.zzh(new zzeoo(null));
        }
        return zzgdn.zzh(new zzeoo(zza));
    }
}
