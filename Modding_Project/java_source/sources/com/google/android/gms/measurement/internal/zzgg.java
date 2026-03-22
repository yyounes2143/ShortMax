package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@23.0.0 */
/* loaded from: classes5.dex */
public abstract class zzgg extends com.google.android.gms.internal.measurement.zzbm implements zzgh {
    public zzgg() {
        super("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
    }

    @Override // com.google.android.gms.internal.measurement.zzbm
    protected final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 2) {
            com.google.android.gms.internal.measurement.zzbn.zzf(parcel);
            zze((zzoq) com.google.android.gms.internal.measurement.zzbn.zzb(parcel, zzoq.CREATOR));
            return true;
        }
        return false;
    }
}
