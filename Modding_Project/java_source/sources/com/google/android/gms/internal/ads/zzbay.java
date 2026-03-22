package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbay extends zzayu implements zzbaz {
    public zzbay() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    public static zzbaz zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
        if (queryLocalInterface instanceof zzbaz) {
            return (zzbaz) queryLocalInterface;
        }
        return new zzbax(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbaw zzbauVar;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return false;
                }
                zzayv.zzd(parcel);
                zzc((com.google.android.gms.ads.internal.client.zze) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR));
            } else {
                parcel.readInt();
                zzayv.zzd(parcel);
            }
        } else {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbauVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                if (queryLocalInterface instanceof zzbaw) {
                    zzbauVar = (zzbaw) queryLocalInterface;
                } else {
                    zzbauVar = new zzbau(readStrongBinder);
                }
            }
            zzayv.zzd(parcel);
            zzd(zzbauVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
