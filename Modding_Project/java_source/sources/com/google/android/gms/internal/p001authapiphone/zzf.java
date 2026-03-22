package com.google.android.gms.internal.p001authapiphone;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-auth-api-phone@@18.0.2 */
/* renamed from: com.google.android.gms.internal.auth-api-phone.zzf  reason: invalid package */
/* loaded from: classes4.dex */
public abstract class zzf extends zzb implements zzg {
    public zzf() {
        super("com.google.android.gms.auth.api.phone.internal.IOngoingSmsRequestCallback");
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzb
    protected final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        boolean z10 = false;
        if (i10 != 1) {
            return false;
        }
        Status status = (Status) zzc.zza(parcel, Status.CREATOR);
        if (parcel.readInt() != 0) {
            z10 = true;
        }
        zzc.zzb(parcel);
        zzb(status, z10);
        return true;
    }
}
