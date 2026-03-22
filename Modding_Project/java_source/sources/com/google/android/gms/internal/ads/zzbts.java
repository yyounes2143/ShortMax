package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbts extends zzayu implements zzbtt {
    public static zzbtt zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
        if (queryLocalInterface instanceof zzbtt) {
            return (zzbtt) queryLocalInterface;
        }
        return new zzbtr(iBinder);
    }
}
