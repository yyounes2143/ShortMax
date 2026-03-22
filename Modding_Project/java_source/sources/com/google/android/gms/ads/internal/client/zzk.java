package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbpq;
import com.google.android.gms.internal.ads.zzbun;
import com.google.android.gms.internal.ads.zzbup;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzk extends RemoteCreator {
    private zzbup zza;

    public zzk() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
        if (queryLocalInterface instanceof zzby) {
            return (zzby) queryLocalInterface;
        }
        return new zzby(iBinder);
    }

    @Nullable
    public final zzbx zza(Context context, zzr zzrVar, String str, zzbpq zzbpqVar, int i10) {
        zzbx zzbvVar;
        zzbx zzbvVar2;
        zzbde.zza(context);
        if (((Boolean) zzbd.zzc().zzb(zzbde.zzle)).booleanValue()) {
            try {
                IBinder zze = ((zzby) com.google.android.gms.ads.internal.util.client.zzs.zzb(context, "com.google.android.gms.ads.ChimeraAdManagerCreatorImpl", new com.google.android.gms.ads.internal.util.client.zzq() { // from class: com.google.android.gms.ads.internal.client.zzj
                    @Override // com.google.android.gms.ads.internal.util.client.zzq
                    public final Object zza(Object obj) {
                        IBinder iBinder = (IBinder) obj;
                        if (iBinder == null) {
                            return null;
                        }
                        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManagerCreator");
                        if (queryLocalInterface instanceof zzby) {
                            return (zzby) queryLocalInterface;
                        }
                        return new zzby(iBinder);
                    }
                })).zze(ObjectWrapper.wrap(context), zzrVar, str, zzbpqVar, ModuleDescriptor.MODULE_VERSION, i10);
                if (zze == null) {
                    return null;
                }
                IInterface queryLocalInterface = zze.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
                if (queryLocalInterface instanceof zzbx) {
                    zzbvVar = (zzbx) queryLocalInterface;
                } else {
                    zzbvVar = new zzbv(zze);
                }
                return zzbvVar;
            } catch (RemoteException e10) {
                e = e10;
                zzbup zza = zzbun.zza(context);
                this.zza = zza;
                zza.zzh(e, "AdManagerCreator.newAdManagerByDynamiteLoader");
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                return null;
            } catch (com.google.android.gms.ads.internal.util.client.zzr e11) {
                e = e11;
                zzbup zza2 = zzbun.zza(context);
                this.zza = zza2;
                zza2.zzh(e, "AdManagerCreator.newAdManagerByDynamiteLoader");
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                return null;
            } catch (NullPointerException e12) {
                e = e12;
                zzbup zza22 = zzbun.zza(context);
                this.zza = zza22;
                zza22.zzh(e, "AdManagerCreator.newAdManagerByDynamiteLoader");
                com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                return null;
            }
        }
        try {
            IBinder zze2 = ((zzby) getRemoteCreatorInstance(context)).zze(ObjectWrapper.wrap(context), zzrVar, str, zzbpqVar, ModuleDescriptor.MODULE_VERSION, i10);
            if (zze2 == null) {
                return null;
            }
            IInterface queryLocalInterface2 = zze2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface2 instanceof zzbx) {
                zzbvVar2 = (zzbx) queryLocalInterface2;
            } else {
                zzbvVar2 = new zzbv(zze2);
            }
            return zzbvVar2;
        } catch (RemoteException e13) {
            e = e13;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Could not create remote AdManager.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e14) {
            e = e14;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Could not create remote AdManager.", e);
            return null;
        }
    }
}
