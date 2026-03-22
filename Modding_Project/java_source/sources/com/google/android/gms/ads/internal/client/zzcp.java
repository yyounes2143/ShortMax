package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzayt;
import com.google.android.gms.internal.ads.zzayv;
import com.google.android.gms.internal.ads.zzbgs;
import com.google.android.gms.internal.ads.zzbgt;
import com.google.android.gms.internal.ads.zzbgy;
import com.google.android.gms.internal.ads.zzbgz;
import com.google.android.gms.internal.ads.zzble;
import com.google.android.gms.internal.ads.zzblg;
import com.google.android.gms.internal.ads.zzblh;
import com.google.android.gms.internal.ads.zzbpq;
import com.google.android.gms.internal.ads.zzbti;
import com.google.android.gms.internal.ads.zzbtj;
import com.google.android.gms.internal.ads.zzbtp;
import com.google.android.gms.internal.ads.zzbtq;
import com.google.android.gms.internal.ads.zzbwf;
import com.google.android.gms.internal.ads.zzbwu;
import com.google.android.gms.internal.ads.zzbwv;
import com.google.android.gms.internal.ads.zzbyz;
import com.google.android.gms.internal.ads.zzbza;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcp extends zzayt implements zzcr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbt zzb(IObjectWrapper iObjectWrapper, String str, zzbpq zzbpqVar, int i10) throws RemoteException {
        zzbt zzbrVar;
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zza.writeString(str);
        zzayv.zzg(zza, zzbpqVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(3, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (queryLocalInterface instanceof zzbt) {
                zzbrVar = (zzbt) queryLocalInterface;
            } else {
                zzbrVar = new zzbr(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbrVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzc(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbpq zzbpqVar, int i10) throws RemoteException {
        zzbx zzbvVar;
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zze(zza, zzrVar);
        zza.writeString(str);
        zzayv.zzg(zza, zzbpqVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(13, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzd(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbpq zzbpqVar, int i10) throws RemoteException {
        zzbx zzbvVar;
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zze(zza, zzrVar);
        zza.writeString(str);
        zzayv.zzg(zza, zzbpqVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(1, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zze(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbpq zzbpqVar, int i10) throws RemoteException {
        zzbx zzbvVar;
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zze(zza, zzrVar);
        zza.writeString(str);
        zzayv.zzg(zza, zzbpqVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(2, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzf(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, int i10) throws RemoteException {
        zzbx zzbvVar;
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zze(zza, zzrVar);
        zza.writeString(str);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(10, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzck zzg(IObjectWrapper iObjectWrapper, zzbpq zzbpqVar, int i10) throws RemoteException {
        zzck zzciVar;
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zzg(zza, zzbpqVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(18, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzciVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
            if (queryLocalInterface instanceof zzck) {
                zzciVar = (zzck) queryLocalInterface;
            } else {
                zzciVar = new zzci(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzciVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzdb zzh(IObjectWrapper iObjectWrapper, int i10) throws RemoteException {
        zzdb zzczVar;
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(9, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzczVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (queryLocalInterface instanceof zzdb) {
                zzczVar = (zzdb) queryLocalInterface;
            } else {
                zzczVar = new zzcz(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzczVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzdw zzi(IObjectWrapper iObjectWrapper, zzbpq zzbpqVar, int i10) throws RemoteException {
        zzdw zzduVar;
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zzg(zza, zzbpqVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(17, zza);
        IBinder readStrongBinder = zzda.readStrongBinder();
        if (readStrongBinder == null) {
            zzduVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            if (queryLocalInterface instanceof zzdw) {
                zzduVar = (zzdw) queryLocalInterface;
            } else {
                zzduVar = new zzdu(readStrongBinder);
            }
        }
        zzda.recycle();
        return zzduVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbgt zzj(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zzg(zza, iObjectWrapper2);
        Parcel zzda = zzda(5, zza);
        zzbgt zzdC = zzbgs.zzdC(zzda.readStrongBinder());
        zzda.recycle();
        return zzdC;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbgz zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zzg(zza, iObjectWrapper2);
        zzayv.zzg(zza, iObjectWrapper3);
        Parcel zzda = zzda(11, zza);
        zzbgz zze = zzbgy.zze(zzda.readStrongBinder());
        zzda.recycle();
        return zze;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzblh zzl(IObjectWrapper iObjectWrapper, zzbpq zzbpqVar, int i10, zzble zzbleVar) throws RemoteException {
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zzg(zza, zzbpqVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        zzayv.zzg(zza, zzbleVar);
        Parcel zzda = zzda(16, zza);
        zzblh zzb = zzblg.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbtj zzm(IObjectWrapper iObjectWrapper, zzbpq zzbpqVar, int i10) throws RemoteException {
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zzg(zza, zzbpqVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(15, zza);
        zzbtj zzb = zzbti.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbtq zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        Parcel zzda = zzda(8, zza);
        zzbtq zzI = zzbtp.zzI(zzda.readStrongBinder());
        zzda.recycle();
        return zzI;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbwf zzo(IObjectWrapper iObjectWrapper, zzbpq zzbpqVar, int i10) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbwv zzp(IObjectWrapper iObjectWrapper, String str, zzbpq zzbpqVar, int i10) throws RemoteException {
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zza.writeString(str);
        zzayv.zzg(zza, zzbpqVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(12, zza);
        zzbwv zzt = zzbwu.zzt(zzda.readStrongBinder());
        zzda.recycle();
        return zzt;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbza zzq(IObjectWrapper iObjectWrapper, zzbpq zzbpqVar, int i10) throws RemoteException {
        Parcel zza = zza();
        zzayv.zzg(zza, iObjectWrapper);
        zzayv.zzg(zza, zzbpqVar);
        zza.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel zzda = zzda(14, zza);
        zzbza zzb = zzbyz.zzb(zzda.readStrongBinder());
        zzda.recycle();
        return zzb;
    }
}
