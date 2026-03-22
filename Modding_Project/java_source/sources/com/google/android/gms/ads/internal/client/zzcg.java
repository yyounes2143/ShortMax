package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzayv;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzcg extends zzayu implements zzch {
    public zzcg() {
        super("com.google.android.gms.ads.internal.client.IAdPreloadCallbackV2");
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzea zzdyVar;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return false;
                }
                zzayv.zzd(parcel);
                zze(parcel.readString(), (zze) zzayv.zza(parcel, zze.CREATOR));
            } else {
                String readString = parcel.readString();
                zzayv.zzd(parcel);
                zzg(readString);
            }
        } else {
            String readString2 = parcel.readString();
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzdyVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
                if (queryLocalInterface instanceof zzea) {
                    zzdyVar = (zzea) queryLocalInterface;
                } else {
                    zzdyVar = new zzdy(readStrongBinder);
                }
            }
            zzayv.zzd(parcel);
            zzf(readString2, zzdyVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
