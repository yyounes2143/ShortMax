package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzayv;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbp extends zzayu implements zzbq {
    public zzbp() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return false;
                        }
                        int readInt = parcel.readInt();
                        zzayv.zzd(parcel);
                        zzh((zzm) zzayv.zza(parcel, zzm.CREATOR), readInt);
                        parcel2.writeNoException();
                    } else {
                        String zzf = zzf();
                        parcel2.writeNoException();
                        parcel2.writeString(zzf);
                    }
                } else {
                    boolean zzi = zzi();
                    parcel2.writeNoException();
                    int i12 = zzayv.zza;
                    parcel2.writeInt(zzi ? 1 : 0);
                }
            } else {
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
            }
        } else {
            zzayv.zzd(parcel);
            zzg((zzm) zzayv.zza(parcel, zzm.CREATOR));
            parcel2.writeNoException();
        }
        return true;
    }
}
