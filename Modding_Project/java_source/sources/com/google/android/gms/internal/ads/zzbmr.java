package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbmr extends zzayu implements zzbms {
    public zzbmr() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbmv zzbmtVar;
        if (i10 != 3) {
            if (i10 != 4) {
                if (i10 != 5) {
                    if (i10 != 6) {
                        if (i10 != 7) {
                            return false;
                        }
                        zzbgm zzc = zzc();
                        parcel2.writeNoException();
                        zzayv.zzg(parcel2, zzc);
                        return true;
                    }
                    IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    zzayv.zzd(parcel);
                    zze(asInterface);
                    parcel2.writeNoException();
                    return true;
                }
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbmtVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                    if (queryLocalInterface instanceof zzbmv) {
                        zzbmtVar = (zzbmv) queryLocalInterface;
                    } else {
                        zzbmtVar = new zzbmt(readStrongBinder);
                    }
                }
                zzayv.zzd(parcel);
                zzf(asInterface2, zzbmtVar);
                parcel2.writeNoException();
                return true;
            }
            zzd();
            parcel2.writeNoException();
            return true;
        }
        com.google.android.gms.ads.internal.client.zzed zzb = zzb();
        parcel2.writeNoException();
        zzayv.zzg(parcel2, zzb);
        return true;
    }
}
