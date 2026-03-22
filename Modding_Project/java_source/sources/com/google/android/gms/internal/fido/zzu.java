package com.google.android.gms.internal.fido;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* compiled from: com.google.android.gms:play-services-fido@@20.1.0 */
/* loaded from: classes4.dex */
public abstract class zzu extends zzb implements zzv {
    public zzu() {
        super("com.google.android.gms.fido.u2f.internal.regular.IU2fAppCallbacks");
    }

    @Override // com.google.android.gms.internal.fido.zzb
    protected final boolean zza(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            zzc.zzc(parcel);
            zzb((Status) zzc.zza(parcel, Status.CREATOR), (PendingIntent) zzc.zza(parcel, PendingIntent.CREATOR));
            return true;
        }
        return false;
    }
}
