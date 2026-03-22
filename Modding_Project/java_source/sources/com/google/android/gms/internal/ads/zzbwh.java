package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbwh extends zzayu implements zzbwi {
    public static zzbwi zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
        if (queryLocalInterface instanceof zzbwi) {
            return (zzbwi) queryLocalInterface;
        }
        return new zzbwg(iBinder);
    }
}
