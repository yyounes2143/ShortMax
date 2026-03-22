package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbrf extends zzayu implements zzbrg {
    public zzbrf() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    return false;
                }
                zzayv.zzd(parcel);
                zzf((com.google.android.gms.ads.internal.client.zze) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR));
            } else {
                String readString = parcel.readString();
                zzayv.zzd(parcel);
                zze(readString);
            }
        } else {
            zzg();
        }
        parcel2.writeNoException();
        return true;
    }
}
