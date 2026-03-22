package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-basement@@18.8.0 */
/* loaded from: classes4.dex */
public abstract class zzz extends com.google.android.gms.internal.common.zzb implements IGmsCallbacks {
    public zzz() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // com.google.android.gms.internal.common.zzb
    protected final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return false;
                }
                com.google.android.gms.internal.common.zzc.zzf(parcel);
                zzc(parcel.readInt(), parcel.readStrongBinder(), (zzj) com.google.android.gms.internal.common.zzc.zzb(parcel, zzj.CREATOR));
            } else {
                com.google.android.gms.internal.common.zzc.zzf(parcel);
                zzb(parcel.readInt(), (Bundle) com.google.android.gms.internal.common.zzc.zzb(parcel, Bundle.CREATOR));
            }
        } else {
            com.google.android.gms.internal.common.zzc.zzf(parcel);
            onPostInitComplete(parcel.readInt(), parcel.readStrongBinder(), (Bundle) com.google.android.gms.internal.common.zzc.zzb(parcel, Bundle.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
