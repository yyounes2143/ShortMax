package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzgmj {
    final Map zza = new HashMap();
    final Map zzb = new HashMap();

    private zzgmj() {
    }

    public final zzgmj zza(Enum r22, Object obj) {
        this.zza.put(r22, obj);
        this.zzb.put(obj, r22);
        return this;
    }

    public final zzgml zzb() {
        return new zzgml(Collections.unmodifiableMap(this.zza), Collections.unmodifiableMap(this.zzb), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzgmj(zzgmk zzgmkVar) {
    }
}
