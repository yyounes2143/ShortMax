package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzayx extends zzayu implements zzayy {
    public static zzayy zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.clearcut.IClearcut");
        if (queryLocalInterface instanceof zzayy) {
            return (zzayy) queryLocalInterface;
        }
        return new zzayw(iBinder);
    }
}
