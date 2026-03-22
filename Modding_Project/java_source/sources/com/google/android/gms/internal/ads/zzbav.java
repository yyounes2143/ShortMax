package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbav extends zzayu implements zzbaw {
    public zzbav() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    public static zzbaw zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
        if (queryLocalInterface instanceof zzbaw) {
            return (zzbaw) queryLocalInterface;
        }
        return new zzbau(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbbd zzbbbVar;
        switch (i10) {
            case 2:
                com.google.android.gms.ads.internal.client.zzbx zzf = zzf();
                parcel2.writeNoException();
                zzayv.zzg(parcel2, zzf);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    boolean z10 = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback") instanceof zzbba;
                }
                zzayv.zzd(parcel);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbbbVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    if (queryLocalInterface instanceof zzbbd) {
                        zzbbbVar = (zzbbd) queryLocalInterface;
                    } else {
                        zzbbbVar = new zzbbb(readStrongBinder2);
                    }
                }
                zzayv.zzd(parcel);
                zzl(asInterface, zzbbbVar);
                parcel2.writeNoException();
                return true;
            case 5:
                com.google.android.gms.ads.internal.client.zzea zzg = zzg();
                parcel2.writeNoException();
                zzayv.zzg(parcel2, zzg);
                return true;
            case 6:
                boolean zzh = zzayv.zzh(parcel);
                zzayv.zzd(parcel);
                zzi(zzh);
                parcel2.writeNoException();
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzdt zzb = com.google.android.gms.ads.internal.client.zzds.zzb(parcel.readStrongBinder());
                zzayv.zzd(parcel);
                zzj(zzb);
                parcel2.writeNoException();
                return true;
            case 8:
                String zzh2 = zzh();
                parcel2.writeNoException();
                parcel2.writeString(zzh2);
                return true;
            case 9:
                long zze = zze();
                parcel2.writeNoException();
                parcel2.writeLong(zze);
                return true;
            case 10:
                long readLong = parcel.readLong();
                zzayv.zzd(parcel);
                zzk(readLong);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
