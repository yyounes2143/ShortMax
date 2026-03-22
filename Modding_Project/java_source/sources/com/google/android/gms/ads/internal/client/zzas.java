package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.IObjectWrapper;
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
public final class zzas extends zzba {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzbpq zzb;
    final /* synthetic */ zzaz zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzas(zzaz zzazVar, Context context, zzbpq zzbpqVar) {
        this.zza = context;
        this.zzb = zzbpqVar;
        Objects.requireNonNull(zzazVar);
        this.zzc = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    @Nullable
    protected final /* bridge */ /* synthetic */ Object zza() {
        zzaz.zzv(this.zza, "ads_preloader");
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object zzb(zzcr zzcrVar) throws RemoteException {
        IObjectWrapper wrap = ObjectWrapper.wrap(this.zza);
        zzbpq zzbpqVar = this.zzb;
        zzck zzg = zzcrVar.zzg(wrap, zzbpqVar, ModuleDescriptor.MODULE_VERSION);
        zzg.zzo(zzbpqVar);
        return zzg;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    @Nullable
    protected final /* bridge */ /* synthetic */ Object zzc() throws RemoteException {
        zzl zzlVar;
        zzbup zzbupVar;
        zzck zzciVar;
        Context context = this.zza;
        IObjectWrapper wrap = ObjectWrapper.wrap(context);
        zzbde.zza(context);
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzle)).booleanValue()) {
            try {
                zzbpq zzbpqVar = this.zzb;
                IBinder zze = ((zzcl) com.google.android.gms.ads.internal.util.client.zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdPreloaderCreatorImpl", new com.google.android.gms.ads.internal.util.client.zzq() { // from class: com.google.android.gms.ads.internal.client.zzar
                    @Override // com.google.android.gms.ads.internal.util.client.zzq
                    public final Object zza(Object obj) {
                        IBinder iBinder = (IBinder) obj;
                        if (iBinder == null) {
                            return null;
                        }
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloaderCreator");
                        if (queryLocalInterface instanceof zzcl) {
                            return (zzcl) queryLocalInterface;
                        }
                        return new zzcl(iBinder);
                    }
                })).zze(wrap, zzbpqVar, ModuleDescriptor.MODULE_VERSION);
                if (zze == null) {
                    zzciVar = null;
                } else {
                    IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
                    if (queryLocalInterface instanceof zzck) {
                        zzciVar = (zzck) queryLocalInterface;
                    } else {
                        zzciVar = new zzci(zze);
                    }
                }
                zzciVar.zzo(zzbpqVar);
                return zzciVar;
            } catch (RemoteException e10) {
                e = e10;
                zzaz zzazVar = this.zzc;
                zzazVar.zzg = zzbun.zza(this.zza);
                zzbupVar = zzazVar.zzg;
                zzbupVar.zzh(e, "ClientApiBroker.getAdPreloader");
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e11) {
                e = e11;
                zzaz zzazVar2 = this.zzc;
                zzazVar2.zzg = zzbun.zza(this.zza);
                zzbupVar = zzazVar2.zzg;
                zzbupVar.zzh(e, "ClientApiBroker.getAdPreloader");
                return null;
            } catch (NullPointerException e12) {
                e = e12;
                zzaz zzazVar22 = this.zzc;
                zzazVar22.zzg = zzbun.zza(this.zza);
                zzbupVar = zzazVar22.zzg;
                zzbupVar.zzh(e, "ClientApiBroker.getAdPreloader");
                return null;
            }
        }
        zzaz zzazVar3 = this.zzc;
        Context context2 = this.zza;
        zzbpq zzbpqVar2 = this.zzb;
        zzlVar = zzazVar3.zzh;
        return zzlVar.zza(context2, zzbpqVar2);
    }
}
