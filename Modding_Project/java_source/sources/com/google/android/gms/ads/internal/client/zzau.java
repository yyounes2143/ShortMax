package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbun;
import com.google.android.gms.internal.ads.zzbup;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzau extends zzba {
    final /* synthetic */ Context zza;
    final /* synthetic */ zzaz zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzau(zzaz zzazVar, Context context) {
        this.zza = context;
        Objects.requireNonNull(zzazVar);
        this.zzb = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    protected final /* bridge */ /* synthetic */ Object zza() {
        zzaz.zzv(this.zza, "mobile_ads_settings");
        return new zzfo();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object zzb(zzcr zzcrVar) throws RemoteException {
        return zzcrVar.zzh(ObjectWrapper.wrap(this.zza), ModuleDescriptor.MODULE_VERSION);
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    @Nullable
    public final /* bridge */ /* synthetic */ Object zzc() throws RemoteException {
        zzfg zzfgVar;
        zzbup zzbupVar;
        Object zzczVar;
        Context context = this.zza;
        zzbde.zza(context);
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzle)).booleanValue()) {
            try {
                IBinder zze = ((zzdc) com.google.android.gms.ads.internal.util.client.zzs.zzb(context, "com.google.android.gms.ads.ChimeraMobileAdsSettingManagerCreatorImpl", new com.google.android.gms.ads.internal.util.client.zzq() { // from class: com.google.android.gms.ads.internal.client.zzat
                    @Override // com.google.android.gms.ads.internal.util.client.zzq
                    public final Object zza(Object obj) {
                        IBinder iBinder = (IBinder) obj;
                        if (iBinder == null) {
                            return null;
                        }
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator");
                        if (queryLocalInterface instanceof zzdc) {
                            return (zzdc) queryLocalInterface;
                        }
                        return new zzdc(iBinder);
                    }
                })).zze(ObjectWrapper.wrap(context), ModuleDescriptor.MODULE_VERSION);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
                if (queryLocalInterface instanceof zzdb) {
                    zzczVar = (zzdb) queryLocalInterface;
                } else {
                    zzczVar = new zzcz(zze);
                }
                return zzczVar;
            } catch (RemoteException e10) {
                e = e10;
                zzaz zzazVar = this.zzb;
                zzazVar.zzg = zzbun.zza(this.zza);
                zzbupVar = zzazVar.zzg;
                zzbupVar.zzh(e, "ClientApiBroker.getMobileAdsSettingsManager");
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e11) {
                e = e11;
                zzaz zzazVar2 = this.zzb;
                zzazVar2.zzg = zzbun.zza(this.zza);
                zzbupVar = zzazVar2.zzg;
                zzbupVar.zzh(e, "ClientApiBroker.getMobileAdsSettingsManager");
                return null;
            } catch (NullPointerException e12) {
                e = e12;
                zzaz zzazVar22 = this.zzb;
                zzazVar22.zzg = zzbun.zza(this.zza);
                zzbupVar = zzazVar22.zzg;
                zzbupVar.zzh(e, "ClientApiBroker.getMobileAdsSettingsManager");
                return null;
            }
        }
        zzaz zzazVar3 = this.zzb;
        Context context2 = this.zza;
        zzfgVar = zzazVar3.zzc;
        return zzfgVar.zza(context2);
    }
}
