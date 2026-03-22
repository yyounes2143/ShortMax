package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbrc extends zzayu implements zzbrd {
    public zzbrc() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return false;
                    }
                    zzbpz zzb = zzbpy.zzb(parcel.readStrongBinder());
                    zzayv.zzd(parcel);
                    zzh(zzb);
                } else {
                    zzayv.zzd(parcel);
                    zzf((com.google.android.gms.ads.internal.client.zze) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR));
                }
            } else {
                String readString = parcel.readString();
                zzayv.zzd(parcel);
                zze(readString);
            }
        } else {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzayv.zzd(parcel);
            zzg(asInterface);
        }
        parcel2.writeNoException();
        return true;
    }
}
