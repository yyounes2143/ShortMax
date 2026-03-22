package com.google.android.gms.internal.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.10 */
/* loaded from: classes4.dex */
public abstract class zzj extends zzb implements zzk {
    public zzj() {
        super("com.google.android.gms.auth.account.data.IBundleCallback");
    }

    @Override // com.google.android.gms.internal.auth.zzb
    protected final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 2) {
            zzc.zzb(parcel);
            zzb((Status) zzc.zza(parcel, Status.CREATOR), (Bundle) zzc.zza(parcel, Bundle.CREATOR));
            return true;
        }
        return false;
    }
}
