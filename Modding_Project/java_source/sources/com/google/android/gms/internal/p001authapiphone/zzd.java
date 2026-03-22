package com.google.android.gms.internal.p001authapiphone;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-auth-api-phone@@18.0.2 */
/* renamed from: com.google.android.gms.internal.auth-api-phone.zzd  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zzd extends zzb implements zze {
    public zzd() {
        super("com.google.android.gms.auth.api.phone.internal.IAutofillPermissionStateCallback");
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzb
    protected final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            int readInt = parcel.readInt();
            zzc.zzb(parcel);
            zzb((Status) zzc.zza(parcel, Status.CREATOR), readInt);
            return true;
        }
        return false;
    }
}
