package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbyw extends zzayu implements zzbyx {
    public zzbyw() {
        super("com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return false;
                }
                zzayv.zzd(parcel);
                zzc(parcel.readString(), parcel.readString(), (Bundle) zzayv.zza(parcel, Bundle.CREATOR));
            } else {
                String readString = parcel.readString();
                zzayv.zzd(parcel);
                zzb(readString);
            }
        } else {
            parcel.readString();
            parcel.readString();
            zzayv.zzd(parcel);
        }
        parcel2.writeNoException();
        return true;
    }
}
