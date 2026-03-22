package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbue extends zzayu implements zzbuf {
    public static zzbuf zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
        if (queryLocalInterface instanceof zzbuf) {
            return (zzbuf) queryLocalInterface;
        }
        return new zzbud(iBinder);
    }
}
