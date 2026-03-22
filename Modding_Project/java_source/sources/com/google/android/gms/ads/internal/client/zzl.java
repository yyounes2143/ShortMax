package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbpq;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzl extends RemoteCreator {
    public zzl() {
        super("com.google.android.gms.ads.AdPreloaderRemoteCreatorImpl");
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    protected final /* synthetic */ Object getRemoteCreator(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloaderCreator");
        if (queryLocalInterface instanceof zzcl) {
            return (zzcl) queryLocalInterface;
        }
        return new zzcl(iBinder);
    }

    public final zzck zza(Context context, zzbpq zzbpqVar) {
        zzck zzciVar;
        try {
            IBinder zze = ((zzcl) getRemoteCreatorInstance(context)).zze(ObjectWrapper.wrap(context), zzbpqVar, ModuleDescriptor.MODULE_VERSION);
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
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not get remote AdPreloaderCreator.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e11) {
            e = e11;
            com.google.android.gms.ads.internal.util.client.zzo.zzk("Could not get remote AdPreloaderCreator.", e);
            return null;
        }
    }
}
