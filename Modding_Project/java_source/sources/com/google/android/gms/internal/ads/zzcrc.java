package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcrc implements zzcrd {
    private final Map zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcrc(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzcrd
    @Nullable
    public final zzedm zza(int i10, String str) {
        return (zzedm) this.zza.get(str);
    }
}
