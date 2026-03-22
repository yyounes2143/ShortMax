package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzblg extends zzayu implements zzblh {
    public zzblg() {
        super("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
    }

    public static zzblh zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
        if (queryLocalInterface instanceof zzblh) {
            return (zzblh) queryLocalInterface;
        }
        return new zzblf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                return false;
            }
            zze();
        } else {
            String readString = parcel.readString();
            zzayv.zzd(parcel);
            zzf(readString);
        }
        parcel2.writeNoException();
        return true;
    }
}
