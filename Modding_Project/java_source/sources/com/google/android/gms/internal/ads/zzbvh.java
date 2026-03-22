package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbvh extends zzayu implements zzbvi {
    public zzbvh() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return false;
                }
                zzayv.zzd(parcel);
                zzg((ParcelFileDescriptor) zzayv.zza(parcel, ParcelFileDescriptor.CREATOR), (zzbvq) zzayv.zza(parcel, zzbvq.CREATOR));
            } else {
                zzayv.zzd(parcel);
                zze((com.google.android.gms.ads.internal.util.zzbb) zzayv.zza(parcel, com.google.android.gms.ads.internal.util.zzbb.CREATOR));
            }
        } else {
            zzayv.zzd(parcel);
            zzf((ParcelFileDescriptor) zzayv.zza(parcel, ParcelFileDescriptor.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
