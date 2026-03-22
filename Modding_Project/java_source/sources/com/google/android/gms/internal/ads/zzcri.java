package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcri implements zzehc {
    public final List zza;

    public zzcri(List list) {
        this.zza = list;
    }

    @Override // com.google.android.gms.internal.ads.zzehc
    public final void zzr() {
        for (com.google.common.util.concurrent.e eVar : this.zza) {
            zzgdn.zzr(eVar, new zzcrh(this), zzgef.zzc());
        }
    }

    public zzcri(zzcra zzcraVar) {
        this.zza = Collections.singletonList(zzgdn.zzh(zzcraVar));
    }
}
