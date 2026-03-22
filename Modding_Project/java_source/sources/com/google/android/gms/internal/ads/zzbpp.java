package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbpp extends zzayu implements zzbpq {
    public zzbpp() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzbpq zzf(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        if (queryLocalInterface instanceof zzbpq) {
            return (zzbpq) queryLocalInterface;
        }
        return new zzbpo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return false;
                    }
                    String readString = parcel.readString();
                    zzayv.zzd(parcel);
                    boolean zzd = zzd(readString);
                    parcel2.writeNoException();
                    parcel2.writeInt(zzd ? 1 : 0);
                } else {
                    String readString2 = parcel.readString();
                    zzayv.zzd(parcel);
                    zzbrp zzc = zzc(readString2);
                    parcel2.writeNoException();
                    zzayv.zzg(parcel2, zzc);
                }
            } else {
                String readString3 = parcel.readString();
                zzayv.zzd(parcel);
                boolean zze = zze(readString3);
                parcel2.writeNoException();
                parcel2.writeInt(zze ? 1 : 0);
            }
        } else {
            String readString4 = parcel.readString();
            zzayv.zzd(parcel);
            zzbpt zzb = zzb(readString4);
            parcel2.writeNoException();
            zzayv.zzg(parcel2, zzb);
        }
        return true;
    }
}
