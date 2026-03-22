package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbbc extends zzayu implements zzbbd {
    public zzbbc() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
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
                        zzb();
                    } else {
                        zze();
                    }
                } else {
                    zzayv.zzd(parcel);
                    zzd((com.google.android.gms.ads.internal.client.zze) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR));
                }
            } else {
                zzc();
            }
        } else {
            zzf();
        }
        parcel2.writeNoException();
        return true;
    }
}
