package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzayv;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzds extends zzayu implements zzdt {
    public zzds() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    public static zzdt zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
        if (queryLocalInterface instanceof zzdt) {
            return (zzdt) queryLocalInterface;
        }
        return new zzdr(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                return false;
            }
            boolean zzf = zzf();
            parcel2.writeNoException();
            int i12 = zzayv.zza;
            parcel2.writeInt(zzf ? 1 : 0);
        } else {
            zzayv.zzd(parcel);
            zze((zzt) zzayv.zza(parcel, zzt.CREATOR));
            parcel2.writeNoException();
        }
        return true;
    }
}
