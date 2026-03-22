package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzayv;
import com.google.android.gms.internal.ads.zzbpq;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzcx extends zzayu implements zzcy {
    public zzcx() {
        super("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
    }

    public static zzcy asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.ILiteSdkInfo");
        if (queryLocalInterface instanceof zzcy) {
            return (zzcy) queryLocalInterface;
        }
        return new zzcw(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                return false;
            }
            zzbpq adapterCreator = getAdapterCreator();
            parcel2.writeNoException();
            zzayv.zzg(parcel2, adapterCreator);
        } else {
            zzfd liteSdkVersion = getLiteSdkVersion();
            parcel2.writeNoException();
            zzayv.zzf(parcel2, liteSdkVersion);
        }
        return true;
    }
}
