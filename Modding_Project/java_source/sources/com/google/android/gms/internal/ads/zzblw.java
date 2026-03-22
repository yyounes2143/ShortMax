package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzblw extends zzayt implements IInterface {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzblw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    public final void zze(zzblq zzblqVar, zzblv zzblvVar) throws RemoteException {
        Parcel zza = zza();
        zzayv.zze(zza, zzblqVar);
        zzayv.zzg(zza, zzblvVar);
        zzdc(2, zza);
    }
}
