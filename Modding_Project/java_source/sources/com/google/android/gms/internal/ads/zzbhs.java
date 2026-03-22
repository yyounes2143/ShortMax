package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbhs extends zzayu implements zzbht {
    public zzbhs() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    public static zzbht zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
        if (queryLocalInterface instanceof zzbht) {
            return (zzbht) queryLocalInterface;
        }
        return new zzbhr(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbhj zzbhhVar;
        if (i10 == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbhhVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                if (queryLocalInterface instanceof zzbhj) {
                    zzbhhVar = (zzbhj) queryLocalInterface;
                } else {
                    zzbhhVar = new zzbhh(readStrongBinder);
                }
            }
            String readString = parcel.readString();
            zzayv.zzd(parcel);
            zze(zzbhhVar, readString);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
