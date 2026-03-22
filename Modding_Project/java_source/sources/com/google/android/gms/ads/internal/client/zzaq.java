package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbpq;
import com.google.android.gms.internal.ads.zzbun;
import com.google.android.gms.internal.ads.zzbup;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaq extends zzba {
    final /* synthetic */ Context zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzbpq zzc;
    final /* synthetic */ zzaz zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaq(zzaz zzazVar, Context context, String str, zzbpq zzbpqVar) {
        this.zza = context;
        this.zzb = str;
        this.zzc = zzbpqVar;
        Objects.requireNonNull(zzazVar);
        this.zzd = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    protected final /* bridge */ /* synthetic */ Object zza() {
        zzaz.zzv(this.zza, "native_ad");
        return new zzfk();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object zzb(zzcr zzcrVar) throws RemoteException {
        return zzcrVar.zzb(ObjectWrapper.wrap(this.zza), this.zzb, this.zzc, ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() throws RemoteException {
        zzi zziVar;
        zzbup zzbupVar;
        Object zzbrVar;
        Context context = this.zza;
        zzbde.zza(context);
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzle)).booleanValue()) {
            try {
                IBinder zze = ((zzbu) com.google.android.gms.ads.internal.util.client.zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdLoaderBuilderCreatorImpl", new com.google.android.gms.ads.internal.util.client.zzq() { // from class: com.google.android.gms.ads.internal.client.zzap
                    @Override // com.google.android.gms.ads.internal.util.client.zzq
                    public final Object zza(Object obj) {
                        IBinder iBinder = (IBinder) obj;
                        if (iBinder == null) {
                            return null;
                        }
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilderCreator");
                        if (queryLocalInterface instanceof zzbu) {
                            return (zzbu) queryLocalInterface;
                        }
                        return new zzbu(iBinder);
                    }
                })).zze(ObjectWrapper.wrap(context), this.zzb, this.zzc, ModuleDescriptor.MODULE_VERSION);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
                if (queryLocalInterface instanceof zzbt) {
                    zzbrVar = (zzbt) queryLocalInterface;
                } else {
                    zzbrVar = new zzbr(zze);
                }
                return zzbrVar;
            } catch (RemoteException e10) {
                e = e10;
                zzaz zzazVar = this.zzd;
                zzazVar.zzg = zzbun.zza(this.zza);
                zzbupVar = zzazVar.zzg;
                zzbupVar.zzh(e, "ClientApiBroker.createAdLoaderBuilder");
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e11) {
                e = e11;
                zzaz zzazVar2 = this.zzd;
                zzazVar2.zzg = zzbun.zza(this.zza);
                zzbupVar = zzazVar2.zzg;
                zzbupVar.zzh(e, "ClientApiBroker.createAdLoaderBuilder");
                return null;
            } catch (NullPointerException e12) {
                e = e12;
                zzaz zzazVar22 = this.zzd;
                zzazVar22.zzg = zzbun.zza(this.zza);
                zzbupVar = zzazVar22.zzg;
                zzbupVar.zzh(e, "ClientApiBroker.createAdLoaderBuilder");
                return null;
            }
        }
        zzaz zzazVar3 = this.zzd;
        Context context2 = this.zza;
        String str = this.zzb;
        zzbpq zzbpqVar = this.zzc;
        zziVar = zzazVar3.zzb;
        return zziVar.zza(context2, str, zzbpqVar);
    }
}
