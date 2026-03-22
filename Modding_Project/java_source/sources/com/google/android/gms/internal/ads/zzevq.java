package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzevq implements zzeuc {
    final zzgdy zza;

    public zzevq(zzbbr zzbbrVar, zzgdy zzgdyVar, Context context) {
        this.zza = zzgdyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 45;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return this.zza.zzb(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzevp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzevr(new JSONObject());
            }
        });
    }
}
