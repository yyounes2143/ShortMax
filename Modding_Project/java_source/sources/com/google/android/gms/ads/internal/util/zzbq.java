package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzayv;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbq extends zzayu implements zzbr {
    public zzbq() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return false;
                }
                zzayv.zzd(parcel);
                boolean zzg = zzg(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (com.google.android.gms.ads.internal.offline.buffering.zza) zzayv.zza(parcel, com.google.android.gms.ads.internal.offline.buffering.zza.CREATOR));
                parcel2.writeNoException();
                parcel2.writeInt(zzg ? 1 : 0);
            } else {
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzayv.zzd(parcel);
                zze(asInterface);
                parcel2.writeNoException();
            }
        } else {
            IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            zzayv.zzd(parcel);
            boolean zzf = zzf(asInterface2, readString, readString2);
            parcel2.writeNoException();
            parcel2.writeInt(zzf ? 1 : 0);
        }
        return true;
    }
}
