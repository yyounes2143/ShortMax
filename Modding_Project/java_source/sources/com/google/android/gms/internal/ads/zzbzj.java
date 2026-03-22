package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzbzj {
    public final com.google.common.util.concurrent.e zza(Context context, int i10) {
        zzcak zzcakVar = new zzcak();
        com.google.android.gms.ads.internal.client.zzbb.zzb();
        if (com.google.android.gms.ads.internal.util.client.zzf.zzy(context)) {
            zzcaf.zza.execute(new zzbzi(this, context, zzcakVar));
        }
        return zzcakVar;
    }
}
